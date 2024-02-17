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
    EdtDthora: TDBEdit;
    EdtResponsavel: TDBEdit;
    TxtObs: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBNavigator2: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid2: TDBGrid;
    Label9: TLabel;
    TxtTotal: TLabel;
    Button2: TButton;
    Button3: TButton;
    Excluir: TButton;
    Button1: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);

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
  dbcombobox1.enabled :=true;
 edtdthora.enabled :=true;
 edtresponsavel.enabled :=true;
 txtobs.Enabled :=true;
 button3.Enabled :=True;
 Excluir.Enabled :=False;
 Button2.Enabled :=False;
 button4.Enabled :=True;
 button1.Enabled :=False;

Datamodule2.tbMovimentacoes.append;
DataModule2.tbMovimentacoes.FieldByName('DataHora').Value := now;
end;

procedure TTfmEntrada.Button3Click(Sender: TObject);
begin
if edtresponsavel.Text = '' then
    begin
      Application.MessageBox('Necessário Informar um responsável', 'Favor Verificar', MB_ICONEXCLAMATION+MB_OK);
    end;
   if dbcombobox1.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar movimentações sem informar o tipo', 'Favor Verificar', MB_ICONEXCLAMATION+MB_OK);
    end;
   if (dbcombobox1.Text <> '') and (edtresponsavel.Text <> '') then
    begin
    button2.Enabled :=true;
     dbcombobox1.enabled :=false;
     edtdthora.enabled :=false;
     edtresponsavel.enabled :=false;
     txtobs.Enabled :=false;
     button3.Enabled :=false;
     Excluir.Enabled :=True;
     button2.Enabled :=True;
     button1.Enabled :=True;


     Datamodule2.tbMovimentacoes.Post;
     DataModule2.tbMovimentacoes.Refresh;
    end;
end;

procedure TTfmEntrada.Button4Click(Sender: TObject);
begin
 dbcombobox1.enabled :=false;
 edtdthora.enabled :=false;
 edtresponsavel.enabled :=false;
 txtobs.Enabled :=false;
 button3.Enabled :=false;
 Excluir.Enabled :=True;
 button4.Enabled :=False;
 button2.Enabled :=True;
 button1.Enabled :=True;

 datamodule2.tbMovimentacoes.Cancel;
end;

procedure TTfmEntrada.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
DataModule2.tbMovimentacoes.FieldByName('DataHora').Value := now;
end;

procedure TTfmEntrada.ExcluirClick(Sender: TObject);
begin
 Datamodule2.tbMovimentacoes.Delete;
end;

procedure TTfmEntrada.FormShow(Sender: TObject);
begin
 Datamodule2.CalcTotal;

 dbcombobox1.enabled :=false;
 edtdthora.enabled :=false;
 edtresponsavel.enabled :=false;
 txtobs.Enabled :=false;
 button3.Enabled :=false;
 Excluir.Enabled :=True;
 button4.Enabled :=False;


end;

end.








