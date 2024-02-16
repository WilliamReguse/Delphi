object DataModule2: TDataModule2
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Sandro\Desktop\Sistema\libmysql.dll'
    Left = 512
    Top = 40
  end
  object FDProduto: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'sistema.produto'
    Left = 368
    Top = 408
    object FDProdutoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object FDProdutoCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
      Required = True
    end
    object FDProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Required = True
      Size = 5
    end
  end
  object DSProduto: TDataSource
    DataSet = FDProduto
    Left = 464
    Top = 416
  end
  object FDEst: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque_produto'
    Left = 568
    Top = 328
    object FDEstCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDEstCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
      Required = True
    end
    object FDEstTAM: TStringField
      FieldName = 'TAM'
      Origin = 'TAM'
      Required = True
      Size = 5
    end
    object FDEstQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object FDEstOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Required = True
      Size = 150
    end
    object FDEstID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDEstNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
    end
    object FDEstFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Required = True
    end
    object FDEstVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
      Required = True
    end
    object FDEstESTOQUEATUAL: TIntegerField
      FieldName = 'ESTOQUEATUAL'
      Origin = 'ESTOQUEATUAL'
      Required = True
    end
  end
  object DSEst: TDataSource
    DataSet = FDEst
    Left = 560
    Top = 392
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM movimentacoes')
    Left = 40
    Top = 176
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 32
    Top = 232
  end
  object sqlValidaEstoque: TFDQuery
    SQL.Strings = (
      'select * from estoque_produto')
    Left = 144
    Top = 184
  end
  object dsValidaEstoque: TDataSource
    DataSet = sqlValidaEstoque
    Left = 144
    Top = 232
  end
  object tbMovProdutos: TFDTable
    Active = True
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.movimentacoes_produtos'
    Left = 192
    Top = 16
    object tbMovProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbMovProdutosidMovimentacao: TIntegerField
      FieldName = 'idMovimentacao'
      Origin = 'idMovimentacao'
    end
    object tbMovProdutosidProduto: TIntegerField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object tbMovProdutosqtd: TIntegerField
      FieldName = 'qtd'
      Origin = 'qtd'
      Required = True
    end
  end
  object tbMovimentacoes: TFDTable
    Active = True
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'sistema.movimentacoes'
    Left = 296
    Top = 16
    object tbMovimentacoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbMovimentacoestipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
    end
    object tbMovimentacoesresponsavel: TStringField
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Required = True
      Size = 30
    end
    object tbMovimentacoesobservacoes: TMemoField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
    object tbMovimentacoeshr_mov: TDateTimeField
      FieldName = 'hr_mov'
      Origin = 'hr_mov'
      Required = True
    end
  end
  object tbProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.produtos'
    Left = 112
    Top = 16
    object tbProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbProdutosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbProdutosfabricante: TStringField
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Required = True
      Size = 30
    end
    object tbProdutosvalidade: TDateField
      FieldName = 'validade'
      Origin = 'validade'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbProdutosestoqueAtual: TIntegerField
      FieldName = 'estoqueAtual'
      Origin = 'estoqueAtual'
    end
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 112
    Top = 80
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = FDConnection1
    CommandText.Strings = (
      
        'UPDATE produtos SET estoqueAtual = estoqueAtual + :pQtd where id' +
        ' = :pId')
    ParamData = <
      item
        Name = 'pId'
        ParamType = ptInput
      end
      item
        Name = 'pQtd'
        ParamType = ptInput
      end>
    Left = 280
    Top = 184
  end
  object sqlDiminuiEstoque: TFDCommand
    Connection = FDConnection1
    CommandText.Strings = (
      
        'UPDATE produtos SET estoqueAtual = estoqueAtual - :pQtd where id' +
        ' = :pId')
    ParamData = <
      item
        Name = 'pId'
        ParamType = ptInput
      end
      item
        Name = 'pQtd'
        ParamType = ptInput
      end>
    Left = 400
    Top = 192
  end
  object dsMovimentacoes: TDataSource
    DataSet = tbMovimentacoes
    Left = 296
    Top = 88
  end
  object dsMovProdutos: TDataSource
    DataSet = tbMovProdutos
    Left = 192
    Top = 96
  end
end
