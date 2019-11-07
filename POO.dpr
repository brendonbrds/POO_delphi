program POO;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  Entidade.Pessoa in 'Entidades\Entidade.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
