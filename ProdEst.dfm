object Estoque: TEstoque
  Left = 0
  Top = 0
  Caption = 'TfmEstoque'
  ClientHeight = 514
  ClientWidth = 939
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 939
    Height = 473
    Align = alClient
    DataSource = DataModule2.dsProdutos
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fabricante'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'validade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoqueAtual'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 939
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button2: TButton
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
end
