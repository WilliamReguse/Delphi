object Pedido: TPedido
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 495
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Windows'
  TextHeight = 15
  object Label2: TLabel
    Left = 8
    Top = 47
    Width = 47
    Height = 15
    Caption = 'N'#250'mero:'
  end
  object Label3: TLabel
    Left = 8
    Top = 99
    Width = 40
    Height = 15
    Caption = 'Cliente:'
  end
  object Label4: TLabel
    Left = 208
    Top = 47
    Width = 77
    Height = 15
    Caption = 'Data Cadastro:'
  end
  object Label5: TLabel
    Left = 208
    Top = 99
    Width = 63
    Height = 15
    Caption = 'Data Fatura:'
  end
  object Label6: TLabel
    Left = 208
    Top = 155
    Width = 70
    Height = 15
    Caption = 'Data Entrega:'
  end
  object Label7: TLabel
    Left = 8
    Top = 155
    Width = 69
    Height = 15
    Caption = 'Valor Pedido:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 917
    Height = 41
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
  end
  object edtNumero: TDBEdit
    Left = 8
    Top = 69
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtCliente: TDBEdit
    Left = 8
    Top = 120
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object edtDataCad: TDBEdit
    Left = 208
    Top = 69
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object edtFatura: TDBEdit
    Left = 208
    Top = 120
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object edtEntrega: TDBEdit
    Left = 208
    Top = 176
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object GridItens: TDBGrid
    Left = 0
    Top = 238
    Width = 921
    Height = 219
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtValor: TDBEdit
    Left = 8
    Top = 176
    Width = 121
    Height = 23
    TabOrder = 7
  end
  object Panel3: TPanel
    Left = 0
    Top = 216
    Width = 925
    Height = 18
    BevelOuter = bvNone
    TabOrder = 8
    object Label8: TLabel
      Left = 8
      Top = 3
      Width = 68
      Height = 15
      Caption = 'Itens Pedido:'
    end
  end
end
