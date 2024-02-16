unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Data.Win.ADODB;

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
    sqlMovimentacoes: TFDQuery;
    dsSqlMovimentacoes: TDataSource;
    sqlValidaEstoque: TFDQuery;
    dsValidaEstoque: TDataSource;
    tbMovProdutos: TFDTable;
    tbMovProdutosid: TFDAutoIncField;
    tbMovProdutosidMovimentacao: TIntegerField;
    tbMovProdutosidProduto: TIntegerField;
    tbMovProdutosqtd: TIntegerField;
    tbMovimentacoes: TFDTable;
    tbMovimentacoesid: TFDAutoIncField;
    tbMovimentacoestipo: TStringField;
    tbMovimentacoesresponsavel: TStringField;
    tbMovimentacoesobservacoes: TMemoField;
    FDEstID: TIntegerField;
    FDEstNOME: TStringField;
    FDEstFABRICANTE: TStringField;
    FDEstVALIDADE: TDateField;
    FDEstESTOQUEATUAL: TIntegerField;
    tbProdutos: TFDTable;
    tbProdutosid: TFDAutoIncField;
    tbProdutosnome: TStringField;
    tbProdutosfabricante: TStringField;
    tbProdutosvalidade: TDateField;
    tbProdutosestoqueAtual: TIntegerField;
    dsProdutos: TDataSource;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    dsMovimentacoes: TDataSource;
    dsMovProdutos: TDataSource;
    tbMovimentacoeshr_mov: TDateTimeField;
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
