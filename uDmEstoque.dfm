object DmEstoque: TDmEstoque
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 402
  Top = 124
  Height = 384
  Width = 699
  object sdsEstoqueDoc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ESTOQUE_DOC'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 16
    object sdsEstoqueDocID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEstoqueDocDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsEstoqueDocPDV: TIntegerField
      FieldName = 'PDV'
    end
    object sdsEstoqueDocUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object sdsEstoqueDocES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object sdsEstoqueDocJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 100
    end
    object sdsEstoqueDocTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsEstoqueDocEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
    end
  end
  object dspEstoqueDoc: TDataSetProvider
    DataSet = sdsEstoqueDoc
    Options = [poCascadeDeletes]
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 16
  end
  object cdsEstoqueDoc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueDoc'
    AfterInsert = cdsEstoqueDocAfterInsert
    Left = 120
    Top = 16
    object cdsEstoqueDocID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoqueDocDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsEstoqueDocPDV: TIntegerField
      FieldName = 'PDV'
    end
    object cdsEstoqueDocUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsEstoqueDocES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoqueDocJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 100
    end
    object cdsEstoqueDocTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsEstoqueDocEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
    end
    object cdsEstoqueDocsdsEstoqueDocIt: TDataSetField
      FieldName = 'sdsEstoqueDocIt'
    end
  end
  object dsEstoqueDoc: TDataSource
    DataSet = cdsEstoqueDoc
    Left = 160
    Top = 16
  end
  object sdsEstoqueDocCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ESTOQUE_DOC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 16
  end
  object dspEstoqueDocCons: TDataSetProvider
    DataSet = sdsEstoqueDocCons
    Left = 368
    Top = 16
  end
  object cdsEstoqueDocCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueDocCons'
    Left = 408
    Top = 16
    object cdsEstoqueDocConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoqueDocConsDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsEstoqueDocConsPDV: TIntegerField
      FieldName = 'PDV'
    end
    object cdsEstoqueDocConsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsEstoqueDocConsES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoqueDocConsJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 100
    end
    object cdsEstoqueDocConsEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
    end
    object cdsEstoqueDocConsTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsEstoqueDocCons: TDataSource
    DataSet = cdsEstoqueDocCons
    Left = 448
    Top = 16
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 120
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 80
    Top = 120
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 120
    Top = 120
    object cdsEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 160
    Top = 120
  end
  object dsmEstoqueDoc: TDataSource
    DataSet = sdsEstoqueDoc
    Left = 200
    Top = 16
  end
  object sdsEstoqueDocIt: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT EDI.* '#13#10'FROM ESTOQUE_DOC_IT EDI'#13#10'WHERE EDI.ID = :ID'
    DataSource = dsmEstoqueDoc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 64
    object sdsEstoqueDocItID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEstoqueDocItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsEstoqueDocItPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
    end
    object sdsEstoqueDocItQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 2
    end
    object sdsEstoqueDocItES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object sdsEstoqueDocItVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sdsEstoqueDocItUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object cdsEstoqueDocIt: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEstoqueDocsdsEstoqueDocIt
    Params = <>
    AfterInsert = cdsEstoqueDocItAfterInsert
    Left = 120
    Top = 64
    object cdsEstoqueDocItID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoqueDocItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsEstoqueDocItPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
    end
    object cdsEstoqueDocItQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 2
    end
    object cdsEstoqueDocItES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoqueDocItVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsEstoqueDocItUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoqueDocItlkProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'PRODUTO_ID'
      Size = 30
      Lookup = True
    end
  end
  object dsEstoqueDocIt: TDataSource
    DataSet = cdsEstoqueDocIt
    Left = 160
    Top = 64
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 168
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 80
    Top = 168
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 120
    Top = 168
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 16
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 160
    Top = 168
  end
  object sdsEstoqueAtual: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EA.*, P.NOME'#13#10'FROM ESTOQUE_ATUAL EA'#13#10'INNER JOIN PRODUTO P' +
      ' ON (EA.PRODUTO_ID = P.ID)'#13#10'WHERE EMPRESA_ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 272
  end
  object dspEstoqueAtual: TDataSetProvider
    DataSet = sdsEstoqueAtual
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 272
  end
  object cdsEstoqueAtual: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueAtual'
    Left = 120
    Top = 272
    object cdsEstoqueAtualEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoqueAtualPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoqueAtualQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 2
    end
    object cdsEstoqueAtualNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
  end
  object dsEstoqueAtual: TDataSource
    DataSet = cdsEstoqueAtual
    Left = 160
    Top = 272
  end
end
