object Pedido: TPedido
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 495
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Windows'
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 33
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 3
      Width = 183
      Height = 30
      Caption = 'Cadastro De Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 432
      Top = 3
      Width = 114
      Height = 30
      Caption = 'Itens Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 454
    Width = 927
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 817
    object btnIncluir: TBitBtn
      Left = 114
      Top = 6
      Width = 90
      Height = 30
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TBitBtn
      Left = 205
      Top = 6
      Width = 90
      Height = 30
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      Left = 296
      Top = 6
      Width = 90
      Height = 30
      Caption = 'Excluir'
      TabOrder = 2
    end
    object btnFechar: TBitBtn
      Left = 387
      Top = 6
      Width = 90
      Height = 30
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = btnFecharClick
    end
    object DBNavigator1: TDBNavigator
      Left = 7
      Top = 6
      Width = 100
      Height = 30
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
  end
  object pnlConfirmar: TPanel
    Left = 0
    Top = 413
    Width = 927
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 407
    ExplicitWidth = 185
    object btnConfirmar: TBitBtn
      Left = 54
      Top = 10
      Width = 90
      Height = 30
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnDesistir: TBitBtn
      Left = 148
      Top = 10
      Width = 90
      Height = 30
      Caption = 'Desistir'
      TabOrder = 1
      OnClick = btnDesistirClick
    end
  end
  object pnlItens: TPanel
    Left = 424
    Top = 39
    Width = 501
    Height = 130
    BevelOuter = bvNone
    TabOrder = 3
    object Label9: TLabel
      Left = 8
      Top = 0
      Width = 42
      Height = 15
      Caption = 'C'#243'digo:'
    end
    object Label10: TLabel
      Left = 8
      Top = 50
      Width = 65
      Height = 15
      Caption = 'Quantidade:'
    end
    object Label11: TLabel
      Left = 173
      Top = 0
      Width = 33
      Height = 15
      Caption = 'Pre'#231'o:'
    end
    object edtCodigo: TDBEdit
      Left = 8
      Top = 20
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object edtQuantidade: TDBEdit
      Left = 8
      Top = 71
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object btnAdicionar: TBitBtn
      Left = 8
      Top = 100
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 2
    end
    object edtPreco: TDBEdit
      Left = 173
      Top = 20
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object btnExcluirItem: TBitBtn
      Left = 87
      Top = 100
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 432
    Top = 166
    Width = 493
    Height = 219
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object pnlDados: TPanel
    Left = 0
    Top = 39
    Width = 426
    Height = 371
    BevelOuter = bvNone
    TabOrder = 5
    object Label2: TLabel
      Left = 8
      Top = 5
      Width = 47
      Height = 15
      Caption = 'N'#250'mero:'
    end
    object Label3: TLabel
      Left = 8
      Top = 57
      Width = 40
      Height = 15
      Caption = 'Cliente:'
    end
    object Label7: TLabel
      Left = 8
      Top = 159
      Width = 69
      Height = 15
      Caption = 'Valor Pedido:'
    end
    object Label4: TLabel
      Left = 8
      Top = 211
      Width = 77
      Height = 15
      Caption = 'Data Cadastro:'
    end
    object Label5: TLabel
      Left = 8
      Top = 263
      Width = 63
      Height = 15
      Caption = 'Data Fatura:'
    end
    object Label6: TLabel
      Left = 8
      Top = 319
      Width = 70
      Height = 15
      Caption = 'Data Entrega:'
    end
    object Label12: TLabel
      Left = 8
      Top = 107
      Width = 78
      Height = 15
      Caption = 'Representante:'
    end
    object Label13: TLabel
      Left = 216
      Top = 5
      Width = 82
      Height = 15
      Caption = 'Transportadora:'
    end
    object edtNumero: TDBEdit
      Left = 8
      Top = 27
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object edtCliente: TDBEdit
      Left = 8
      Top = 78
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object edtValor: TDBEdit
      Left = 8
      Top = 180
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object edtDataCad: TDBEdit
      Left = 8
      Top = 233
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object edtFatura: TDBEdit
      Left = 8
      Top = 284
      Width = 121
      Height = 23
      TabOrder = 4
    end
    object edtEntrega: TDBEdit
      Left = 8
      Top = 340
      Width = 121
      Height = 23
      TabOrder = 5
    end
    object edtRepresentante: TDBEdit
      Left = 8
      Top = 125
      Width = 121
      Height = 23
      TabOrder = 6
    end
    object edtTransportadora: TDBEdit
      Left = 216
      Top = 27
      Width = 121
      Height = 23
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 426
    Top = 379
    Width = 499
    Height = 31
    BevelOuter = bvNone
    TabOrder = 6
    object Label14: TLabel
      Left = 6
      Top = 12
      Width = 33
      Height = 15
      Caption = 'Totais:'
    end
    object Label15: TLabel
      Left = 58
      Top = 12
      Width = 29
      Height = 15
      Caption = 'Qtde:'
    end
    object Label16: TLabel
      Left = 100
      Top = 12
      Width = 12
      Height = 15
      Caption = '00'
    end
    object Label17: TLabel
      Left = 138
      Top = 12
      Width = 29
      Height = 15
      Caption = 'Valor:'
    end
    object Label18: TLabel
      Left = 173
      Top = 12
      Width = 18
      Height = 15
      Caption = '000'
    end
  end
end
