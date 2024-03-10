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
    Top = 111
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Telefone: TLabel
    Left = 24
    Top = 171
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object Email: TLabel
    Left = 238
    Top = 109
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Endereço: TLabel
    Left = 24
    Top = 286
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
  end
  object Cidade: TLabel
    Left = 24
    Top = 227
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Número: TLabel
    Left = 238
    Top = 286
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
  end
  object Label2: TLabel
    Left = 238
    Top = 59
    Width = 94
    Height = 15
    Caption = 'Data De Cadastro:'
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
    Width = 161
    Height = 23
    DataField = 'Nome'
    DataSource = DataModule2.dsClientes
    TabOrder = 1
  end
  object edtCPF: TDBEdit
    Left = 24
    Top = 132
    Width = 161
    Height = 23
    DataField = 'CPF'
    DataSource = DataModule2.dsClientes
    TabOrder = 2
  end
  object edtTelefone: TDBEdit
    Left = 24
    Top = 192
    Width = 161
    Height = 23
    DataField = 'Telefone'
    DataSource = DataModule2.dsClientes
    TabOrder = 3
  end
  object edtEmail: TDBEdit
    Left = 235
    Top = 132
    Width = 134
    Height = 23
    DataField = 'Email'
    DataSource = DataModule2.dsClientes
    TabOrder = 4
  end
  object EdtEndereco: TDBEdit
    Left = 24
    Top = 307
    Width = 161
    Height = 23
    DataField = 'Endereco'
    DataSource = DataModule2.dsClientes
    TabOrder = 5
  end
  object edtCidade: TDBEdit
    Left = 24
    Top = 248
    Width = 161
    Height = 23
    DataField = 'Cidade'
    DataSource = DataModule2.dsClientes
    TabOrder = 6
  end
  object Edtnumero: TDBEdit
    Left = 235
    Top = 307
    Width = 146
    Height = 23
    DataField = 'Numero'
    DataSource = DataModule2.dsClientes
    TabOrder = 7
  end
  object btnIncluir: TBitBtn
    Left = 10
    Top = 471
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 8
    OnClick = btnIncluirClick
  end
  object btnAlterar: TBitBtn
    Left = 91
    Top = 471
    Width = 75
    Height = 25
    Caption = '&Alterar'
    DisabledImageName = 'Alterar'
    TabOrder = 9
    OnClick = btnAlterarClick
  end
  object btnExcluir: TBitBtn
    Left = 172
    Top = 471
    Width = 75
    Height = 25
    Caption = '&Excluir'
    DisabledImageName = 'btnExcluir'
    TabOrder = 10
    OnClick = btnExcluirClick
  end
  object btnFechar: TBitBtn
    Left = 253
    Top = 471
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 11
    OnClick = btnFecharClick
  end
  object btnConfirmar: TBitBtn
    Left = 75
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    DisabledImageName = 'btnConfirmar'
    TabOrder = 12
    OnClick = btnConfirmarClick
  end
  object btnDesistir: TBitBtn
    Left = 156
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Desistir'
    DisabledImageName = 'btnDesistir'
    TabOrder = 13
    OnClick = btnDesistirClick
  end
  object edtDataCad: TDBEdit
    Left = 235
    Top = 80
    Width = 134
    Height = 23
    DataField = 'Data_Cadastro'
    DataSource = DataModule2.dsClientes
    TabOrder = 14
  end
  object cbAtivo: TCheckBox
    Left = 388
    Top = 59
    Width = 67
    Height = 17
    Caption = 'Ativo'
    TabOrder = 15
  end
  object RgClassificacao: TRadioGroup
    Left = 478
    Top = 59
    Width = 186
    Height = 105
    Caption = 'Classifica'#231#227'o'
    Items.Strings = (
      'Cliente'
      'Funcion'#225'rio'
      'Terceiro'
      'Prospecto'
      'Representante')
    TabOrder = 16
  end
  object DBGrid1: TDBGrid
    Left = 478
    Top = 192
    Width = 387
    Height = 233
    DataSource = DataModule2.dsClientes
    ReadOnly = True
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Cadastro'
        Visible = True
      end>
  end
end
