unit UListaUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, DB;

type
  TFUsuarios = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cbFiltro: TComboBox;
    Label1: TLabel;
    edtPesquisa: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    btnInc: TButton;
    btnAlt: TButton;
    btnExcl: TButton;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CarregaCampos;
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnExclClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAltClick(Sender: TObject);
    procedure btnIncClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;

implementation

{$R *.dfm}

uses Udm, UedUsuarios;

procedure TFUsuarios.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFUsuarios.FormCreate(Sender: TObject);
begin
   dm.QUsuarios.Open;
   CarregaCampos;
end;

procedure TFUsuarios.FormDestroy(Sender: TObject);
begin
   FUsuarios.Free;
   FUsuarios := nil;
end;

procedure TFUsuarios.btnIncClick(Sender: TObject);
begin
   if (dm.QUsuarios.State = dsBrowse) then
      dm.QUsuarios.Insert;

   Application.CreateForm(TFedUsuario, FedUsuario);

   if (FedUsuario.ShowModal = mrAll) then
   begin
      dm.QUsuarios.Post;
      FreeAndNil(FedUsuario);
   end
   else
      dm.QUsuarios.Cancel;
end;

procedure TFUsuarios.btnAltClick(Sender: TObject);
begin
   if (dm.QUsuarios.State = dsBrowse) then
      dm.QUsuarios.Edit;

   Application.CreateForm(TFedUsuario, FedUsuario);

   if (FedUsuario.ShowModal = mrAll) then
   begin
      dm.QUsuarios.Post;
      FreeAndNil(FedUsuario);
   end
   else
      dm.QUsuarios.Cancel;
end;

procedure TFUsuarios.btnExclClick(Sender: TObject);
begin
   if (dm.QUsuarios.RecordCount > 0) then
      if (MessageDlg('Deseja realmente excluir usu�rio selecionado ?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
      begin
         dm.QUsuarios.Delete;
      end
   else
      Showmessage('Nenhum registro encontrado.');
end;

procedure TFUsuarios.CarregaCampos;
var i : integer;
begin
  for i := 0 to dm.QUsuarios.FieldCount - 2 do
     cbFiltro.Items.Add(dm.QUsuarios.Fields[i].DisplayLabel);
end;

procedure TFUsuarios.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
Var campo:string;
begin
   campo := cbFiltro.Text;

   if (Key = #13) then
   begin
      if (edtPesquisa.Text <> '') then
      begin
         if (dm.QUsuarios.FieldByName(campo).DataType = ftAutoInc) then
         begin
            dm.QUsuarios.SQL.Strings[02] := ' AND ' + cbFiltro.Text + ' = ' + edtPesquisa.Text;
            dm.QUsuarios.Open;
         end else
         if (dm.QUsuarios.FieldByName(campo).DataType = ftString) then
         begin
            dm.QUsuarios.SQL.Strings[02] := ' AND ' + cbFiltro.Text + ' like ' + '''' + '%' + edtPesquisa.Text + '%' +'''';
            dm.QUsuarios.Open;
         end;
      end else
      begin
         dm.QUsuarios.SQL.Strings[02] := ' ';
         dm.QUsuarios.Open;
      end;
   end;
end;

end.
