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
    ExplicitLeft = 168
    ExplicitTop = 96
    ExplicitWidth = 185
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
  object DBEdit1: TDBEdit
    Left = 24
    Top = 80
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 149
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 221
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 201
    Top = 221
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 368
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 296
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 201
    Top = 368
    Width = 121
    Height = 23
    TabOrder = 7
  end
  object Incluir: TBitBtn
    Left = 24
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 8
  end
  object Alterar: TBitBtn
    Left = 105
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 9
  end
  object Excluir: TBitBtn
    Left = 186
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 10
  end
  object Fechar: TBitBtn
    Left = 267
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 11
    OnClick = FecharClick
  end
  object Confirmar: TBitBtn
    Left = 89
    Top = 441
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 12
  end
  object Desistir: TBitBtn
    Left = 170
    Top = 441
    Width = 75
    Height = 25
    Caption = 'Desistir'
    TabOrder = 13
  end
end
