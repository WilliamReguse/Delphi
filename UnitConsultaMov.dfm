object ConsultaMov: TConsultaMov
  Left = 0
  Top = 0
  Caption = 'ConsultaMov'
  ClientHeight = 512
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitTop = 1
    ExplicitWidth = 624
    object Label1: TLabel
      Left = 15
      Top = 6
      Width = 170
      Height = 32
      Caption = 'Movimenta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 932
    Height = 80
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 624
    object Label2: TLabel
      Left = 215
      Top = 6
      Width = 50
      Height = 15
      Caption = 'Data Fim:'
    end
    object Label3: TLabel
      Left = 15
      Top = 6
      Width = 59
      Height = 15
      Caption = 'Data In'#237'cio:'
    end
    object Button1: TButton
      Left = 400
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Consultar'
      DisabledImageName = 'BtnMovConsultar'
      TabOrder = 0
    end
  end
  object DtMovIni: TMaskEdit
    Left = 15
    Top = 68
    Width = 116
    Height = 23
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object DtMovFim: TMaskEdit
    Left = 215
    Top = 68
    Width = 116
    Height = 23
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object DBGrid1: TDBGrid
    Left = 15
    Top = 152
    Width = 415
    Height = 297
    DataSource = DataModule2.dsSqlMovimentacoes
    ReadOnly = True
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
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'Responsavel'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 472
    Top = 152
    Width = 265
    Height = 297
    DataSource = DataModule2.dsSqlConsultaMovimentacoes
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Title.Caption = 'Quantidade'
        Visible = True
      end>
  end
end
