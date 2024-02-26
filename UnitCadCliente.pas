unit UnitCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TCadCliente = class(TForm)
    Panel1: TPanel;
    edtNome: TDBEdit;
    edtCPF: TDBEdit;
    edtTelefone: TDBEdit;
    Label1: TLabel;
    Nome: TLabel;
    Label3: TLabel;
    Telefone: TLabel;
    edtEmail: TDBEdit;
    Email: TLabel;
    EdtEndereco: TDBEdit;
    Endere�o: TLabel;
    edtCidade: TDBEdit;
    Cidade: TLabel;
    Edtnumero: TDBEdit;
    N�mero: TLabel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    btnConfirmar: TBitBtn;
    btnDesistir: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnDesistirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadCliente: TCadCliente;

implementation

{$R *.dfm}

uses DataModule;

procedure TCadCliente.btnFecharClick(Sender: TObject);
begin
 Cadcliente.Close;
end;

procedure TCadCliente.btnIncluirClick(Sender: TObject);
begin
  Datamodule2.tbClientes.Open;
  Datamodule2.tbclientes.Next;
  datamodule2.tbclientes.insert;
  edtNome.Enabled := True;
  edtCPF.Enabled := True;
  edtTelefone.Enabled := True;
  edtEmail.Enabled := True;
  edtCidade.Enabled := True;
  edtEndereco.Enabled := True;
  edtNumero.Enabled := True;
  btnConfirmar.Visible := True;
  btnDesistir.Visible := True;
  btnIncluir.Visible := False;
  btnAlterar.Visible := False;
  btnExcluir.Visible := False;
  btnFechar.Visible := False;
  DBNavigator1.Visible := False;


end;

procedure TCadCliente.btnConfirmarClick(Sender: TObject);
begin
  edtNome.Enabled := False;
  edtCPF.Enabled := False;
  edtTelefone.Enabled := False;
  edtEmail.Enabled := False;
  edtCidade.Enabled := False;
  edtEndereco.Enabled := False;
  edtNumero.Enabled := False;
  btnConfirmar.Visible := False;
  btnDesistir.Visible := False;
  btnIncluir.Visible := True;
  btnAlterar.Visible := True;
  btnExcluir.Visible := True;
  btnFechar.Visible := True;
  DBNavigator1.Visible := True;

 datamodule2.tbClientes.Post;
 datamodule2.tbClientes.Refresh;
end;

procedure TCadCliente.btnDesistirClick(Sender: TObject);
begin
  edtNome.Enabled := False;
  edtCPF.Enabled := False;
  edtTelefone.Enabled := False;
  edtEmail.Enabled := False;
  edtCidade.Enabled := False;
  edtEndereco.Enabled := False;
  edtNumero.Enabled := False;
  btnConfirmar.Visible := False;
  btnDesistir.Visible := False;
  btnIncluir.Visible := True;
  btnAlterar.Visible := True;
  btnExcluir.Visible := True;
  btnFechar.Visible := True;
  DBNavigator1.Visible := True;

  Datamodule2.tbClientes.Cancel;
end;

procedure TCadCliente.btnExcluirClick(Sender: TObject);
begin
 Datamodule2.tbClientes.Delete;
end;

procedure TCadCliente.FormShow(Sender: TObject);
begin
  edtNome.Enabled := False;
  edtCPF.Enabled := False;
  edtTelefone.Enabled := False;
  edtEmail.Enabled := False;
  edtCidade.Enabled := False;
  edtEndereco.Enabled := False;
  edtNumero.Enabled := False;
  btnConfirmar.Visible := False;
  btnDesistir.Visible := False;
  DBNavigator1.Enabled := True;

end;

end.
