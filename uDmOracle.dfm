object dmOracle: TdmOracle
  OldCreateOrder = False
  Left = 526
  Top = 120
  Height = 164
  Width = 378
  object ConexaoOra: TSQLConnection
    ConnectionName = 'OracleConnection'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbexpora.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=BEE'
      'User_Name=BEECONSULTA'
      'Password=bee123'
      'RowsetSize=20'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Oracle TransIsolation=ReadCommited'
      'OS Authentication=False'
      'Multiple Transaction=False'
      'Trim Char=False')
    VendorLib = 'oci.dll'
    Connected = True
    Left = 56
    Top = 16
  end
  object sdsFuncionarioOra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM'#13#10'BEEPEOPLE.VW_PESSOAS_ATIVOS_BAR'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoOra
    Left = 136
    Top = 16
    object sdsFuncionarioOraEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 4
    end
    object sdsFuncionarioOraUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 4
    end
    object sdsFuncionarioOraPESSOA: TBCDField
      FieldName = 'PESSOA'
      Required = True
      Precision = 10
      Size = 0
    end
    object sdsFuncionarioOraFOTO: TStringField
      FieldName = 'FOTO'
      Size = 12
    end
    object sdsFuncionarioOraNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object sdsFuncionarioOraLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Required = True
      Precision = 32
      Size = 8
    end
  end
  object pdsFuncionarioOra: TDataSetProvider
    DataSet = sdsFuncionarioOra
    Left = 168
    Top = 16
  end
  object cdsFuncionarioOra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdsFuncionarioOra'
    Left = 200
    Top = 16
    object cdsFuncionarioOraEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 4
    end
    object cdsFuncionarioOraUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 4
    end
    object cdsFuncionarioOraPESSOA: TBCDField
      FieldName = 'PESSOA'
      Required = True
      Precision = 10
      Size = 0
    end
    object cdsFuncionarioOraFOTO: TStringField
      FieldName = 'FOTO'
      Size = 12
    end
    object cdsFuncionarioOraNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object cdsFuncionarioOraLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Required = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 8
    end
  end
  object dsFuncionarioOra: TDataSource
    DataSet = cdsFuncionarioOra
    Left = 232
    Top = 16
  end
end
