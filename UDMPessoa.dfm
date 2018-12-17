object DMPessoa: TDMPessoa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 195
  Height = 331
  Width = 510
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT P.*, P.ID AS ID_PESSOA'#13#10'FROM PESSOA P'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 48
    object sdsPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPessoaAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaDEDO_D1: TBlobField
      FieldName = 'DEDO_D1'
      Size = 1
    end
    object sdsPessoaDEDO_D2: TBlobField
      FieldName = 'DEDO_D2'
      Size = 1
    end
    object sdsPessoaDEDO_E1: TBlobField
      FieldName = 'DEDO_E1'
      Size = 1
    end
    object sdsPessoaDEDO_E2: TBlobField
      FieldName = 'DEDO_E2'
      Size = 1
    end
    object sdsPessoaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPessoaENDNUM: TStringField
      FieldName = 'ENDNUM'
      Size = 15
    end
    object sdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object sdsPessoaFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object sdsPessoaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaDTADMISSAO: TDateField
      FieldName = 'DTADMISSAO'
    end
    object sdsPessoaDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
    end
    object sdsPessoaVLRLIMITECREDITO: TFloatField
      FieldName = 'VLRLIMITECREDITO'
    end
    object sdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsPessoaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsPessoaCANCELARCUPOM: TStringField
      FieldName = 'CANCELARCUPOM'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCONSULTARCUPOM: TStringField
      FieldName = 'CONSULTARCUPOM'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaACESSARCUPOM: TStringField
      FieldName = 'ACESSARCUPOM'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = []
      Required = True
    end
    object sdsPessoaENDERECO_FOTO: TStringField
      FieldName = 'ENDERECO_FOTO'
      Size = 250
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 200
    Top = 48
  end
  object dsPessoa: TDataSource
    Left = 360
    Top = 48
  end
  object adsEmpresas: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from empresas'
    Parameters = <>
    Left = 120
    Top = 152
    object adsEmpresasApel: TWideStringField
      FieldName = 'Apel'
      Size = 15
    end
    object adsEmpresasRazo: TWideStringField
      FieldName = 'Raz'#227'o'
      Size = 90
    end
    object adsEmpresasTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 15
    end
    object adsEmpresasCadastro: TDateTimeField
      FieldName = 'Cadastro'
    end
    object adsEmpresasPessoa: TWideStringField
      FieldName = 'Pessoa'
      Size = 8
    end
    object adsEmpresasCNPJCPF: TWideStringField
      FieldName = 'CNPJ/CPF'
      Size = 18
    end
    object adsEmpresasIEstRG: TWideStringField
      FieldName = 'IEst/RG'
      Size = 18
    end
    object adsEmpresasCCM: TWideStringField
      FieldName = 'CCM'
    end
    object adsEmpresasRamo: TIntegerField
      FieldName = 'Ramo'
    end
    object adsEmpresasEndereo: TWideStringField
      FieldName = 'Endere'#231'o'
      Size = 70
    end
    object adsEmpresasBairro: TWideStringField
      FieldName = 'Bairro'
    end
    object adsEmpresasCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object adsEmpresasCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object adsEmpresasEstado: TWideStringField
      FieldName = 'Estado'
      Size = 2
    end
    object adsEmpresasSuframa: TWideStringField
      FieldName = 'Suframa'
      Size = 15
    end
    object adsEmpresasRegio: TWideStringField
      FieldName = 'Regi'#227'o'
      Size = 4
    end
    object adsEmpresasPas: TWideStringField
      FieldName = 'Pa'#237's'
      Size = 3
    end
    object adsEmpresasFone1: TWideStringField
      FieldName = 'Fone1'
      Size = 15
    end
    object adsEmpresasRamal1: TWideStringField
      FieldName = 'Ramal1'
      Size = 10
    end
    object adsEmpresasFone2: TWideStringField
      FieldName = 'Fone2'
      Size = 15
    end
    object adsEmpresasRamal2: TWideStringField
      FieldName = 'Ramal2'
      Size = 10
    end
    object adsEmpresasFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object adsEmpresasContato: TWideStringField
      FieldName = 'Contato'
      Size = 50
    end
    object adsEmpresasDpto: TWideStringField
      FieldName = 'Dpto'
      Size = 40
    end
    object adsEmpresasVendedor: TIntegerField
      FieldName = 'Vendedor'
    end
    object adsEmpresasCondPag: TSmallintField
      FieldName = 'CondPag'
    end
    object adsEmpresasCrdito: TBCDField
      FieldName = 'Cr'#233'dito'
      Precision = 19
    end
    object adsEmpresasTransp: TIntegerField
      FieldName = 'Transp'
    end
    object adsEmpresasemail: TWideStringField
      FieldName = 'e-mail'
      Size = 50
    end
    object adsEmpresasSite: TWideStringField
      FieldName = 'Site'
      Size = 80
    end
    object adsEmpresasBloqueado: TWideStringField
      FieldName = 'Bloqueado'
      Size = 80
    end
    object adsEmpresasObsFinanceira: TMemoField
      FieldName = 'Obs Financeira'
      BlobType = ftMemo
    end
    object adsEmpresasObsGerais: TMemoField
      FieldName = 'Obs Gerais'
      BlobType = ftMemo
    end
    object adsEmpresasObservaesGlobais: TMemoField
      FieldName = 'Observa'#231#245'es Globais'
      BlobType = ftMemo
    end
    object adsEmpresasHora: TWideStringField
      FieldName = 'Hora'
      Size = 5
    end
    object adsEmpresasHora2: TWideStringField
      FieldName = 'Hora2'
      Size = 5
    end
    object adsEmpresasTabeladePreos: TIntegerField
      FieldName = 'Tabela de Pre'#231'os'
    end
    object adsEmpresasVendedor2: TIntegerField
      FieldName = 'Vendedor2'
    end
    object adsEmpresasVendedor3: TIntegerField
      FieldName = 'Vendedor3'
    end
    object adsEmpresasltimaAtualizao: TDateTimeField
      FieldName = #218'ltima Atualiza'#231#227'o'
    end
    object adsEmpresasltimaAtualizaoHora: TDateTimeField
      FieldName = #218'ltima Atualiza'#231#227'o Hora'
    end
    object adsEmpresasProcedncia: TSmallintField
      FieldName = 'Proced'#234'ncia'
    end
    object adsEmpresasClienteBloqueado: TBooleanField
      FieldName = 'Cliente Bloqueado'
    end
    object adsEmpresasTipodeCompra: TWideStringField
      FieldName = 'Tipo de Compra'
      Size = 8
    end
    object adsEmpresasConta: TIntegerField
      FieldName = 'Conta'
    end
    object adsEmpresasBanco: TIntegerField
      FieldName = 'Banco'
    end
    object adsEmpresasContaContbilCliente: TIntegerField
      FieldName = 'Conta Cont'#225'bil Cliente'
    end
    object adsEmpresasContaContbilFornecedor: TIntegerField
      FieldName = 'Conta Cont'#225'bil Fornecedor'
    end
    object adsEmpresasAgncia: TWideStringField
      FieldName = 'Ag'#234'ncia'
      Size = 5
    end
    object adsEmpresasDgitodaAgncia: TWideStringField
      FieldName = 'D'#237'gito da Ag'#234'ncia'
      Size = 1
    end
    object adsEmpresasContaCorrente: TWideStringField
      FieldName = 'Conta Corrente'
      Size = 13
    end
    object adsEmpresasDgitodaContaCorrente: TWideStringField
      FieldName = 'D'#237'gito da Conta Corrente'
      Size = 2
    end
    object adsEmpresasDescontoporPontualidade: TFloatField
      FieldName = 'Desconto por Pontualidade'
    end
    object adsEmpresasDescPorCliente: TFloatField
      FieldName = 'DescPorCliente'
    end
    object adsEmpresasFixVar: TWideStringField
      FieldName = 'FixVar'
      Size = 8
    end
    object adsEmpresasAbrEmp: TWideStringField
      FieldName = 'AbrEmp'
      Size = 30
    end
    object adsEmpresasPercFrete: TFloatField
      FieldName = 'PercFrete'
    end
    object adsEmpresasPercEmbalagem: TFloatField
      FieldName = 'PercEmbalagem'
    end
    object adsEmpresasBCOPGT: TWideStringField
      FieldName = 'BCOPGT'
      Size = 3
    end
    object adsEmpresasCONMRE: TWideStringField
      FieldName = 'CONMRE'
      Size = 1
    end
    object adsEmpresasVariasTabelas: TBooleanField
      FieldName = 'VariasTabelas'
    end
    object adsEmpresasClienteIntFiscal: TIntegerField
      FieldName = 'ClienteIntFiscal'
    end
    object adsEmpresasFornecedorIntFiscal: TIntegerField
      FieldName = 'FornecedorIntFiscal'
    end
    object adsEmpresasCodFoxDados: TIntegerField
      FieldName = 'CodFoxDados'
    end
    object adsEmpresascalcula_pis: TBooleanField
      FieldName = 'calcula_pis'
    end
    object adsEmpresascalcula_cofins: TBooleanField
      FieldName = 'calcula_cofins'
    end
    object adsEmpresascontribuinte_icms: TBooleanField
      FieldName = 'contribuinte_icms'
    end
    object adsEmpresaschk_simples_nacional: TBooleanField
      FieldName = 'chk_simples_nacional'
    end
    object adsEmpresascd_municipio_ibge: TIntegerField
      FieldName = 'cd_municipio_ibge'
    end
    object adsEmpresascd_cnae_fiscal: TIntegerField
      FieldName = 'cd_cnae_fiscal'
    end
    object adsEmpresascod_exportador: TWideStringField
      FieldName = 'cod_exportador'
      Size = 60
    end
    object adsEmpresascodigo_formapagamento: TIntegerField
      FieldName = 'codigo_formapagamento'
    end
    object adsEmpresasper_credito_icms: TFloatField
      FieldName = 'per_credito_icms'
    end
    object adsEmpresasemail_nfe: TWideStringField
      FieldName = 'email_nfe'
      Size = 255
    end
    object adsEmpresasdescontarbaseST_SUFRAMA: TBooleanField
      FieldName = 'descontarbaseST_SUFRAMA'
    end
  end
  object sdsPessoaDigital: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PD.*'#13#10'FROM PESSOA_DIGITAL PD'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 96
    object sdsPessoaDigitalID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Required = True
    end
    object sdsPessoaDigitalDEDO: TIntegerField
      FieldName = 'DEDO'
      Required = True
    end
    object sdsPessoaDigitalAMOSTRA: TIntegerField
      FieldName = 'AMOSTRA'
      Required = True
    end
  end
  object dsPessoalDigital: TDataSource
    Left = 360
    Top = 96
  end
  object dspPessoaDigital: TDataSetProvider
    DataSet = sdsPessoaDigital
    Left = 200
    Top = 96
  end
  object sdsPessoaDigitalOra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PDO.*'#13#10'FROM PESSOA_DIGITAL_ORA PDO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 216
    object sdsPessoaDigitalOraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaDigitalOraEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 4
    end
    object sdsPessoaDigitalOraUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 4
    end
    object sdsPessoaDigitalOraPESSOA: TIntegerField
      FieldName = 'PESSOA'
      Required = True
    end
    object sdsPessoaDigitalOraDIGITAL: TBlobField
      FieldName = 'DIGITAL'
      Size = 1
    end
    object sdsPessoaDigitalOraNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsPessoaDigitalOraSENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
  end
  object cdsPessoaDigitalOra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaDigitalOra'
    AfterInsert = cdsPessoaDigitalOraAfterInsert
    Left = 272
    Top = 216
    object cdsPessoaDigitalOraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaDigitalOraEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 4
    end
    object cdsPessoaDigitalOraUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 4
    end
    object cdsPessoaDigitalOraPESSOA: TIntegerField
      FieldName = 'PESSOA'
      Required = True
    end
    object cdsPessoaDigitalOraDIGITAL: TBlobField
      FieldName = 'DIGITAL'
      Size = 1
    end
    object cdsPessoaDigitalOraNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsPessoaDigitalOraSENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
  end
  object dsPessoaDigitalOra: TDataSource
    DataSet = cdsPessoaDigitalOra
    Left = 360
    Top = 216
  end
  object dspPessoaDigitalOra: TDataSetProvider
    DataSet = sdsPessoaDigitalOra
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 216
  end
end
