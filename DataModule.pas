unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule2 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDProduto: TFDTable;
    DSProduto: TDataSource;
    FDProdutoID: TIntegerField;
    FDProdutoCODIGO: TIntegerField;
    FDProdutoDESCRICAO: TStringField;
    FDProdutoCOR: TIntegerField;
    FDProdutoTAMANHO: TStringField;
    FDEst: TFDTable;
    FDEstCODIGO: TIntegerField;
    FDEstCOR: TIntegerField;
    FDEstTAM: TStringField;
    DSEst: TDataSource;
    FDEstQUANTIDADE: TIntegerField;
    FDEstOBS: TStringField;
    CONSULTA_ESTOQUE: TFDQuery;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    sqlMovimentacoes: TFDQuery;
    dsSqlMovimentacoes: TDataSource;
    sqlValidaEstoque: TFDQuery;
    dsValidaEstoque: TDataSource;
    tbMovProdutos: TFDTable;
    tbMovProdutosid: TFDAutoIncField;
    tbMovProdutosidMovimentacao: TIntegerField;
    tbMovProdutosidProduto: TIntegerField;
    tbMovProdutosqtd: TIntegerField;
    tbMovProdutosnomeProduto: TStringField;
    tbMovimentacoes: TFDTable;
    tbMovimentacoesid: TFDAutoIncField;
    tbMovimentacoestipo: TStringField;
    tbMovimentacoesresponsavel: TStringField;
    tbMovimentacoesobservacoes: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
