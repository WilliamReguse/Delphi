unit CadMov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TTfmCadMov = class(TForm)
       Label1: TLabel;
    cbTpMov: TDBComboBox;
    DBEdit1: TDBEdit;
    txtResponsavel: TDBEdit;
    mmObs: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    btnInclui: TButton;
    btnExclui: TButton;
    btnCancela: TButton;
    btnConfirma: TButton;
    Label6: TLabel;
    cbProd: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    edtQtde: TDBEdit;
    DBGrid2: TDBGrid;
    SAIR: TButton;
    Label9: TLabel;
    txtTotalProdutos: TLabel;
    DBNavigator1: TDBNavigator;
    procedure btnConfirmaClick(Sender: TObject);

    procedure btnExcluiClick(Sender: TObject);

    procedure btnExcluiProdClick(Sender: TObject);
    procedure BtnConfirmaProdClick(Sender: TObject);

    procedure SAIRClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TfmCadMov: TTfmCadMov;

implementation

{$R *.dfm}

uses Datamodule;






procedure TTfmCadMov.btnConfirmaClick(Sender: TObject);
begin
   if txtResponsavel.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar movimentações sem o Responsavel', 'Favor preencher o responsavel', MB_ICONEXCLAMATION+MB_OK);
    end;
   if cbTpMov.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar movimentações sem informar o tipo', 'Favor preencher o tipo', MB_ICONEXCLAMATION+MB_OK);
    end;
   if (cbTpMov.Text <> '') and (txtResponsavel.Text <> '') then
    begin
     btnInclui.Enabled := true;
     btnExclui.enabled := true;
     btnConfirma.Enabled := false;
     btnCancela.Enabled := false;
     cbTpMov.Enabled := false;
     txtResponsavel.ReadOnly := true;
     mmObs.ReadOnly := true;

     Datamodule2.tbMovimentacoes.Post;
    end;
end;

procedure TTfmCadMov.BtnConfirmaProdClick(Sender: TObject);
var
  estoque: integer;
  qtde: Integer;
  resultado: Integer;
  produtoID: Integer;
begin
    //seta o id do cbprod para o produtoID
    produtoID := cbProd.KeyValue;

    //faz uma consulta para buscar o estoqueAtual da tabel pelo id que esta no parametro
    datamodule2.sqlValidaEstoque.SQL.Text := 'SELECT estoqueAtual FROM produtos WHERE id = :id';
    datamodule2.sqlValidaEstoque.ParamByName('id').AsInteger := produtoID;
    datamodule2.sqlValidaEstoque.Open;

    // valida se o sql nao trouxe vazio
    if not datamodule2.sqlValidaEstoque.IsEmpty then
  begin
    if (cbTpMov.Text = 'Saida') then
    begin

      estoque := datamodule2.sqlValidaEstoque.FieldByName('estoqueAtual').value;
      qtde := StrToInt(edtQtde.Text);
      resultado := estoque - qtde;

      //consulta pegando o (resultado - qtde) do text
      if resultado >= 0 then
      begin
      //estoque suficiente

        cbProd.enabled := false;
        edtQtde.Enabled := false;

        datamodule2.tbMovProdutos.Post;
      end
      else
      begin
        //estoque Insuficiente
        Application.MessageBox('Estoque Insuficiente para realizar a saida, verifique!', 'Estoque', MB_ICONEXCLAMATION+MB_OK);

        cbProd.enabled := false;
        edtQtde.Enabled := false;

        datamodule2.tbMovProdutos.Cancel
      end;
    end
    else
    //tp da mov = entrada
    begin

        cbProd.enabled := false;
        edtQtde.Enabled := false;

        datamodule2.tbMovProdutos.Post;
    end;
  end;

  datamodule2.sqlValidaEstoque.Close;
end;

procedure TTfmCadMov.btnExcluiClick(Sender: TObject);
begin
datamodule2.tbMovimentacoes.Refresh;

if Application.MessageBox('Deseja excluir a movimentação?', 'Excluir', MB_ICONQUESTION+MB_YESNO) = MRYES then
  BEGIN
     if (StrToInt(txtTotalProdutos.caption) > 0) then
     begin
       Application.MessageBox('Impossivel excluir movimentação com quantidade', 'Impossivel', MB_ICONERROR+MB_OK)
     end
     else
     begin
        datamodule2.tbMovimentacoes.Delete;
     end;
  END;
end;

procedure TTfmCadMov.btnExcluiProdClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir o produto da movimentação?', 'Excluir', MB_ICONQUESTION+MB_YESNO) = MRYES then
  BEGIN
    datamodule2.tbMovProdutos.Delete;
  END;
end;









procedure TTfmCadMov.SAIRClick(Sender: TObject);
begin
tfmCadMov.Close;
end;

end.
