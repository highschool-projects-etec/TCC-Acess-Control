program PROJETOTCC;

uses
  Vcl.Forms,
  TCC in 'TCC.pas' {FrmSeguranca},
  ABOUT in 'ABOUT.pas' {AboutBox},
  dmPrincipal in 'dmPrincipal.pas' {Data_Module: TDataModule},
  Controle in 'Controle.pas' {Formulario_Controle},
  CadastraCliente in 'CadastraCliente.pas' {Cadastro_Cliente},
  Vcl.Themes,
  Vcl.Styles,
  gerador in 'gerador.pas' {CodigoBarra};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSeguranca, FrmSeguranca);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TData_Module, Data_Module);
  Application.CreateForm(TFormulario_Controle, Formulario_Controle);
  Application.CreateForm(TCadastro_Cliente, Cadastro_Cliente);
  Application.CreateForm(TCodigoBarra, CodigoBarra);
  Application.Run;
end.
