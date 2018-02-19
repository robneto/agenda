unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB,
  Vcl.ComCtrls;

type
  TFMenu = class(TForm)
    Menu: TMainMenu;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Mdicos1: TMenuItem;
    N1: TMenuItem;
    Usurios1: TMenuItem;
    Agenda1: TMenuItem;
    Agendamentos1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Mdicos1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

{$R *.dfm}

uses Udm, UListaUsuarios, UListaMedicos, UListaPacientes, UAgendamentos;

procedure TFMenu.Agendamentos1Click(Sender: TObject);
begin
   if FAgendamentos = nil then
   begin
      FAgendamentos := TFAgendamentos.Create(self);
      FAgendamentos.ShowModal;
   end
   else
      FAgendamentos.ShowModal;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (MessageDlg('Deseja realmente sair do sistema ?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
   begin
      Application.Terminate;
   end;
end;

procedure TFMenu.FormCreate(Sender: TObject);
begin
   StatusBar1.Panels[1].Text := dm.QLogin.FieldByName('usrnome').AsString;
end;

procedure TFMenu.Mdicos1Click(Sender: TObject);
begin
   if FMedicos = nil then
   begin
      FMedicos := TFMedicos.Create(self);
      FMedicos.ShowModal;
   end
   else
      FMedicos.ShowModal;
end;

procedure TFMenu.Pacientes1Click(Sender: TObject);
begin
   if FPacientes = nil then
   begin
      FPacientes := TFPacientes.Create(self);
      FPacientes.ShowModal;
   end
   else
      FPacientes.ShowModal;

end;

procedure TFMenu.Sair1Click(Sender: TObject);
begin
   Close;
end;

procedure TFMenu.Usurios1Click(Sender: TObject);
begin
   if FUsuarios = nil then
   begin
      FUsuarios := TFUsuarios.Create(self);
      FUsuarios.ShowModal;
   end
   else
      FUsuarios.ShowModal;
end;

end.
