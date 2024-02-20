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
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM movimentacoes')
    Left = 40
    Top = 176
    ParamData = <
      item
        Name = 'pDtIni'
      end
      item
        Name = 'pDtFim'
      end>
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 32
    Top = 232
  end
  object tbMovProdutos: TFDTable
    Active = True
    AfterPost = tbMovProdutosAfterPost
    BeforeDelete = tbMovProdutosBeforeDelete
    AfterDelete = tbMovProdutosAfterDelete
    IndexName = 'idMovimentacao'
    MasterSource = dsMovimentacoes
    MasterFields = 'id'
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
    object tbMovProdutosDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idProduto'
      Size = 30
      Lookup = True
    end
  end
  object tbMovimentacoes: TFDTable
    Active = True
    BeforeDelete = tbMovimentacoesBeforeDelete
    AfterScroll = tbMovimentacoesAfterScroll
    IndexFieldNames = 'id'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.movimentacoes'
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
    object tbMovimentacoesdataHora: TDateTimeField
      FieldName = 'dataHora'
      Required = True
    end
  end
  object tbProdutos: TFDTable
    Active = True
    BeforeDelete = tbProdutosBeforeDelete
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
    Left = 376
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
    Left = 496
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
  object sqlConsultaMovimentacoes: TFDQuery
    Active = True
    IndexFieldNames = 'idmovimentacao'
    MasterSource = dsSqlMovimentacoes
    MasterFields = 'id'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from movimentacoes_produtos')
    Left = 176
    Top = 184
    object sqlConsultaMovimentacoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object sqlConsultaMovimentacoesidmovimentacao: TIntegerField
      FieldName = 'idmovimentacao'
      Origin = 'idmovimentacao'
      Required = True
    end
    object sqlConsultaMovimentacoesidProduto: TIntegerField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object sqlConsultaMovimentacoesqtd: TIntegerField
      FieldName = 'qtd'
      Origin = 'qtd'
      Required = True
    end
    object sqlConsultaMovimentacoesDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idProduto'
      Size = 30
      Lookup = True
    end
  end
  object dsSqlConsultaMovimentacoes: TDataSource
    DataSet = sqlConsultaMovimentacoes
    Left = 176
    Top = 256
  end
end
