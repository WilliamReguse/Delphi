unit ProdEst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons, Vcl.OleCtrls, SHDocVw;

type
  TEstoque = class(TForm)
    DBGrid1: TDBGrid;
    Button2: TButton;
    Panel1: TPanel;
    Consultar: TBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure ConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Estoque: TEstoque;

implementation

{$R *.dfm}

uses DataModule;

procedure TEstoque.ConsultarClick(Sender: TObject);
begin
datamodule2.sqlmovimentacoes.close;
 datamodule2.sqlMovimentacoes.SQL.Clear;
 datamodule2.sqlMovimentacoes.SQL.Text := 'select * from produtos';
 datamodule2.sqlMovimentacoes.Open;
end;

procedure TEstoque.Button2Click(Sender: TObject);
begin
 Estoque.Close;
end;

end.
