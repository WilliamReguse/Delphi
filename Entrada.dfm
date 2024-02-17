object TfmEntrada: TTfmEntrada
  Left = 0
  Top = 0
  Caption = 'TfmEntrada'
  ClientHeight = 511
  ClientWidth = 1184
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
    Left = 32
    Top = 72
    Width = 55
    Height = 15
    Caption = 'TIPO MOV'
  end
  object Label2: TLabel
    Left = 32
    Top = 141
    Width = 66
    Height = 15
    Caption = 'DATA/HORA'
  end
  object Label3: TLabel
    Left = 32
    Top = 208
    Width = 76
    Height = 15
    Caption = 'RESPONS'#193'VEL'
  end
  object Label4: TLabel
    Left = 32
    Top = 291
    Width = 78
    Height = 15
    Caption = 'OBSERVA'#199#213'ES'
  end
  object Label7: TLabel
    Left = 760
    Top = 83
    Width = 43
    Height = 15
    Caption = 'Produto'
  end
  object Label8: TLabel
    Left = 934
    Top = 83
    Width = 62
    Height = 15
    Caption = 'Quantidade'
  end
  object Label9: TLabel
    Left = 744
    Top = 443
    Width = 239
    Height = 30
    Caption = 'Quantidade Total Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TxtTotal: TLabel
    Left = 1013
    Top = 443
    Width = 22
    Height = 30
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 41
    Align = alTop
    Alignment = taRightJustify
    TabOrder = 0
    object MOVIMENTAÇÕES: TLabel
      Left = 16
      Top = 2
      Width = 139
      Height = 28
      Caption = 'Movimenta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 776
      Top = 8
      Width = 122
      Height = 25
      Caption = 'Produtos Mov.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 304
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object EdtDthora: TDBEdit
    Left = 24
    Top = 162
    Width = 121
    Height = 23
    DataField = 'dataHora'
    DataSource = DataModule2.dsMovimentacoes
    TabOrder = 1
  end
  object EdtResponsavel: TDBEdit
    Left = 24
    Top = 240
    Width = 121
    Height = 23
    DataField = 'responsavel'
    DataSource = DataModule2.dsMovimentacoes
    TabOrder = 2
  end
  object TxtObs: TDBMemo
    Left = 24
    Top = 320
    Width = 185
    Height = 89
    DataField = 'observacoes'
    DataSource = DataModule2.dsMovimentacoes
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 104
    Width = 145
    Height = 23
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = DataModule2.dsMovimentacoes
    Items.Strings = (
      'Entrada no Estoque'
      'Sa'#237'da do Estoque')
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 232
    Top = 47
    Width = 224
    Height = 25
    DataSource = DataModule2.dsMovimentacoes
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 5
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 232
    Top = 104
    Width = 320
    Height = 305
    DataSource = DataModule2.dsMovimentacoes
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 744
    Top = 47
    Width = 224
    Height = 25
    DataSource = DataModule2.dsMovProdutos
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 760
    Top = 104
    Width = 145
    Height = 23
    DataField = 'idProduto'
    DataSource = DataModule2.dsMovProdutos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DataModule2.dsProdutos
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 928
    Top = 104
    Width = 121
    Height = 23
    DataField = 'qtd'
    DataSource = DataModule2.dsMovProdutos
    TabOrder = 9
  end
  object DBGrid2: TDBGrid
    Left = 744
    Top = 133
    Width = 320
    Height = 260
    DataSource = DataModule2.dsMovProdutos
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idMovimentacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Visible = True
      end>
  end
end
