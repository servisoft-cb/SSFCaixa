object DMCupom: TDMCupom
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 434
  Top = 183
  Height = 593
  Width = 472
  object sdsCupomFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.*, P.NOME NOME_PESSOA, E.FANTASIA, E.IMPRIME_CUPOM'#13#10'FR' +
      'OM CUPOMFISCAL CF'#13#10'LEFT JOIN PESSOA_DIGITAL_ORA P ON (CF.CODPESS' +
      'OA = P.PESSOA AND CF.CODEMPRESA = P.EMPRESA)'#13#10'INNER JOIN EMPRESA' +
      ' E ON (CF.FILIAL = E.ID)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 24
    object sdsCupomFiscalID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object sdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsCupomFiscalCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object sdsCupomFiscalTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object sdsCupomFiscalCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object sdsCupomFiscalPERCVENDEDOR: TFloatField
      FieldName = 'PERCVENDEDOR'
    end
    object sdsCupomFiscalBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object sdsCupomFiscalVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object sdsCupomFiscalVLRPRODUTOS: TFloatField
      FieldName = 'VLRPRODUTOS'
    end
    object sdsCupomFiscalVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsCupomFiscalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalVLRRECEBIDO: TFloatField
      FieldName = 'VLRRECEBIDO'
    end
    object sdsCupomFiscalVLRTROCO: TFloatField
      FieldName = 'VLRTROCO'
    end
    object sdsCupomFiscalNUMMOVFINANCEIRO: TIntegerField
      FieldName = 'NUMMOVFINANCEIRO'
    end
    object sdsCupomFiscalCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object sdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCupomFiscalCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object sdsCupomFiscalNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object sdsCupomFiscalAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object sdsCupomFiscalNUMLANCAMENTO_EBS: TIntegerField
      FieldName = 'NUMLANCAMENTO_EBS'
    end
    object sdsCupomFiscalCONFIRMACAO_EBS: TStringField
      FieldName = 'CONFIRMACAO_EBS'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalAPEL_VENDEDOR_EBS: TStringField
      FieldName = 'APEL_VENDEDOR_EBS'
      Size = 15
    end
    object sdsCupomFiscalCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Size = 4
    end
    object sdsCupomFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object sdsCupomFiscalFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 30
    end
    object sdsCupomFiscalIMPRIME_CUPOM: TStringField
      FieldName = 'IMPRIME_CUPOM'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalCODUNIDADE: TStringField
      FieldName = 'CODUNIDADE'
      Size = 4
    end
  end
  object dspCupomFiscal: TDataSetProvider
    DataSet = sdsCupomFiscal
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspCupomFiscalUpdateError
    Left = 152
    Top = 24
  end
  object cdsCupomFiscal: TClientDataSet
    Aggregates = <>
    PacketRecords = 40
    Params = <>
    ProviderName = 'dspCupomFiscal'
    BeforePost = cdsCupomFiscalBeforePost
    Left = 208
    Top = 24
    object cdsCupomFiscalID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsCupomFiscalCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object cdsCupomFiscalTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object cdsCupomFiscalCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsCupomFiscalPERCVENDEDOR: TFloatField
      FieldName = 'PERCVENDEDOR'
    end
    object cdsCupomFiscalBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object cdsCupomFiscalVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRPRODUTOS: TFloatField
      FieldName = 'VLRPRODUTOS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalVLRRECEBIDO: TFloatField
      FieldName = 'VLRRECEBIDO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRTROCO: TFloatField
      FieldName = 'VLRTROCO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalNUMMOVFINANCEIRO: TIntegerField
      FieldName = 'NUMMOVFINANCEIRO'
    end
    object cdsCupomFiscalCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object cdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomFiscalCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsCupomFiscalNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object cdsCupomFiscalsdsCupomFicalParc: TDataSetField
      FieldName = 'sdsCupomFicalParc'
    end
    object cdsCupomFiscalsdsCupomFiscalIt: TDataSetField
      FieldName = 'sdsCupomFiscalIt'
    end
    object cdsCupomFiscalAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object cdsCupomFiscalNUMLANCAMENTO_EBS: TIntegerField
      FieldName = 'NUMLANCAMENTO_EBS'
    end
    object cdsCupomFiscalCONFIRMACAO_EBS: TStringField
      FieldName = 'CONFIRMACAO_EBS'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalAPEL_VENDEDOR_EBS: TStringField
      FieldName = 'APEL_VENDEDOR_EBS'
      Size = 15
    end
    object cdsCupomFiscalCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Size = 4
    end
    object cdsCupomFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsCupomFiscalFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 30
    end
    object cdsCupomFiscalIMPRIME_CUPOM: TStringField
      FieldName = 'IMPRIME_CUPOM'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalCODUNIDADE: TStringField
      FieldName = 'CODUNIDADE'
      Size = 4
    end
  end
  object dsCupomFiscal: TDataSource
    DataSet = cdsCupomFiscal
    Left = 264
    Top = 24
  end
  object dsCupomFiscal_Mestre: TDataSource
    DataSet = sdsCupomFiscal
    Left = 56
    Top = 88
  end
  object sdsCupomFiscalIt: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT IT.*'#13#10'FROM CUPOMFISCALIT IT'#13#10#13#10'WHERE IT.ID_CUPOM = :ID_CU' +
      'POM'
    DataSource = dsCupomFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CUPOM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 168
    object sdsCupomFiscalItID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscalItITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscalItCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object sdsCupomFiscalItQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsCupomFiscalItALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object sdsCupomFiscalItVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
    end
    object sdsCupomFiscalItPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object sdsCupomFiscalItVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsCupomFiscalItBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object sdsCupomFiscalItVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object sdsCupomFiscalItVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsCupomFiscalItCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object sdsCupomFiscalItNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object sdsCupomFiscalItUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsCupomFiscalItCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalItSITTRIB: TStringField
      FieldName = 'SITTRIB'
      Size = 5
    end
    object sdsCupomFiscalItCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
    end
    object sdsCupomFiscalItNUMSEQ_EBS: TIntegerField
      FieldName = 'NUMSEQ_EBS'
    end
    object sdsCupomFiscalItGRAVOU_ESTLOCAL_EBS: TStringField
      FieldName = 'GRAVOU_ESTLOCAL_EBS'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalItCONFIRMACAO_EBS: TStringField
      FieldName = 'CONFIRMACAO_EBS'
      Size = 5
    end
  end
  object cdsCupomFiscalIt: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCupomFiscalsdsCupomFiscalIt
    IndexFieldNames = 'ID_CUPOM;ITEM'
    Params = <>
    Left = 152
    Top = 168
    object cdsCupomFiscalItID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscalItITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscalItCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
    end
    object cdsCupomFiscalItCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object cdsCupomFiscalItQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsCupomFiscalItALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object cdsCupomFiscalItVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalItPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object cdsCupomFiscalItVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalItBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object cdsCupomFiscalItVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalItVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalItCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object cdsCupomFiscalItNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object cdsCupomFiscalItUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsCupomFiscalItCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalItSITTRIB: TStringField
      FieldName = 'SITTRIB'
      Size = 5
    end
    object cdsCupomFiscalItNUMSEQ_EBS: TIntegerField
      FieldName = 'NUMSEQ_EBS'
    end
    object cdsCupomFiscalItGRAVOU_ESTLOCAL_EBS: TStringField
      FieldName = 'GRAVOU_ESTLOCAL_EBS'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalItCONFIRMACAO_EBS: TStringField
      FieldName = 'CONFIRMACAO_EBS'
      Size = 5
    end
    object cdsCupomFiscalItlkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'CODPRODUTO'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
    object cdsCupomFiscalItlkNomeProduto2: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto2'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'LINHA_2'
      KeyFields = 'CODPRODUTO'
      Size = 40
      Lookup = True
    end
  end
  object dsCupomFiscalIt: TDataSource
    DataSet = cdsCupomFiscalIt
    Left = 200
    Top = 168
  end
  object sdsCupomFicalParc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CUPOMFISCALPARC'#13#10'WHERE ID_CUPOM = :ID_CUPOM'
    DataSource = dsCupomFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CUPOM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 248
    object sdsCupomFicalParcID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFicalParcPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFicalParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsCupomFicalParcVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object cdsCupomFiscalParc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCupomFiscalsdsCupomFicalParc
    IndexFieldNames = 'ID_CUPOM;PARCELA'
    Params = <>
    Left = 152
    Top = 248
    object cdsCupomFiscalParcID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscalParcPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscalParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsCupomFiscalParcVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object dsCupomFiscalParc: TDataSource
    DataSet = cdsCupomFiscalParc
    Left = 200
    Top = 248
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 320
    object sdsEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object sdsEmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsEmpresaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 18
    end
    object sdsEmpresaPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 1
    end
    object sdsEmpresaDDD: TIntegerField
      FieldName = 'DDD'
    end
    object sdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sdsEmpresaENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 200
    end
    object sdsEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsEmpresaIMPRIME_CUPOM: TStringField
      FieldName = 'IMPRIME_CUPOM'
      FixedChar = True
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 144
    Top = 320
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 192
    Top = 320
    object cdsEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsEmpresaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 18
    end
    object cdsEmpresaPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 1
    end
    object cdsEmpresaDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object cdsEmpresaENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 200
    end
    object cdsEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsEmpresaIMPRIME_CUPOM: TStringField
      FieldName = 'IMPRIME_CUPOM'
      FixedChar = True
      Size = 1
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 240
    Top = 320
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PRODUTO WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 368
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 16
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object sdsProdutoLINHA_2: TStringField
      FieldName = 'LINHA_2'
      Size = 60
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 144
    Top = 368
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 192
    Top = 368
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
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.00'
    end
    object cdsProdutoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
      DisplayFormat = '0.00'
    end
    object cdsProdutoLINHA_2: TStringField
      FieldName = 'LINHA_2'
      Size = 60
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosdsProdutoPreco: TDataSetField
      FieldName = 'sdsProdutoPreco'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 240
    Top = 368
  end
  object dsmProduto: TDataSource
    DataSet = sdsProduto
    Left = 280
    Top = 368
  end
  object sdsProdutoPreco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PP.*'#13#10'FROM PRODUTO_PRECO PP'#13#10'WHERE PP.PRODUTO_ID = :ID'
    DataSource = dsmProduto
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 416
    object sdsProdutoPrecoPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Required = True
    end
    object sdsProdutoPrecoEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      Required = True
    end
    object sdsProdutoPrecoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object sdsProdutoPrecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object cdsProdutoPreco: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsProdutosdsProdutoPreco
    Params = <>
    Left = 152
    Top = 416
    object cdsProdutoPrecoPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Required = True
    end
    object cdsProdutoPrecoEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      Required = True
    end
    object cdsProdutoPrecoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object cdsProdutoPrecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.00'
    end
  end
  object dsProdutoPreco: TDataSource
    DataSet = cdsProdutoPreco
    Left = 192
    Top = 416
  end
end
