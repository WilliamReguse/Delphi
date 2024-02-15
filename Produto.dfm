object CadProduto: TCadProduto
  Left = 0
  Top = 0
  Caption = 'C'
  ClientHeight = 511
  ClientWidth = 929
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
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 39
    Height = 15
    Caption = 'Codigo'
  end
  object Label3: TLabel
    Left = 16
    Top = 106
    Width = 51
    Height = 15
    Caption = 'Descricao'
  end
  object Label4: TLabel
    Left = 18
    Top = 167
    Width = 49
    Height = 15
    Caption = 'Tamanho'
  end
  object Label5: TLabel
    Left = 20
    Top = 225
    Width = 19
    Height = 15
    Caption = 'Cor'
  end
  object Label6: TLabel
    Left = 18
    Top = 294
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 608
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 143
      Height = 23
      Caption = 'Cadastro de Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 224
      Top = 2
      Width = 240
      Height = 25
      DataSource = DataModule2.DSProduto
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 462
    Width = 616
    Height = 41
    TabOrder = 1
    object Button3: TButton
      Left = 98
      Top = 8
      Width = 75
      Height = 25
      Caption = 'EXCLUIR'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 195
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button1: TButton
      Left = 1
      Top = 8
      Width = 75
      Height = 25
      Caption = 'INCLUIR'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 77
    Width = 121
    Height = 23
    DataField = 'CODIGO'
    DataSource = DataModule2.DSProduto
    TabOrder = 2
    OnEnter = DBEdit1Enter
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 127
    Width = 121
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DataModule2.DSProduto
    TabOrder = 3
    OnEnter = DBEdit2Enter
  end
  object DBEdit3: TDBEdit
    Left = 20
    Top = 188
    Width = 119
    Height = 23
    DataField = 'TAMANHO'
    DataSource = DataModule2.DSProduto
    TabOrder = 4
    OnEnter = DBEdit3Enter
  end
  object DBEdit4: TDBEdit
    Left = 18
    Top = 246
    Width = 121
    Height = 23
    DataField = 'COR'
    DataSource = DataModule2.DSProduto
    TabOrder = 5
    OnEnter = DBEdit4Enter
  end
  object DBEdit5: TDBEdit
    Left = 20
    Top = 315
    Width = 119
    Height = 23
    DataField = 'ID'
    DataSource = DataModule2.DSProduto
    ReadOnly = True
    TabOrder = 6
    OnEnter = DBEdit5Enter
  end
end
