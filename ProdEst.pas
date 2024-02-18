unit ProdEst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TEstoque = class(TForm)
    DBGrid1: TDBGrid;
    Button2: TButton;
    Panel1: TPanel;
    Consultar: TButton;
    procedure Button2Click(Sender: TObject);
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

procedure TEstoque.Button2Click(Sender: TObject);
begin
 Estoque.Close;
end;

end.
