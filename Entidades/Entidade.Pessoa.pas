unit Entidade.Pessoa;

interface

type
  TEntidadePessoa = class;

  iEntidadePessoa = interface
    function Informacao : String;
    function _this : TEntidadePessoa;
  end;

  TEntidadePessoa = class(TInterfacedObject, iEntidadePessoa)
    private
      Fidade: integer;
      Fnome: string;
      procedure Setidade(const Value: integer);
      procedure Setnome(const Value: string);
    public
      property nome : string read Fnome write Setnome;
      property idade : integer read Fidade write Setidade;
      function Informacao : String;
      function _this : TEntidadePessoa;
  end;

implementation

uses
  System.SysUtils;

{ EntidadePessoa }

{ TEntidadePessoa }

function TEntidadePessoa.Informacao: String;
begin
  Result := Self.nome + ' | ' + IntToStr(Self.idade);
end;

procedure TEntidadePessoa.Setidade(const Value: integer);
begin
  Fidade := Value;
end;

procedure TEntidadePessoa.Setnome(const Value: string);
begin
  Fnome := Value + ' Rodrigues ';
end;

function TEntidadePessoa._this: TEntidadePessoa;
begin
  Result := Self;
end;

end.
