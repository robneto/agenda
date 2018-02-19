unit UAgendamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, DB;

type
  TFAgendamentos = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cbFiltro: TComboBox;
    edtPesquisa: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    btnInc: TButton;
    btnAlt: TButton;
    btnExcl: TButton;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    meDtIni: TMaskEdit;
    sbExecutar: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    meDtFim: TMaskEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure sbExecutarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncClick(Sender: TObject);
    procedure btnAltClick(Sender: TObject);
    procedure btnExclClick(Sender: TObject);
    procedure CarregaCampos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAgendamentos: TFAgendamentos;

implementation

{$R *.dfm}

uses Udm, UedAgendamento;

procedure TFAgendamentos.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFAgendamentos.btnAltClick(Sender: TObject);
begin
   if (dm.QAgendamentos.State = dsBrowse) then
      dm.QAgendamentos.Edit;

   Application.CreateForm(TFedAgendamento, FedAgendamento);

   if (FedAgendamento.ShowModal = mrAll) then
   begin
      dm.QAgendamentos.Post;
      FreeAndNil(FedAgendamento);
   end
   else
      dm.QAgendamentos.Cancel;
end;

procedure TFAgendamentos.btnExclClick(Sender: TObject);
begin
   if (dm.QAgendamentos.RecordCount > 0) then
      if (MessageDlg('Deseja realmente excluir o agendamento selecionado ?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
      begin
         dm.QAgendamentos.Delete;
      end
   else
      Showmessage('Nenhum registro encontrado.');
end;

procedure TFAgendamentos.btnIncClick(Sender: TObject);
begin
   if (dm.QAgendamentos.State = dsBrowse) then
      dm.QAgendamentos.Insert;

   Application.CreateForm(TFedAgendamento, FedAgendamento);

   if (FedAgendamento.ShowModal = mrAll) then
   begin
      dm.QAgendamentos.Post;
      FreeAndNil(FedAgendamento);
   end
   else
      dm.QAgendamentos.Cancel;
end;

procedure TFAgendamentos.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
Var campo:string;
begin
   campo := cbFiltro.Text;

   if (Key = #13) then
   begin
      if (edtPesquisa.Text <> '') then
      begin
         if (dm.QAgendamentos.FieldByName(campo).DataType = ftAutoInc) then
         begin
            dm.QAgendamentos.SQL.Strings[09] := ' AND ' + cbFiltro.Text + ' = ' + edtPesquisa.Text;
            dm.QAgendamentos.Open;
         end else
         if (dm.QAgendamentos.FieldByName(campo).DataType = ftString) then
         begin
            dm.QAgendamentos.SQL.Strings[09] := ' AND ' + cbFiltro.Text + ' like ' + '''' + '%' + edtPesquisa.Text + '%' +'''';
            dm.QAgendamentos.Open;
         end;
      end else
      begin
         dm.QAgendamentos.SQL.Strings[09] := ' ';
         dm.QAgendamentos.Open;
      end;
   end;
end;

procedure TFAgendamentos.FormCreate(Sender: TObject);
begin
   dm.QMedicos.Close;
   dm.QMedicos.SQL.Strings[02] := ' ';
   dm.QMedicos.Open;

   dm.QPacientes.Close;
   dm.QPacientes.SQL.Strings[02] := ' ';
   dm.QPacientes.Open;
end;

procedure TFAgendamentos.sbExecutarClick(Sender: TObject);
begin
   dm.QAgendamentos.Close;
   dm.QAgendamentos.Parameters.ParamByName('dataini').Value  := meDtIni.Text;
   dm.QAgendamentos.Parameters.ParamByName('datafim').Value  := meDtFim.Text;
   dm.QAgendamentos.Parameters.ParamByName('idmedico').Value := dm.QMedicos.FieldByName('id').Value;
   dm.QAgendamentos.Open;

   CarregaCampos;
end;

procedure TFAgendamentos.CarregaCampos;
var i : integer;
begin
  for i := 0 to dm.QPacientes.FieldCount - 2 do
     cbFiltro.Items.Add(dm.QPacientes.Fields[i].DisplayLabel);
end;

end.
