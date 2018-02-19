program Agenda;

uses
  Vcl.Forms,
  Controls,
  SysUtils,
  UMenu in 'UMenu.pas' {FMenu},
  ULogin in 'ULogin.pas' {FLogin},
  Udm in 'Udm.pas' {dm: TDataModule},
  UListaUsuarios in 'UListaUsuarios.pas' {FUsuarios},
  UedUsuarios in 'UedUsuarios.pas' {FedUsuario},
  UedMedico in 'UedMedico.pas' {FedMedico},
  UListaMedicos in 'UListaMedicos.pas' {FMedicos},
  UedPaciente in 'UedPaciente.pas' {FedPaciente},
  UListaPacientes in 'UListaPacientes.pas' {FPacientes},
  UAgendamentos in 'UAgendamentos.pas' {FAgendamentos},
  UedAgendamento in 'UedAgendamento.pas' {FedAgendamento};

{$R *.res}

begin
   Application.Initialize;
   Application.MainFormOnTaskbar := True;
   Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFLogin, FLogin);
  if (FLogin.ShowModal = mrOk) then
   begin
      FreeAndNil(FLogin);
      Application.CreateForm(TFMenu, FMenu);
      Application.Run;
   end
   else
      Application.Terminate;
end.