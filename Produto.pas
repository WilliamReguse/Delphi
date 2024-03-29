unit Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;
type
  TCadProduto = class(TForm)
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button4: TButton;
    Label1: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button5: TButton;
    procedure Button4Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);







  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadProduto: TCadProduto;

implementation

{$R *.dfm}

uses DataModule;











procedure TCadProduto.Button1Click(Sender: TObject);
begin

   if DBEDIT1.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar produto sem Descri��o','Preencha o Campo',MB_ICONEXCLAMATION+MB_OK);
    end;
   if DBEDIT2.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar produto sem fabricante','Preencha o Campo',MB_ICONEXCLAMATION+MB_OK);
      datamodule2.tbprodutos.cancel;
    end;

    begin
     DBEDIT1.Enabled := TRUE;
     DBEDIT2.Enabled := TRUE;
     DBEDIT3.Enabled := TRUE;
     DBEDIT4.Enabled := TRUE;
     {Dbnavigator1.Enabled :=TRUE;}
     button4.Enabled := TRUE;
     button3.Enabled := TRUE;
     button1.Enabled := FALSE;
     button2.Enabled := FALSE;
     Button5.Enabled := True;
     DbGrid1.Enabled := True;

     DataModule2.tbProdutos.append;
    end;
end;



procedure TCadProduto.Button2Click(Sender: TObject);
begin
  DBEDIT1.Enabled :=FALSE;
  DBEDIT2.Enabled :=FALSE;
  DBEDIT3.Enabled :=FALSE;
  DBEDIT4.Enabled :=FALSE;
  Button1.Enabled :=False;
  {DbNavigator1.Enabled :=True;}
  button3.Enabled :=True;
  button2.Enabled :=False;
  button4.Enabled :=True;
  Button5.Enabled := True;
  Dbgrid1.Enabled := True;

  datamodule2.tbProdutos.Cancel;

end;



procedure TCadProduto.Button3Click(Sender: TObject);
begin
Datamodule2.tbProdutos.Delete;
end;

procedure TCadProduto.Button4Click(Sender: TObject);
begin
 CadProduto.close;
end;







procedure TCadProduto.Button5Click(Sender: TObject);
begin
  Datamodule2.Tbprodutos.Insert;

  DBEDIT1.Enabled :=TRUE;
  DbEDIT1.SetFocus;
  DBEDIT2.Enabled :=TRUE;
  DBEDIT3.Enabled :=TRUE;
  DBEDIT4.Enabled :=TRUE;
  Button1.Enabled :=TRUE;
  Button5.Enabled := False;
  {DBNavigator1.Enabled :=False;}
  Button3.Enabled :=False;
  {DataModule2.tbProdutos.FieldByName('validade').Value := now;}
  Button2.Enabled :=True;
  button4.Enabled :=False;
  Button5.Enabled := False;
  DbGrid1.Enabled := False;

Datamodule2.tbprodutos.append;
end;

procedure TCadProduto.DBEdit1Enter(Sender: TObject);
begin
      CadProduto.DBEdit1.text :='';
end;

procedure TCadProduto.DBEdit2Enter(Sender: TObject);
begin
     CadProduto.DBEdit2.text :='';
end;



procedure TCadProduto.DBEdit3Enter(Sender: TObject);
begin
CadProduto.DBEdit3.text :='';
end;

procedure TCadProduto.DBEdit4Enter(Sender: TObject);
begin
CadProduto.DBEdit4.text :='';
end;











procedure TCadProduto.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  DBEDIT1.Enabled :=TRUE;
  DBEDIT2.Enabled :=TRUE;
  DBEDIT3.Enabled :=TRUE;
  DBEDIT4.Enabled :=TRUE;
  Button1.Enabled :=TRUE;
  {DBNavigator1.Enabled :=False;}
  DataModule2.tbProdutos.FieldByName('validade').Value := now;
  Button2.Enabled :=True;
  Button3.Enabled :=False;
  button4.Enabled :=False;
  Button5.Enabled := False;
  DBEDIT1.SetFocus;
end;

procedure TCadProduto.FormShow(Sender: TObject);
begin
  DBEDIT1.Enabled :=FALSE;
  DBEDIT2.Enabled :=FALSE;
  DBEDIT3.Enabled :=FALSE;
  DBEDIT4.Enabled :=FALSE;
  Button1.Enabled :=False;
  Button2.Enabled :=False;
  {DBNavigator1.Enabled :=True;}
    Button5.Enabled := True;
  button3.Enabled :=True;

  Datamodule2.tbProdutos.Refresh;
end;

end.



