unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Entidade.Pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation




{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Brendon : iEntidadePessoa;
begin

  Brendon := TEntidadePessoa.Create;
  Brendon._this.nome := 'Brendon';
  Brendon._this.idade := 18;

  ShowMessage( Brendon.Informacao() );

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
