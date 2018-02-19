unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Data.DB, Data.Win.ADODB;

type
  TFLogin = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    edtLogin: TEdit;
    Label2: TLabel;
    edtSenha: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Acesso;
  private
    { Private declarations }
    tentativas : integer;
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses Udm;

procedure TFLogin.BitBtn1Click(Sender: TObject);
begin
   Acesso;
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
   tentativas := 1;
end;

procedure TFLogin.Acesso;
begin
   if ( dm.QLogin.Active = False ) then
   begin
      dm.QLogin.Parameters.ParamByName('usrnome').Value := edtLogin.Text;
      dm.QLogin.Parameters.ParamByName('senha').Value   := edtSenha.Text;
      dm.QLogin.Open;

      if (UpperCase(dm.QLogin.FieldByName('usrnome').AsString) = UpperCase(edtLogin.Text)) then
         FLogin.ModalResult := mrOk
      else
      begin
         Showmessage('Usu�rio ou senha inv�lido!');
         FLogin.ModalResult := mrClose;
      end;
   end;
end;

end.
