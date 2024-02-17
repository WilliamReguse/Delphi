unit Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TTfmEntrada = class(TForm)
    Panel1: TPanel;
    MOVIMENTAÇÕES: TLabel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBNavigator2: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid2: TDBGrid;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TfmEntrada: TTfmEntrada;

implementation

{$R *.dfm}




uses DataModule;



procedure TTfmEntrada.Button1Click(Sender: TObject);
begin
 TfmEntrada.Close;
end;

procedure TTfmEntrada.Button2Click(Sender: TObject);
begin
Datamodule2.tbMovimentacoes.Post;
end;

procedure TTfmEntrada.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
DataModule2.tbMovimentacoes.FieldByName('DataHora').Value := now;
end;

end.








