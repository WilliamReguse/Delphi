object DataModule2: TDataModule2
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 136
    Top = 40
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Sandro\Desktop\Sistema\libmysql.dll'
    Left = 248
    Top = 384
  end
  object FDProduto: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'sistema.produto'
    Left = 248
    Top = 48
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
    Left = 248
    Top = 120
  end
  object FDEst: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque_produto'
    Left = 360
    Top = 48
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
    Left = 360
    Top = 128
  end
  object CONSULTA_ESTOQUE: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT EST.CODIGO,PROD.DESCRICAO,EST.COR,EST.TAM,EST.QUANTIDADE '
      'FROM ESTOQUE_PRODUTO  EST'
      'INNER JOIN PRODUTO PROD ON EST.CODIGO = PROD.CODIGO')
    Left = 120
    Top = 128
  end
  object sqlAumentaEstoque: TFDCommand
    CommandText.Strings = (
      
        'UPDATE estoque_produto SET estoqueAtual = estoqueAtual + :pQtd w' +
        'here id = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        ParamType = ptInput
      end
      item
        Name = 'pId'
        ParamType = ptInput
      end>
    Left = 496
    Top = 40
  end
  object sqlDiminuiEstoque: TFDCommand
    Connection = FDConnection1
    CommandText.Strings = (
      
        'UPDATE estoque_produto SET estoqueAtual = estoqueAtual - :pQtd w' +
        'here id = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        ParamType = ptInput
      end
      item
        Name = 'pId'
        ParamType = ptInput
      end>
    Left = 496
    Top = 112
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM movimentacoes')
    Left = 384
    Top = 248
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 504
    Top = 248
  end
  object sqlValidaEstoque: TFDQuery
    SQL.Strings = (
      'select * from estoque_produto')
    Left = 384
    Top = 320
  end
  object dsValidaEstoque: TDataSource
    DataSet = sqlValidaEstoque
    Left = 496
    Top = 320
  end
  object tbMovProdutos: TFDTable
    IndexName = 'idMovimentacao'
    MasterFields = 'id'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.movimentacoes_produto'
    Left = 104
    Top = 200
    object tbMovProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbMovProdutosidMovimentacao: TIntegerField
      FieldName = 'idMovimentacao'
      Origin = 'idMovimentacao'
      Required = True
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
    object tbMovProdutosnomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeProduto'
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
  end
  object tbMovimentacoes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'sistema.movimentacoes'
    Left = 104
    Top = 272
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
  end
  object INSERT_ESTOQUE: TADOQuery
    DataSource = DSEst
    Parameters = <>
    Left = 464
    Top = 400
  end
end
