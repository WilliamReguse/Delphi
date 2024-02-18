unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Data.Win.ADODB, VCL.Dialogs;

type
  TDataModule2 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
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
    tbMovimentacoesdataHora: TDateTimeField;
    tbMovProdutosDescricao: TStringField;
    sqlConsultaEstoque: TFDCommand;
    procedure tbMovProdutosAfterPost(DataSet: TDataSet);
    procedure tbMovProdutosAfterDelete(DataSet: TDataSet);
    procedure CalcTotal;
    procedure tbMovimentacoesAfterScroll(DataSet: TDataSet);
    procedure tbMovProdutosBeforeDelete(DataSet: TDataSet);
    procedure tbMovimentacoesBeforeDelete(DataSet: TDataSet);
    procedure tbProdutosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Entrada;

{$R *.dfm}

procedure TDataModule2.CalcTotal;
 var
 Total : Integer;
begin
 if tbmovprodutos.State in [dsBrowse] then
             begin

              tbmovprodutos.First;

              While Not tbmovprodutos.Eof do
              begin
                Total := Total + tbmovprodutos.FieldByName('qtd').Value;

                tbmovprodutos.Next;
              end;

              TfmEntrada.TxtTotal.Caption := IntToStr(Total);
            end;
end;

procedure TDataModule2.tbMovimentacoesAfterScroll(DataSet: TDataSet);
begin
 CalcTotal;
end;

procedure TDataModule2.tbMovimentacoesBeforeDelete(DataSet: TDataSet);
begin
 if (tbmovprodutos.RecordCount > 0)	 then
 begin
  showmessage('Existem Produtos vinculados na movimentação. Impossível Excluir');
  abort;
 end;

end;

procedure TDataModule2.tbMovProdutosAfterDelete(DataSet: TDataSet);
begin
 CalcTotal;
end;

procedure TDataModule2.tbMovProdutosAfterPost(DataSet: TDataSet);
begin
   CalcTotal;


   if (tbmovimentacoes.fieldbyname('tipo').value = 'Entrada no Estoque') then
   begin
       sqlAumentaEstoque.ParamByName('pId').Value :=tbmovprodutos.fieldbyname('IdProduto').value;
       sqlAumentaEstoque.ParamByName('pQtd').Value :=tbmovprodutos.FieldByName('qtd').value;
       sqlAumentaEstoque.Execute;
   end;

    if (tbmovimentacoes.fieldbyname('tipo').value = 'Saída do Estoque') then
   begin
       sqlDiminuiEstoque.ParamByName('pId').Value :=tbmovprodutos.fieldbyname('IdProduto').value;
       sqlDiminuiEstoque.ParamByName('pQtd').Value :=tbmovprodutos.FieldByName('qtd').value;
       sqlDiminuiEstoque.Execute;
   end;

end;

procedure TDataModule2.tbMovProdutosBeforeDelete(DataSet: TDataSet);
begin

 if (tbmovimentacoes.fieldbyname('tipo').value = 'Entrada no Estoque') then
   begin
       sqlDiminuiEstoque.ParamByName('pId').Value :=tbmovprodutos.fieldbyname('IdProduto').value;
       sqlDiminuiEstoque.ParamByName('pQtd').Value :=tbmovprodutos.FieldByName('qtd').value;
       sqlDiminuiEstoque.Execute;
   end;

    if (tbmovimentacoes.fieldbyname('tipo').value = 'Saída do Estoque') then
   begin
       sqlAumentaEstoque.ParamByName('pId').Value :=tbmovprodutos.fieldbyname('IdProduto').value;
       sqlAumentaEstoque.ParamByName('pQtd').Value :=tbmovprodutos.FieldByName('qtd').value;
       sqlAumentaEstoque.Execute;
   end;

end;

procedure TDataModule2.tbProdutosBeforeDelete(DataSet: TDataSet);
begin
 if (tbmovprodutos.RecordCount > 0)	 then
 begin
  showmessage('Produto vinculado na movimentação, Necessário realizar a exclusão. Impossível continuar');
  abort;
end;

end;
end.
