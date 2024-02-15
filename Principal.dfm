object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TfmPrincipal'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 312
    Top = 248
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      OnClick = Cadastro1Click
    end
    object Movimentacao1: TMenuItem
      Caption = 'Movimentacao'
      object Entrada1: TMenuItem
        Caption = 'Entrada/Saida Produto'
        OnClick = Entrada1Click
      end
    end
    object ConsultaEst1: TMenuItem
      Caption = 'Consulta Est.'
      OnClick = ConsultaEst1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
