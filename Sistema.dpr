program Sistema;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Produto in 'Produto.pas' {CadProduto},
  Entrada in 'Entrada.pas' {TfmEntrada},
  ProdEst in 'ProdEst.pas' {Estoque},
  DataModule in 'DataModule.pas' {DataModule2: TDataModule},
  CadMov in 'CadMov.pas' {TfmCadMov};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TCadProduto, CadProduto);
  Application.CreateForm(TTfmEntrada, TfmEntrada);
  Application.CreateForm(TEstoque, Estoque);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TTfmCadMov, TfmCadMov);
  Application.Run;
end.
