object TfmCadMov: TTfmCadMov
  Left = 0
  Top = 0
  Caption = 'Movimentacao'
  ClientHeight = 682
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 170
    Height = 32
    Caption = 'Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 25
    Top = 68
    Width = 158
    Height = 21
    Caption = 'Tipo da Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 124
    Width = 82
    Height = 21
    Caption = 'Data e Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 25
    Top = 178
    Width = 87
    Height = 21
    Caption = 'Respons'#225'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 236
    Width = 89
    Height = 21
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 711
    Top = 17
    Width = 169
    Height = 32
    Caption = 'Mov. Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 711
    Top = 99
    Width = 125
    Height = 21
    Caption = 'Escolha o Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 951
    Top = 92
    Width = 81
    Height = 21
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 713
    Top = 432
    Width = 138
    Height = 21
    Caption = 'Total de Produtos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtTotalProdutos: TLabel
    Left = 857
    Top = 432
    Width = 18
    Height = 21
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbTpMov: TDBComboBox
    Left = 25
    Top = 91
    Width = 217
    Height = 29
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = DataModule2.dsSqlMovimentacoes
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Items.Strings = (
      'Entrada'
      'Saida')
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 151
    Width = 218
    Height = 29
    DataField = 'hr_mov'
    DataSource = DataModule2.dsSqlMovimentacoes
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object txtResponsavel: TDBEdit
    Left = 24
    Top = 200
    Width = 298
    Height = 29
    DataField = 'responsavel'
    DataSource = DataModule2.dsSqlMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object mmObs: TDBMemo
    Left = 24
    Top = 258
    Width = 298
    Height = 145
    DataField = 'observacoes'
    DataSource = DataModule2.dsSqlMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 334
    Top = 91
    Width = 344
    Height = 312
    DataSource = DataModule2.dsSqlMovimentacoes
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Title.Caption = 'DATA E HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'RESPONSAVEL'
        Visible = True
      end>
  end
  object btnInclui: TButton
    Left = 24
    Top = 430
    Width = 75
    Height = 31
    Caption = 'INCLUIR'
    TabOrder = 5
  end
  object btnExclui: TButton
    Left = 105
    Top = 430
    Width = 75
    Height = 31
    Caption = 'EXCLUIR'
    TabOrder = 6
  end
  object btnCancela: TButton
    Left = 268
    Top = 430
    Width = 75
    Height = 31
    Caption = 'CANCELAR'
    Enabled = False
    TabOrder = 7
  end
  object btnConfirma: TButton
    Left = 187
    Top = 430
    Width = 75
    Height = 31
    Caption = 'CONFIRAMR'
    Enabled = False
    TabOrder = 8
  end
  object cbProd: TDBLookupComboBox
    Left = 711
    Top = 121
    Width = 235
    Height = 29
    DataField = 'idProduto'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = 'id'
    ListField = 'nome'
    ParentFont = False
    TabOrder = 9
  end
  object edtQtde: TDBEdit
    Left = 952
    Top = 121
    Width = 96
    Height = 29
    DataField = 'qtd'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBGrid2: TDBGrid
    Left = 711
    Top = 168
    Width = 337
    Height = 235
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomeProduto'
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Visible = True
      end>
  end
  object SAIR: TButton
    Left = 360
    Top = 430
    Width = 75
    Height = 31
    Caption = 'SAIR'
    TabOrder = 12
    OnClick = SAIRClick
  end
  object DBNavigator1: TDBNavigator
    Left = 256
    Top = 26
    Width = 232
    Height = 25
    DataSource = DataModule2.dsSqlMovimentacoes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 13
  end
end
