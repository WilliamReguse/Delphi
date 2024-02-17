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
    Top = 47
    Width = 939
    Height = 467
    Align = alBottom
    DataSource = DataModule2.dsMovimentacoes
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
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id'
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
      Caption = 'Sair'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
end
