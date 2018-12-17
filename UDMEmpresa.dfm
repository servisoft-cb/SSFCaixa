object DMEmpresa: TDMEmpresa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 195
  Height = 204
  Width = 467
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 24
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
    object sdsEmpresaINATIVA: TStringField
      FieldName = 'INATIVA'
      FixedChar = True
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 128
    Top = 24
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    BeforePost = cdsEmpresaBeforePost
    Left = 200
    Top = 24
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
    object cdsEmpresaINATIVA: TStringField
      FieldName = 'INATIVA'
      FixedChar = True
      Size = 1
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 288
    Top = 24
  end
end
