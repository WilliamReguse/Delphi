object TfmEntrada: TTfmEntrada
  Left = 0
  Top = 0
  Caption = 'TfmEntrada'
  ClientHeight = 511
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 182
    Width = 30
    Height = 25
    Caption = 'Cor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 252
    Width = 77
    Height = 25
    Caption = 'Tamanho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object PRODUTO: TLabel
    Left = 16
    Top = 112
    Width = 85
    Height = 25
    Caption = 'PRODUTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 42
    Width = 83
    Height = 25
    Caption = 'Tipo Mov.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 322
    Width = 116
    Height = 25
    Caption = 'QUANTIDADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 393
    Width = 117
    Height = 25
    Caption = 'OBSERVA'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 41
    Align = alTop
    Alignment = taRightJustify
    TabOrder = 0
    object MOVIMENTAÇÕES: TLabel
      Left = 16
      Top = 2
      Width = 247
      Height = 28
      Caption = 'MOVIMENTA'#199#195'O ENTRADA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 304
      Top = 9
      Width = 75
      Height = 25
      Caption = 'SAIR'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 213
    Width = 121
    Height = 33
    DataField = 'COR'
    DataSource = DataModule2.DSProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 283
    Width = 121
    Height = 33
    DataField = 'TAMANHO'
    DataSource = DataModule2.DSProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 73
    Width = 145
    Height = 33
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Items.Strings = (
      'ENTRADA'
      'SA'#205'DA')
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 355
    Width = 121
    Height = 33
    DataField = 'QUANTIDADE'
    DataSource = DataModule2.DSEst
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object GRAVAR: TButton
    Left = 40
    Top = 472
    Width = 75
    Height = 25
    Caption = 'GRAVAR'
    TabOrder = 5
    OnClick = GRAVARClick
  end
  object Button2: TButton
    Left = 174
    Top = 472
    Width = 89
    Height = 25
    Caption = 'LIMPAR DADOS'
    TabOrder = 6
    OnClick = Button2Click
  end
  object DBMemo1: TDBMemo
    Left = 16
    Top = 424
    Width = 185
    Height = 42
    DataField = 'OBS'
    DataSource = DataModule2.DSEst
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 143
    Width = 145
    Height = 23
    DataField = 'CODIGO'
    DataSource = DataModule2.DSEst
    KeyField = 'ID'
    ListField = 'CODIGO'
    ListSource = DataModule2.DSProduto
    TabOrder = 8
  end
end
