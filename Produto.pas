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
    DBNavigator1: TDBNavigator;
    Button2: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadProduto: TCadProduto;

implementation

{$R *.dfm}

uses Banco, DataModule;











procedure TCadProduto.Button1Click(Sender: TObject);
begin

   if DBEDIT1.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar produto sem Descrição','Preencha o Campo',MB_ICONEXCLAMATION+MB_OK);
    end;
   if DBEDIT2.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar produto sem fabricante','Preencha o Campo',MB_ICONEXCLAMATION+MB_OK);
    end;

    begin
       DBEDIT1.Enabled :=FALSE;
     DBEDIT2.Enabled :=FALSE;
     DBEDIT3.Enabled :=FALSE;
     DBEDIT4.Enabled :=FALSE;

       DataModule2.tbProdutos.Post;
    end;
end;



procedure TCadProduto.Button2Click(Sender: TObject);
begin
   DBEDIT1.Enabled :=FALSE;
  DBEDIT2.Enabled :=FALSE;
  DBEDIT3.Enabled :=FALSE;
  DBEDIT4.Enabled :=FALSE;
  Button1.Enabled :=False;
  DbNavigator1.Enabled :=True

end;

procedure TCadProduto.Button3Click(Sender: TObject);
begin
  DataModule2.tbprodutos.Delete;
end;

procedure TCadProduto.Button4Click(Sender: TObject);
begin
 CadProduto.close;
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
  DBNavigator1.Enabled :=False;
  Button3.Enabled :=False;
  DataModule2.tbProdutos.FieldByName('validade').Value := now;
  Button2.Enabled :=True
end;

procedure TCadProduto.FormShow(Sender: TObject);
begin
  DBEDIT1.Enabled :=FALSE;
  DBEDIT2.Enabled :=FALSE;
  DBEDIT3.Enabled :=FALSE;
  DBEDIT4.Enabled :=FALSE;
  Button1.Enabled :=False;
  Button2.Enabled :=False;
  DBNavigator1.Enabled :=True;
end;

end.



