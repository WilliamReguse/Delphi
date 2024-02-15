unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentacao1: TMenuItem;
    ConsultaEst1: TMenuItem;
    Sair1: TMenuItem;
    Entrada1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure ConsultaEst1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Produto, Entrada, ProdEst, CadMov;

procedure TForm1.Cadastro1Click(Sender: TObject);
begin
  CadProduto.ShowModal;
end;

procedure TForm1.ConsultaEst1Click(Sender: TObject);
begin
  Estoque.ShowModal;
end;



procedure TForm1.Entrada1Click(Sender: TObject);
begin
 TfmCadMov.showModal;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
 application.Terminate
end;

end.
