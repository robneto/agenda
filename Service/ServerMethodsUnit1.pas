unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
     REST.Json, Medicos, Data.DBXJson;

type
  TServerMethods1 = class(TDSServerModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function Medicos(id: Integer): TMedicos;
  end;

implementation

{$R *.dfm}

uses Udm;

{ TServerMethods1 }

function TServerMethods1.Medicos(id: Integer): TMedicos;
Var Dados: Tdm;
    VMedicos: TMedicos;
    o: TJSONObject;
begin
   try
      Dados := Tdm.Create(nil);

      Dados.QMedicos.Close;
      Dados.QMedicos.Parameters.ParamByName('id').Value := id;
      Dados.QMedicos.Open;

      VMedicos := TMedicos.Create;

      if (Dados.QMedicos.IsEmpty) then
      begin
         VMedicos.id   := -1;
         Exit;
      end;

      VMedicos.id      := Dados.QMedicosid.AsInteger;
      VMedicos.nome    := Dados.QMedicosnome.AsString;
      VMedicos.crm     := Dados.QMedicoscrm.AsString;
      VMedicos.uf      := Dados.QMedicosuf_crm.AsString;
      VMedicos.celular := Dados.QMedicoscelular.AsString;

      Result := VMedicos;
   finally
      if Assigned(Dados) then
         FreeAndNil(Dados);

      //VMedicos.Free;
   end;
end;

end.

