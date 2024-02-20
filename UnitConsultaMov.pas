unit UnitConsultaMov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TConsultaMov = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DtMovIni: TMaskEdit;
    DtMovFim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaMov: TConsultaMov;

implementation

{$R *.dfm}

uses DataModule;

procedure TConsultaMov.Button1Click(Sender: TObject);
begin
  if DtmovIni.text = '' then
  begin
    application.MessageBox('Necessário Informar uma data válida', 'Favor Verificar', MB_ICONEXCLAMATION+MB_OK);
  end;
begin
 datamodule2.sqlmovimentacoes.close;
 datamodule2.sqlMovimentacoes.SQL.Clear;
 datamodule2.sqlMovimentacoes.SQL.Text := 'select * from movimentacoes where Date(datahora) between :pDtIni and :pDtFim';
 datamodule2.sqlMovimentacoes.parambyname('pDtIni').value := FormatDateTime ('YYYY-MM-DD',StrTodate(DtMovIni.Text));
 datamodule2.sqlMovimentacoes.ParamByName('pDtFim').Value := FormatDateTime ('YYYY-MM-DD', StrToDate(DtMovFim.Text));
 datamodule2.sqlMovimentacoes.Open;
end;
end;

procedure TConsultaMov.FormShow(Sender: TObject);
begin
  datamodule2.sqlMovimentacoes.Refresh;
  datamodule2.sqlConsultaMovimentacoes.refresh;
end;


end.
