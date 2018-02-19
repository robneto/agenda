unit UedAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TFedAgendamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBrgSituacao: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FedAgendamento: TFedAgendamento;

implementation

{$R *.dfm}

uses Udm;

procedure TFedAgendamento.DBEdit2Change(Sender: TObject);
begin
   dm.QAgendamentos.FieldByName('FonePaciente').Value    := dm.QPacientes.FieldByName('fone').Value;
   dm.QAgendamentos.FieldByName('CelularPaciente').Value := dm.QPacientes.FieldByName('celular').Value;
end;

procedure TFedAgendamento.DBEdit3Change(Sender: TObject);
begin
   dm.QAgendamentos.FieldByName('crm').Value       := dm.QMedicos.FieldByName('crm').Value;
   dm.QAgendamentos.FieldByName('uf').Value        := dm.QMedicos.FieldByName('uf_crm').Value;
   dm.QAgendamentos.FieldByName('celmedico').Value := dm.QMedicos.FieldByName('celular').Value;
end;

end.
