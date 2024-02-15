object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 80
    Top = 32
  end
  object FDProduto: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'sistema.produto'
    Left = 208
    Top = 48
  end
  object DSProduto: TDataSource
    DataSet = FDProduto
    Left = 216
    Top = 120
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Sandro\Desktop\Sistema\libmysql.dll'
    Left = 160
    Top = 376
  end
end
