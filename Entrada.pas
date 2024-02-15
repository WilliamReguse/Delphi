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
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    PRODUTO: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Button1: TButton;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    GRAVAR: TButton;
    Button2: TButton;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  TfmEntrada.close;
end;




procedure TTfmEntrada.Button2Click(Sender: TObject);
begin
 TfmEntrada.DBEdit2.text :='';
 TfmEntrada.DBEdit3.text :='';
 TfmEntrada.DBEdit4.text :='';
 TfmEntrada.DBMemo1.Text :='';
End;


procedure TTfmEntrada.FormShow(Sender: TObject);
begin
 TfmEntrada.DBEdit2.Text :='';
 TfmEntrada.DBEdit3.Text :='';
 TfmEntrada.DBEdit4.Text :='';
 TfmEntrada.DBMemo1.Text :='';
end;

procedure TTfmEntrada.GRAVARClick(Sender: TObject);
begin

         DataModule2.FDEst.Post;

end;

end.
