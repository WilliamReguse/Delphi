unit Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;

type
  TCadProduto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
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
      DBEdit1.ENABLED :=TRUE;
      DBEdit2.ENABLED :=TRUE;
      DBEdit3.ENABLED :=TRUE;
      DBEdit4.ENABLED :=TRUE;
      DBEdit5.ENABLED :=TRUE;
      Button3.Enabled :=True;
      CadProduto.DBEdit1.text :='';
      CadProduto.DBEdit2.text :='';
      CadProduto.DBEdit3.text :='';
      CadProduto.DBEdit4.text :='';
      CadProduto.DBEdit5.text :='';

end;

procedure TCadProduto.Button2Click(Sender: TObject);
begin
 DataModule2.FDPRODUTO.Post
end;

procedure TCadProduto.Button3Click(Sender: TObject);
begin
  DataModule2.FDProduto.Delete;
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



procedure TCadProduto.DBEdit5Enter(Sender: TObject);
begin
CadProduto.DBEdit5.text :='';
end;

procedure TCadProduto.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
     DBEdit1.ENABLED :=TRUE;
      DBEdit2.ENABLED :=TRUE;
      DBEdit3.ENABLED :=TRUE;
      DBEdit4.ENABLED :=TRUE;
      DBEdit5.ENABLED :=TRUE;
      Button3.Enabled :=True;
      CadProduto.DBEdit1.text :='';
      CadProduto.DBEdit2.text :='';
      CadProduto.DBEdit3.text :='';
      CadProduto.DBEdit4.text :='';
      CadProduto.DBEdit5.text :='';
end;

procedure TCadProduto.FormShow(Sender: TObject);
begin
DBEdit1.ENABLED :=FALSE;
DBEdit2.ENABLED :=FALSE;
DBEdit3.ENABLED :=FALSE;
DBEdit4.ENABLED :=FALSE;
DBEdit5.ENABLED :=FALSE;
end;






end.



