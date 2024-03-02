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
    ConsultaMovimentaes1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    CadastrodeClientes1: TMenuItem;
    CadastroDePedidos1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure ConsultaEst1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure ConsultaMovimentaes1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure CadastrodeClientes1Click(Sender: TObject);
    procedure CadastroDePedidos1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Produto, Entrada, ProdEst, UnitConsultaMov, UnitCadCliente, UnitPedido;




procedure TForm1.CadastrodeClientes1Click(Sender: TObject);
begin
 CadCliente.Showmodal;
end;

procedure TForm1.CadastroDePedidos1Click(Sender: TObject);
begin
 Pedido.showmodal;
end;

procedure TForm1.CadastroDeProdutos1Click(Sender: TObject);
begin
 Cadproduto.Showmodal;
end;

procedure TForm1.ConsultaEst1Click(Sender: TObject);
begin
  Estoque.ShowModal;
end;



procedure TForm1.ConsultaMovimentaes1Click(Sender: TObject);
begin
 Consultamov.ShowModal;
end;

procedure TForm1.Entrada1Click(Sender: TObject);
begin
 TfmEntrada.showModal;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
 application.Terminate
end;

end.
