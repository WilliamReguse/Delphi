object CadProduto: TCadProduto
  Left = 0
  Top = 0
  Caption = 'CadProduto'
  ClientHeight = 511
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Label2: TLabel
    Left = 44
    Top = 65
    Width = 155
    Height = 25
    Caption = 'Descri'#231#227'o Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 44
    Top = 135
    Width = 96
    Height = 25
    Caption = 'Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 44
    Top = 210
    Width = 73
    Height = 25
    Caption = 'Validade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 44
    Top = 280
    Width = 171
    Height = 25
    Caption = 'Quantidade Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 44
    Top = 8
    Width = 229
    Height = 32
    Caption = 'Cadastro de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 8
    Top = 462
    Width = 913
    Height = 41
    TabOrder = 0
    object Button4: TButton
      Left = 464
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button1: TButton
      Left = 278
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 189
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 368
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DBEdit1: TDBEdit
    Left = 44
    Top = 96
    Width = 205
    Height = 33
    DataField = 'nome'
    DataSource = DataModule2.dsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 46
    Top = 241
    Width = 119
    Height = 33
    DataField = 'validade'
    DataSource = DataModule2.dsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 44
    Top = 320
    Width = 121
    Height = 33
    DataField = 'qtd'
    DataSource = DataModule2.dsMovProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 44
    Top = 166
    Width = 205
    Height = 33
    DataField = 'fabricante'
    DataSource = DataModule2.dsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 469
    Width = 144
    Height = 25
    DataSource = DataModule2.dsProdutos
    VisibleButtons = [nbInsert]
    TabOrder = 5
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 65
    Width = 320
    Height = 288
    DataSource = DataModule2.dsProdutos
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
