unit UnitPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TPedido = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtNumero: TDBEdit;
    Label2: TLabel;
    edtCliente: TDBEdit;
    Label3: TLabel;
    edtDataCad: TDBEdit;
    Label4: TLabel;
    edtFatura: TDBEdit;
    Label5: TLabel;
    edtEntrega: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    GridItens: TDBGrid;
    edtValor: TDBEdit;
    Panel3: TPanel;
    Label8: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido: TPedido;

implementation

{$R *.dfm}

end.
