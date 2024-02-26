object CadCliente: TCadCliente
  Left = 0
  Top = 0
  Caption = 'CadCliente'
  ClientHeight = 514
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Nome: TLabel
    Left = 24
    Top = 59
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Telefone: TLabel
    Left = 24
    Top = 200
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object Email: TLabel
    Left = 201
    Top = 200
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Endereço: TLabel
    Left = 24
    Top = 347
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
  end
  object Cidade: TLabel
    Left = 24
    Top = 275
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Número: TLabel
    Left = 201
    Top = 347
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = -1
      Width = 222
      Height = 32
      Caption = 'Cadastro De Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object edtNome: TDBEdit
    Left = 24
    Top = 80
    Width = 121
    Height = 23
    DataField = 'Nome'
    DataSource = DataModule2.dsClientes
    TabOrder = 1
  end
  object edtCPF: TDBEdit
    Left = 24
    Top = 149
    Width = 121
    Height = 23
    DataField = 'CPF'
    DataSource = DataModule2.dsClientes
    TabOrder = 2
  end
  object edtTelefone: TDBEdit
    Left = 24
    Top = 221
    Width = 121
    Height = 23
    DataField = 'Telefone'
    DataSource = DataModule2.dsClientes
    TabOrder = 3
  end
  object edtEmail: TDBEdit
    Left = 201
    Top = 221
    Width = 121
    Height = 23
    DataField = 'Email'
    DataSource = DataModule2.dsClientes
    TabOrder = 4
  end
  object EdtEndereco: TDBEdit
    Left = 24
    Top = 368
    Width = 121
    Height = 23
    DataField = 'Endereco'
    DataSource = DataModule2.dsClientes
    TabOrder = 5
  end
  object edtCidade: TDBEdit
    Left = 24
    Top = 296
    Width = 121
    Height = 23
    DataField = 'Cidade'
    DataSource = DataModule2.dsClientes
    TabOrder = 6
  end
  object Edtnumero: TDBEdit
    Left = 201
    Top = 368
    Width = 121
    Height = 23
    DataField = 'Numero'
    DataSource = DataModule2.dsClientes
    TabOrder = 7
  end
  object btnIncluir: TBitBtn
    Left = 76
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 8
    OnClick = btnIncluirClick
  end
  object btnAlterar: TBitBtn
    Left = 157
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Alterar'
    DisabledImageName = 'Alterar'
    TabOrder = 9
  end
  object btnExcluir: TBitBtn
    Left = 238
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Excluir'
    DisabledImageName = 'btnExcluir'
    TabOrder = 10
    OnClick = btnExcluirClick
  end
  object btnFechar: TBitBtn
    Left = 319
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 11
    OnClick = btnFecharClick
  end
  object btnConfirmar: TBitBtn
    Left = 141
    Top = 441
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    DisabledImageName = 'btnConfirmar'
    TabOrder = 12
    OnClick = btnConfirmarClick
  end
  object btnDesistir: TBitBtn
    Left = 222
    Top = 441
    Width = 75
    Height = 25
    Caption = 'Desistir'
    DisabledImageName = 'btnDesistir'
    TabOrder = 13
    OnClick = btnDesistirClick
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 471
    Width = 62
    Height = 25
    DataSource = DataModule2.dsClientes
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 14
  end
end
