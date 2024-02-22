unit UnitCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TCadCliente = class(TForm)
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Nome: TLabel;
    Label3: TLabel;
    Telefone: TLabel;
    DBEdit4: TDBEdit;
    Email: TLabel;
    DBEdit5: TDBEdit;
    Endereço: TLabel;
    DBEdit6: TDBEdit;
    Cidade: TLabel;
    DBEdit7: TDBEdit;
    Número: TLabel;
    Incluir: TBitBtn;
    Alterar: TBitBtn;
    Excluir: TBitBtn;
    Fechar: TBitBtn;
    Confirmar: TBitBtn;
    Desistir: TBitBtn;
    procedure FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadCliente: TCadCliente;

implementation

{$R *.dfm}

procedure TCadCliente.FecharClick(Sender: TObject);
begin
 Cadcliente.Close;
end;

end.
