unit Udm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    BD: TADOConnection;
    QLogin: TADOQuery;
    QLoginnome: TStringField;
    QLoginusrnome: TStringField;
    QUsuarios: TADOQuery;
    QUsuariosid: TAutoIncField;
    QUsuariosnome: TStringField;
    QUsuariosusrnome: TStringField;
    QUsuariosemail: TStringField;
    QUsuariossenha: TStringField;
    dsUsuarios: TDataSource;
    QPacientes: TADOQuery;
    dsPacientes: TDataSource;
    QMedicos: TADOQuery;
    dsMedicos: TDataSource;
    QPacientesid: TAutoIncField;
    QPacientesnome: TStringField;
    QPacientesfone: TStringField;
    QPacientesCelular: TStringField;
    QPacientesObs: TStringField;
    QPacientesidusr: TIntegerField;
    QMedicosid: TAutoIncField;
    QMedicosnome: TStringField;
    QMedicoscrm: TIntegerField;
    QMedicosuf_crm: TStringField;
    QMedicosCelular: TStringField;
    QMedicosidusr: TIntegerField;
    QLoginid: TAutoIncField;
    dsAgendamentos: TDataSource;
    QAgendamentos: TADOQuery;
    QAgendamentosid: TAutoIncField;
    QAgendamentosidpaciente: TIntegerField;
    QAgendamentosidmedico: TIntegerField;
    QAgendamentosDtAgendamento: TDateTimeField;
    QAgendamentossituacao: TStringField;
    QAgendamentosretorno: TBooleanField;
    QAgendamentosidusr: TIntegerField;
    QAgendamentosNomeMedico: TStringField;
    QAgendamentosCRM: TIntegerField;
    QAgendamentosUF: TStringField;
    QAgendamentosCelMedico: TStringField;
    QAgendamentosNomePaciente: TStringField;
    QAgendamentosFonePaciente: TStringField;
    QAgendamentosCelularPaciente: TStringField;
    procedure QMedicosBeforePost(DataSet: TDataSet);
    procedure QPacientesBeforePost(DataSet: TDataSet);
    procedure QAgendamentosBeforePost(DataSet: TDataSet);
    procedure QAgendamentosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.QAgendamentosAfterInsert(DataSet: TDataSet);
begin
   QAgendamentos.FieldByName('retorno').Value := 0;
end;

procedure Tdm.QAgendamentosBeforePost(DataSet: TDataSet);
begin
   QAgendamentos.FieldByName('idusr').AsInteger := QLogin.FieldByName('id').AsInteger;
end;

procedure Tdm.QMedicosBeforePost(DataSet: TDataSet);
begin
   QMedicos.FieldByName('idusr').AsInteger := QLogin.FieldByName('id').AsInteger;
end;

procedure Tdm.QPacientesBeforePost(DataSet: TDataSet);
begin
   QPacientes.FieldByName('idusr').AsInteger := QLogin.FieldByName('id').AsInteger;
end;

end.
