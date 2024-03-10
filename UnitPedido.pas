unit UnitPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TPedido = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    pnlBotoes: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    pnlConfirmar: TPanel;
    btnConfirmar: TBitBtn;
    btnDesistir: TBitBtn;
    pnlItens: TPanel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    edtCodigo: TDBEdit;
    edtQuantidade: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    btnAdicionar: TBitBtn;
    edtPreco: TDBEdit;
    Label11: TLabel;
    btnExcluirItem: TBitBtn;
    pnlDados: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    edtNumero: TDBEdit;
    edtCliente: TDBEdit;
    edtValor: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtDataCad: TDBEdit;
    edtFatura: TDBEdit;
    edtEntrega: TDBEdit;
    edtRepresentante: TDBEdit;
    Label12: TLabel;
    edtTransportadora: TDBEdit;
    Label13: TLabel;
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBNavigator1: TDBNavigator;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnDesistirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido: TPedido;

implementation

{$R *.dfm}

procedure TPedido.btnAlterarClick(Sender: TObject);
begin
   pnlConfirmar.Visible := True;
   pnlBotoes.Visible := False;
   pnlItens.Enabled := True;
   pnlDados.Enabled := True;
end;

procedure TPedido.btnConfirmarClick(Sender: TObject);
begin
   pnlConfirmar.visible := False;
   pnlBotoes.Visible := True;
   pnlItens.Enabled := False;
   pnlDados.Enabled := False;
end;

procedure TPedido.btnDesistirClick(Sender: TObject);
begin
   pnlConfirmar.visible := False;
   pnlBotoes.Visible := True;
   pnlItens.Enabled := False;
   pnlDados.Enabled := False;
end;

procedure TPedido.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TPedido.btnIncluirClick(Sender: TObject);
begin
   pnlConfirmar.Visible := True;
   pnlBotoes.Visible := False;
   pnlItens.Enabled := True;
   pnlDados.Enabled := True;
end;

procedure TPedido.FormShow(Sender: TObject);
begin
   pnlConfirmar.visible := False;
   pnlItens.Enabled := False;
   pnlDados.Enabled := False;
end;

end.
