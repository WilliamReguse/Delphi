object TfmSaida: TTfmSaida
  Left = 0
  Top = 0
  Caption = 'Sa'#237'da Produto'
  ClientHeight = 522
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 241
    Height = 15
    Caption = 'SA'#205'DA DE PRODUTOS DO ESTOQUE'
  end
  object Label2: TLabel
    Left = 16
    Top = 59
    Width = 49
    Height = 15
    Caption = 'C'#243'digo'
  end
  object Label3: TLabel
    Left = 16
    Top = 152
    Width = 62
    Height = 15
    Caption = 'Quantidade'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 80
    Width = 145
    Height = 23
    DataField = 'CODIGO'
    DataSource = DataModule2.DSEst
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 184
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object GRAVAR: TButton
    Left = 16
    Top = 256
    Width = 75
    Height = 25
    Caption = 'GRAVAR'
    TabOrder = 2
    OnClick = GRAVARClick
  end
end
