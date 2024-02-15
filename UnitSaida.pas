unit UnitSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TTfmSaida = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    GRAVAR: TButton;
    procedure GRAVARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TfmSaida: TTfmSaida;

implementation

{$R *.dfm}

uses DataModule;

procedure TTfmSaida.GRAVARClick(Sender: TObject);
begin
     var s1 : integer;

end;

end.
