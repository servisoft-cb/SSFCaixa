object DMParametros: TDMParametros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 195
  Height = 530
  Width = 510
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 48
    object sdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsParametrosTIPOCONFIRMAVENDA: TStringField
      FieldName = 'TIPOCONFIRMAVENDA'
      FixedChar = True
      Size = 2
    end
    object sdsParametrosFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 15
    end
    object sdsParametrosCONSUMIDOR: TStringField
      FieldName = 'CONSUMIDOR'
      Size = 15
    end
    object sdsParametrosARQUIVO_DIGITAIS: TStringField
      FieldName = 'ARQUIVO_DIGITAIS'
      Size = 250
    end
    object sdsParametrosENDERECO_FOTOS: TStringField
      FieldName = 'ENDERECO_FOTOS'
      Size = 250
    end
    object sdsParametrosSEPARADORDAFOTO: TStringField
      FieldName = 'SEPARADORDAFOTO'
      Size = 1
    end
    object sdsParametrosEXTENSAOFOTO: TStringField
      FieldName = 'EXTENSAOFOTO'
      Size = 5
    end
    object sdsParametrosUSARSTRETCH: TStringField
      FieldName = 'USARSTRETCH'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosARQUIVO_EXPORTACAO: TStringField
      FieldName = 'ARQUIVO_EXPORTACAO'
      Size = 250
    end
    object sdsParametrosESTOQUE_EBS: TStringField
      FieldName = 'ESTOQUE_EBS'
      FixedChar = True
      Size = 1
    end
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 184
    Top = 48
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    Left = 272
    Top = 48
    object cdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametrosTIPOCONFIRMAVENDA: TStringField
      FieldName = 'TIPOCONFIRMAVENDA'
      FixedChar = True
      Size = 2
    end
    object cdsParametrosFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 15
    end
    object cdsParametrosCONSUMIDOR: TStringField
      FieldName = 'CONSUMIDOR'
      Size = 15
    end
    object cdsParametrosARQUIVO_DIGITAIS: TStringField
      FieldName = 'ARQUIVO_DIGITAIS'
      Size = 250
    end
    object cdsParametrosENDERECO_FOTOS: TStringField
      FieldName = 'ENDERECO_FOTOS'
      Size = 250
    end
    object cdsParametrosSEPARADORDAFOTO: TStringField
      FieldName = 'SEPARADORDAFOTO'
      Size = 1
    end
    object cdsParametrosEXTENSAOFOTO: TStringField
      FieldName = 'EXTENSAOFOTO'
      Size = 5
    end
    object cdsParametrosUSARSTRETCH: TStringField
      FieldName = 'USARSTRETCH'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosARQUIVO_EXPORTACAO: TStringField
      FieldName = 'ARQUIVO_EXPORTACAO'
      Size = 250
    end
    object cdsParametrosESTOQUE_EBS: TStringField
      FieldName = 'ESTOQUE_EBS'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros: TDataSource
    DataSet = cdsParametros
    Left = 360
    Top = 48
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM EMPRESA WHERE INATIVA = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 104
    object sdsEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 184
    Top = 104
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 272
    Top = 104
    object cdsEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 360
    Top = 104
  end
  object sdsCupomFiscal_Cons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(VLRTOTAL) SOMA'#13#10'FROM CUPOMFISCAL CF'#13#10'WHERE CF.CODPESS' +
      'OA = :P1'#13#10'AND CF.CODEMPRESA = :E1'#13#10'AND CF.CODUNIDADE = :U1'#13#10'AND ' +
      'CF.DTEMISSAO > :D1'#13#10'AND CANCELADO <> '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'P1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'E1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'U1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'D1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 184
    object sdsCupomFiscal_ConsSOMA: TFloatField
      FieldName = 'SOMA'
    end
  end
  object dspCupomFiscal_Cons: TDataSetProvider
    DataSet = sdsCupomFiscal_Cons
    Left = 128
    Top = 184
  end
  object cdsCupomFiscal_Cons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomFiscal_Cons'
    Left = 160
    Top = 184
    object cdsCupomFiscal_ConsSOMA: TFloatField
      FieldName = 'SOMA'
    end
  end
  object dsCupomFiscal_Cons: TDataSource
    DataSet = cdsCupomFiscal_Cons
    Left = 192
    Top = 184
  end
end
