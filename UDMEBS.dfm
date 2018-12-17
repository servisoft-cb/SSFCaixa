object DMEBS: TDMEBS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 278
  Top = 242
  Height = 381
  Width = 555
  object adsEstMovimento: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CommandText = 'SELECT *'#13#10'FROM ESTMOVIMENTO'
    Parameters = <>
    Left = 96
    Top = 40
    object adsEstMovimentoCODLOC: TWideStringField
      FieldName = 'CODLOC'
      Size = 12
    end
    object adsEstMovimentoCODPRO: TWideStringField
      FieldName = 'CODPRO'
    end
    object adsEstMovimentoDATMOV: TDateTimeField
      FieldName = 'DATMOV'
    end
    object adsEstMovimentoSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
    end
    object adsEstMovimentoCODPRJ: TIntegerField
      FieldName = 'CODPRJ'
    end
    object adsEstMovimentoNRODOC: TIntegerField
      FieldName = 'NRODOC'
    end
    object adsEstMovimentoTIPREG: TWideStringField
      FieldName = 'TIPREG'
    end
    object adsEstMovimentoCODFOR: TWideStringField
      FieldName = 'CODFOR'
    end
    object adsEstMovimentoSEQITE: TIntegerField
      FieldName = 'SEQITE'
    end
    object adsEstMovimentoENTSAI: TWideStringField
      FieldName = 'ENTSAI'
      Size = 1
    end
    object adsEstMovimentoQTDMOV: TFloatField
      FieldName = 'QTDMOV'
    end
    object adsEstMovimentoVLRMOV: TFloatField
      FieldName = 'VLRMOV'
    end
    object adsEstMovimentoQTDANT: TFloatField
      FieldName = 'QTDANT'
    end
    object adsEstMovimentoQTDAPO: TFloatField
      FieldName = 'QTDAPO'
    end
    object adsEstMovimentoORIMOV: TWideStringField
      FieldName = 'ORIMOV'
      Size = 4
    end
    object adsEstMovimentoCODCCU: TIntegerField
      FieldName = 'CODCCU'
    end
    object adsEstMovimentoCODCTF: TIntegerField
      FieldName = 'CODCTF'
    end
    object adsEstMovimentoHORMOV: TIntegerField
      FieldName = 'HORMOV'
    end
    object adsEstMovimentoMIGMOV: TBooleanField
      FieldName = 'MIGMOV'
    end
    object adsEstMovimentoCUSPRO: TFloatField
      FieldName = 'CUSPRO'
    end
    object adsEstMovimentoANOASS: TIntegerField
      FieldName = 'ANOASS'
    end
    object adsEstMovimentoVLRANT: TFloatField
      FieldName = 'VLRANT'
    end
    object adsEstMovimentoVLRAPOS: TFloatField
      FieldName = 'VLRAPOS'
    end
    object adsEstMovimentoCUSTMEDPRO: TFloatField
      FieldName = 'CUSTMEDPRO'
    end
    object adsEstMovimentoregistro_integrado: TBooleanField
      FieldName = 'registro_integrado'
    end
  end
  object adsLancamentos: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    AfterInsert = adsLancamentosAfterInsert
    CommandText = 
      'SELECT *, C'#243'digo As Codigo, Descri'#231#227'o As Descricao, Emiss'#227'o As E' +
      'missao, Libera'#231#227'o As Liberacao, Acr'#233'scimo As Acrescimo, Situa'#231#227'o' +
      ' As Situacao, Marca'#231#227'o As Marcacao, Usu'#225'rio As Usuario, Altera'#231#227 +
      'o As Alteracao'#13#10'FROM LAN'#199'AMENTOS'#13#10#13#10#13#10'      '
    Parameters = <>
    Left = 104
    Top = 120
    object adsLancamentosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object adsLancamentosDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 80
    end
    object adsLancamentosEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object adsLancamentosLiberacao: TDateTimeField
      FieldName = 'Liberacao'
    end
    object adsLancamentosAcrescimo: TBCDField
      FieldName = 'Acrescimo'
      Precision = 19
    end
    object adsLancamentosSituacao: TWideStringField
      FieldName = 'Situacao'
      Size = 30
    end
    object adsLancamentosMarcacao: TBooleanField
      FieldName = 'Marcacao'
    end
    object adsLancamentosUsuario: TWideStringField
      FieldName = 'Usuario'
    end
    object adsLancamentosAlteracao: TDateTimeField
      FieldName = 'Alteracao'
    end
    object adsLancamentosPagRec: TWideStringField
      FieldName = 'PagRec'
      Size = 1
    end
    object adsLancamentosParcela: TSmallintField
      FieldName = 'Parcela'
    end
    object adsLancamentosEmpresa: TWideStringField
      FieldName = 'Empresa'
      Size = 15
    end
    object adsLancamentosTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 30
    end
    object adsLancamentosVencimento: TDateTimeField
      FieldName = 'Vencimento'
    end
    object adsLancamentosPagamento: TDateTimeField
      FieldName = 'Pagamento'
    end
    object adsLancamentosValorOriginal: TBCDField
      FieldName = 'Valor Original'
      Precision = 19
    end
    object adsLancamentosAbatimento: TBCDField
      FieldName = 'Abatimento'
      Precision = 19
    end
    object adsLancamentosBanco: TIntegerField
      FieldName = 'Banco'
    end
    object adsLancamentosConta: TIntegerField
      FieldName = 'Conta'
    end
    object adsLancamentosCentro: TIntegerField
      FieldName = 'Centro'
    end
    object adsLancamentosCheque: TIntegerField
      FieldName = 'Cheque'
    end
    object adsLancamentosMoeda: TWideStringField
      FieldName = 'Moeda'
      Size = 10
    end
    object adsLancamentosValordaMoeda: TBCDField
      FieldName = 'Valor da Moeda'
      Precision = 19
    end
    object adsLancamentosControle: TWideStringField
      FieldName = 'Controle'
      Size = 18
    end
    object adsLancamentosEnviado: TWideStringField
      FieldName = 'Enviado'
      Size = 1
    end
    object adsLancamentosObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object adsLancamentosBorder: TIntegerField
      FieldName = 'Border'#244
    end
    object adsLancamentosDataIntegraoFatoGerador: TDateTimeField
      FieldName = 'Data Integra'#231#227'o Fato Gerador'
    end
    object adsLancamentosDataIntegraoFatoPagamento: TDateTimeField
      FieldName = 'Data Integra'#231#227'o Fato Pagamento'
    end
    object adsLancamentosLINDIG: TWideStringField
      FieldName = 'LINDIG'
      Size = 70
    end
    object adsLancamentosConciliado: TBooleanField
      FieldName = 'Conciliado'
    end
    object adsLancamentosCarteira: TWideStringField
      FieldName = 'Carteira'
      Size = 3
    end
    object adsLancamentosPrevisao: TBooleanField
      FieldName = 'Previsao'
    end
    object adsLancamentosVlrMrD: TBCDField
      FieldName = 'VlrMrD'
      Precision = 19
    end
    object adsLancamentosPerMrD: TBCDField
      FieldName = 'PerMrD'
      Precision = 19
    end
    object adsLancamentosSeqNossoNumero: TFloatField
      FieldName = 'SeqNossoNumero'
    end
    object adsLancamentosVlrDsP: TBCDField
      FieldName = 'VlrDsP'
      Precision = 19
    end
    object adsLancamentosPerJur: TBCDField
      FieldName = 'PerJur'
      Precision = 19
    end
    object adsLancamentosVlrJur: TBCDField
      FieldName = 'VlrJur'
      Precision = 19
    end
    object adsLancamentosCODPRJ: TIntegerField
      FieldName = 'CODPRJ'
    end
    object adsLancamentosCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object adsLancamentosCheBan: TIntegerField
      FieldName = 'CheBan'
    end
    object adsLancamentosCheAge: TWideStringField
      FieldName = 'CheAge'
      Size = 10
    end
    object adsLancamentosCheEmi: TWideStringField
      FieldName = 'CheEmi'
      Size = 60
    end
    object adsLancamentosCheCco: TWideStringField
      FieldName = 'CheCco'
    end
    object adsLancamentosPerMul: TBCDField
      FieldName = 'PerMul'
      Precision = 19
    end
    object adsLancamentosVlrMul: TBCDField
      FieldName = 'VlrMul'
      Precision = 19
    end
    object adsLancamentosCODBAR: TWideStringField
      FieldName = 'CODBAR'
      Size = 70
    end
    object adsLancamentosNOSNUM: TWideStringField
      FieldName = 'NOSNUM'
      Size = 30
    end
    object adsLancamentosAGECCE: TWideStringField
      FieldName = 'AGECCE'
    end
    object adsLancamentosLOCPAG: TWideStringField
      FieldName = 'LOCPAG'
      Size = 100
    end
    object adsLancamentosINSTRU: TWideStringField
      FieldName = 'INSTRU'
      Size = 255
    end
    object adsLancamentoscd_operacao_contabil: TIntegerField
      FieldName = 'cd_operacao_contabil'
    end
    object adsLancamentosregistro_integrado: TBooleanField
      FieldName = 'registro_integrado'
    end
    object adsLancamentoscd_operacao_baixa: TIntegerField
      FieldName = 'cd_operacao_baixa'
    end
    object adsLancamentosbaixa_integrado: TBooleanField
      FieldName = 'baixa_integrado'
    end
    object adsLancamentosproveniente_rateio: TBooleanField
      FieldName = 'proveniente_rateio'
    end
    object adsLancamentosparc_origem_baixa: TIntegerField
      FieldName = 'parc_origem_baixa'
    end
    object adsLancamentosid_carteira: TIntegerField
      FieldName = 'id_carteira'
    end
    object adsLancamentoscod_motivo: TWideStringField
      FieldName = 'cod_motivo'
      Size = 10
    end
    object adsLancamentosdesc_motivo: TWideStringField
      FieldName = 'desc_motivo'
      Size = 255
    end
    object adsLancamentosultima_mov_cnab: TIntegerField
      FieldName = 'ultima_mov_cnab'
    end
    object adsLancamentosultima_data_cnab: TDateTimeField
      FieldName = 'ultima_data_cnab'
    end
    object adsLancamentoscd_cobranca: TIntegerField
      FieldName = 'cd_cobranca'
    end
    object adsLancamentosseq_remessa: TIntegerField
      FieldName = 'seq_remessa'
    end
  end
  object adsUltimasComprasVendas: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    CommandText = 
      'SELECT *, N'#250'mero As Numero,'#13#10'([Tipo de Registro]) As TipoReg, ([' +
      'Valor Unit'#225'rio]) As VlrUnitario, Observa'#231#245'es As Obs'#13#10'FROM "'#218'ltim' +
      'as Compras/Vendas" UCV'#13#10#13#10#13#10'      '
    Parameters = <>
    Left = 104
    Top = 200
    object adsUltimasComprasVendasNumero: TIntegerField
      FieldName = 'Numero'
    end
    object adsUltimasComprasVendasTipoReg: TWideStringField
      FieldName = 'TipoReg'
    end
    object adsUltimasComprasVendasVlrUnitario: TBCDField
      FieldName = 'VlrUnitario'
      Precision = 19
    end
    object adsUltimasComprasVendasObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object adsUltimasComprasVendasProduto: TWideStringField
      FieldName = 'Produto'
    end
    object adsUltimasComprasVendasEmpresa: TWideStringField
      FieldName = 'Empresa'
      Size = 15
    end
    object adsUltimasComprasVendasTipo: TWideStringField
      FieldName = 'Tipo'
    end
    object adsUltimasComprasVendasData: TDateTimeField
      FieldName = 'Data'
    end
    object adsUltimasComprasVendasQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object adsUltimasComprasVendasItem: TIntegerField
      FieldName = 'Item'
    end
  end
  object adsVendasPDV: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    CommandText = 
      'SELECT *, ([Tipo de Registro]) As TipoReg, N'#250'mero As Numero, Emi' +
      'ss'#227'o As DtEmissao, ([Tipo da Empresa]) As TipoEmpresa, ([Condi'#231#227 +
      'o de Pagamento]) As CondPagamento, ([Frete Por Conta]) As FreteP' +
      'orConta, ([Registro Impresso]) As RegImpresso, Situa'#231#227'o As Situa' +
      'cao, ([Via de Transporte]), ([Total de Descontos]) As VlrDescont' +
      'os, ([Total de Mercadorias]) As VlrTotalMercadorias, ([Valor Tot' +
      'al]) As VlrTotal, ([Natureza de Opera'#231#227'o]) As NatOperacao'#13#10'FROM ' +
      '"Vendas PDV" VPDV'#13#10#13#10#13#10'      '
    Parameters = <>
    Left = 328
    Top = 40
    object adsVendasPDVTipoReg: TWideStringField
      FieldName = 'TipoReg'
    end
    object adsVendasPDVNumero: TIntegerField
      FieldName = 'Numero'
    end
    object adsVendasPDVDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object adsVendasPDVTipoEmpresa: TWideStringField
      FieldName = 'TipoEmpresa'
      Size = 10
    end
    object adsVendasPDVCondPagamento: TSmallintField
      FieldName = 'CondPagamento'
    end
    object adsVendasPDVFretePorConta: TWideStringField
      FieldName = 'FretePorConta'
    end
    object adsVendasPDVRegImpresso: TBooleanField
      FieldName = 'RegImpresso'
    end
    object adsVendasPDVSituacao: TWideStringField
      FieldName = 'Situacao'
      Size = 30
    end
    object adsVendasPDVViadeTransporte: TWideStringField
      FieldName = 'Via de Transporte'
      Size = 10
    end
    object adsVendasPDVVlrDescontos: TFloatField
      FieldName = 'VlrDescontos'
    end
    object adsVendasPDVVlrTotalMercadorias: TFloatField
      FieldName = 'VlrTotalMercadorias'
    end
    object adsVendasPDVVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object adsVendasPDVNatOperacao: TWideStringField
      FieldName = 'NatOperacao'
      Size = 4
    end
    object adsVendasPDVFornecedor: TWideStringField
      FieldName = 'Fornecedor'
      Size = 15
    end
    object adsVendasPDVEmpresa: TWideStringField
      FieldName = 'Empresa'
      Size = 15
    end
    object adsVendasPDVMoeda: TWideStringField
      FieldName = 'Moeda'
      Size = 10
    end
    object adsVendasPDVDespesaFinanceira: TFloatField
      FieldName = 'Despesa Financeira'
    end
    object adsVendasPDVDescontoemValor: TBCDField
      FieldName = 'Desconto em Valor'
      Precision = 19
    end
    object adsVendasPDVDescontoemPorcentagem: TFloatField
      FieldName = 'Desconto em Porcentagem'
    end
    object adsVendasPDVTransportadora: TIntegerField
      FieldName = 'Transportadora'
    end
    object adsVendasPDVValordoFrete: TFloatField
      FieldName = 'Valor do Frete'
    end
    object adsVendasPDVCadastradopor: TWideStringField
      FieldName = 'Cadastrado por'
    end
    object adsVendasPDVDuplicatasLiberadopor: TWideStringField
      FieldName = 'Duplicatas Liberado por'
    end
    object adsVendasPDVValidade: TDateTimeField
      FieldName = 'Validade'
    end
    object adsVendasPDVMotivo: TWideStringField
      FieldName = 'Motivo'
      Size = 40
    end
    object adsVendasPDVData: TDateTimeField
      FieldName = 'Data'
    end
    object adsVendasPDVHora: TDateTimeField
      FieldName = 'Hora'
    end
    object adsVendasPDVSrie: TWideStringField
      FieldName = 'S'#233'rie'
      Size = 3
    end
    object adsVendasPDVPedidodoCliente: TWideStringField
      FieldName = 'Pedido do Cliente'
      Size = 80
    end
    object adsVendasPDVTaxasExtras: TFloatField
      FieldName = 'Taxas Extras'
    end
    object adsVendasPDVValordoSinal: TFloatField
      FieldName = 'Valor do Sinal'
    end
    object adsVendasPDVDatadoSinal: TDateTimeField
      FieldName = 'Data do Sinal'
    end
    object adsVendasPDVPesoLquido: TFloatField
      FieldName = 'Peso L'#237'quido'
    end
    object adsVendasPDVPesoBruto: TFloatField
      FieldName = 'Peso Bruto'
    end
    object adsVendasPDVVolumes: TFloatField
      FieldName = 'Volumes'
    end
    object adsVendasPDVEspcie: TWideStringField
      FieldName = 'Esp'#233'cie'
      Size = 15
    end
    object adsVendasPDVValordoSeguro: TFloatField
      FieldName = 'Valor do Seguro'
    end
    object adsVendasPDVMarcadaNota: TWideStringField
      FieldName = 'Marca da Nota'
      Size = 15
    end
    object adsVendasPDVDescontoEspecial: TFloatField
      FieldName = 'Desconto Especial'
    end
    object adsVendasPDVContato: TWideStringField
      FieldName = 'Contato'
      Size = 100
    end
    object adsVendasPDVDepartamento: TWideStringField
      FieldName = 'Departamento'
      Size = 100
    end
    object adsVendasPDVFone: TWideStringField
      FieldName = 'Fone'
      Size = 15
    end
    object adsVendasPDVFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object adsVendasPDVObservaes: TMemoField
      FieldName = 'Observa'#231#245'es'
      BlobType = ftMemo
    end
    object adsVendasPDVObservaesInternas: TMemoField
      FieldName = 'Observa'#231#245'es Internas'
      BlobType = ftMemo
    end
    object adsVendasPDVEndereodeEntrega: TWideStringField
      FieldName = 'Endere'#231'o de Entrega'
      Size = 70
    end
    object adsVendasPDVBairrodeEntrega: TWideStringField
      FieldName = 'Bairro de Entrega'
    end
    object adsVendasPDVCEPdeEntrega: TWideStringField
      FieldName = 'CEP de Entrega'
      Size = 9
    end
    object adsVendasPDVCidadedeEntrega: TWideStringField
      FieldName = 'Cidade de Entrega'
      Size = 30
    end
    object adsVendasPDVEstadodeEntrega: TWideStringField
      FieldName = 'Estado de Entrega'
      Size = 2
    end
    object adsVendasPDVPessoa: TWideStringField
      FieldName = 'Pessoa'
      Size = 8
    end
    object adsVendasPDVCNPJdeEntrega: TWideStringField
      FieldName = 'CNPJ de Entrega'
      Size = 18
    end
    object adsVendasPDVIEdeEntrega: TWideStringField
      FieldName = 'IE de Entrega'
      Size = 18
    end
    object adsVendasPDVFonedeEntrega: TWideStringField
      FieldName = 'Fone de Entrega'
      Size = 15
    end
    object adsVendasPDVRamaldeEntrega: TWideStringField
      FieldName = 'Ramal de Entrega'
      Size = 10
    end
    object adsVendasPDVEndereodeCobrana: TWideStringField
      FieldName = 'Endere'#231'o de Cobran'#231'a'
      Size = 70
    end
    object adsVendasPDVBairrodeCobrana: TWideStringField
      FieldName = 'Bairro de Cobran'#231'a'
    end
    object adsVendasPDVCEPdeCobrana: TWideStringField
      FieldName = 'CEP de Cobran'#231'a'
      Size = 9
    end
    object adsVendasPDVCidadedeCobrana: TWideStringField
      FieldName = 'Cidade de Cobran'#231'a'
      Size = 30
    end
    object adsVendasPDVEstadodeCobrana: TWideStringField
      FieldName = 'Estado de Cobran'#231'a'
      Size = 2
    end
    object adsVendasPDVFonedeCobrana: TWideStringField
      FieldName = 'Fone de Cobran'#231'a'
      Size = 15
    end
    object adsVendasPDVRamaldeCobrana: TWideStringField
      FieldName = 'Ramal de Cobran'#231'a'
      Size = 10
    end
    object adsVendasPDVEmitentedaCarga: TWideStringField
      FieldName = 'Emitente da Carga'
      Size = 15
    end
    object adsVendasPDVNaturezadaCarga: TWideStringField
      FieldName = 'Natureza da Carga'
    end
    object adsVendasPDVNotaFiscaldaCarga: TIntegerField
      FieldName = 'Nota Fiscal da Carga'
    end
    object adsVendasPDVValordasMercadoriasdaCarga: TFloatField
      FieldName = 'Valor das Mercadorias da Carga'
    end
    object adsVendasPDVBasedeICMS: TFloatField
      FieldName = 'Base de ICMS'
    end
    object adsVendasPDVBasedeIPI: TFloatField
      FieldName = 'Base de IPI'
    end
    object adsVendasPDVTotaldeICMS: TFloatField
      FieldName = 'Total de ICMS'
    end
    object adsVendasPDVBasedeICMSdeSubstituio: TFloatField
      FieldName = 'Base de ICMS de Substitui'#231#227'o'
    end
    object adsVendasPDVTotaldeICMSdeSubstituio: TFloatField
      FieldName = 'Total de ICMS de Substitui'#231#227'o'
    end
    object adsVendasPDVTotaldeFrete: TFloatField
      FieldName = 'Total de Frete'
    end
    object adsVendasPDVReembolso_Frete: TFloatField
      FieldName = 'Reembolso_Frete'
    end
    object adsVendasPDVTotaldeSeguro: TFloatField
      FieldName = 'Total de Seguro'
    end
    object adsVendasPDVTotaldeDespesas: TFloatField
      FieldName = 'Total de Despesas'
    end
    object adsVendasPDVTotaldeTaxas: TFloatField
      FieldName = 'Total de Taxas'
    end
    object adsVendasPDVIPInaBasedeICMS: TFloatField
      FieldName = 'IPI na Base de ICMS'
    end
    object adsVendasPDVTotaldeIPI: TFloatField
      FieldName = 'Total de IPI'
    end
    object adsVendasPDVTotaldeModeObra: TFloatField
      FieldName = 'Total de M'#227'o de Obra'
    end
    object adsVendasPDVTotaldeINSS: TFloatField
      FieldName = 'Total de INSS'
    end
    object adsVendasPDVTotaldeISS: TFloatField
      FieldName = 'Total de ISS'
    end
    object adsVendasPDVTotaldeIRF: TFloatField
      FieldName = 'Total de IRF'
    end
    object adsVendasPDVTotaldeOUTROS: TFloatField
      FieldName = 'Total de OUTROS'
    end
    object adsVendasPDVDescontoFinanceiro: TFloatField
      FieldName = 'Desconto Financeiro'
    end
    object adsVendasPDVBanco: TIntegerField
      FieldName = 'Banco'
    end
    object adsVendasPDVConta: TIntegerField
      FieldName = 'Conta'
    end
    object adsVendasPDVDescriodaTaxa: TWideStringField
      FieldName = 'Descri'#231#227'o da Taxa'
      Size = 50
    end
    object adsVendasPDVDespesadeImportao: TFloatField
      FieldName = 'Despesa de Importa'#231#227'o'
    end
    object adsVendasPDVCotaodaDI: TFloatField
      FieldName = 'Cota'#231#227'o da DI'
    end
    object adsVendasPDVPlacadoVeculo: TWideStringField
      FieldName = 'Placa do Ve'#237'culo'
      Size = 8
    end
    object adsVendasPDVLocaldeEmbarque: TWideStringField
      FieldName = 'Local de Embarque'
      Size = 30
    end
    object adsVendasPDVLocaldeDesembarque: TWideStringField
      FieldName = 'Local de Desembarque'
      Size = 30
    end
    object adsVendasPDVTotaldeQuantidade: TFloatField
      FieldName = 'Total de Quantidade'
    end
    object adsVendasPDVComplementodaNaturezadeOperao: TWideStringField
      FieldName = 'Complemento da Natureza de Opera'#231#227'o'
      Size = 1
    end
    object adsVendasPDVTipodeRegistrodaNotaComplementar: TWideStringField
      FieldName = 'Tipo de Registro da Nota Complementar'
    end
    object adsVendasPDVNmerodaNotaComplementar: TIntegerField
      FieldName = 'N'#250'mero da Nota Complementar'
    end
    object adsVendasPDVNotaprovenientedoVendasaVarejo: TBooleanField
      FieldName = 'Nota proveniente do Vendas a Varejo'
    end
    object adsVendasPDVTotaldeISSRetidonaFonte: TFloatField
      FieldName = 'Total de ISS Retido na Fonte'
    end
    object adsVendasPDVDataProgramada: TDateTimeField
      FieldName = 'Data Programada'
    end
    object adsVendasPDVPercentualdeDescontoGeral: TFloatField
      FieldName = 'Percentual de Desconto Geral'
    end
    object adsVendasPDVTotaldeImpostodeImportao: TFloatField
      FieldName = 'Total de Imposto de Importa'#231#227'o'
    end
    object adsVendasPDVCaixa: TSmallintField
      FieldName = 'Caixa'
    end
    object adsVendasPDVDescontoLista: TFloatField
      FieldName = 'DescontoLista'
    end
    object adsVendasPDVPercFrete: TFloatField
      FieldName = 'PercFrete'
    end
    object adsVendasPDVPercEmbalagem: TFloatField
      FieldName = 'PercEmbalagem'
    end
    object adsVendasPDVDescMedio: TFloatField
      FieldName = 'DescMedio'
    end
    object adsVendasPDVMargemMedia: TFloatField
      FieldName = 'MargemMedia'
    end
    object adsVendasPDVMargemFinal: TFloatField
      FieldName = 'MargemFinal'
    end
    object adsVendasPDVMerTerceiro: TBooleanField
      FieldName = 'MerTerceiro'
    end
    object adsVendasPDVEmpProprietaria: TWideStringField
      FieldName = 'EmpProprietaria'
      Size = 15
    end
    object adsVendasPDVCODPRJ: TIntegerField
      FieldName = 'CODPRJ'
    end
    object adsVendasPDVRegInt: TWideStringField
      FieldName = 'RegInt'
      Size = 1
    end
    object adsVendasPDVTotBpc: TFloatField
      FieldName = 'TotBpc'
    end
    object adsVendasPDVTotPis: TFloatField
      FieldName = 'TotPis'
    end
    object adsVendasPDVTotCof: TFloatField
      FieldName = 'TotCof'
    end
    object adsVendasPDVTOTCSL: TFloatField
      FieldName = 'TOTCSL'
    end
    object adsVendasPDVVLRDES: TBCDField
      FieldName = 'VLRDES'
      Precision = 19
    end
    object adsVendasPDVPERDES: TFloatField
      FieldName = 'PERDES'
    end
    object adsVendasPDVSLDSIN: TFloatField
      FieldName = 'SLDSIN'
    end
    object adsVendasPDVEEMAIL: TWideStringField
      FieldName = 'EEMAIL'
      Size = 1
    end
    object adsVendasPDVTABPRECO: TIntegerField
      FieldName = 'TABPRECO'
    end
    object adsVendasPDVcd_caixa: TIntegerField
      FieldName = 'cd_caixa'
    end
    object adsVendasPDVCod_Imp_Fiscal: TIntegerField
      FieldName = 'Cod_Imp_Fiscal'
    end
    object adsVendasPDVcnpj_cpf: TWideStringField
      FieldName = 'cnpj_cpf'
      Size = 14
    end
    object adsVendasPDVnr_reducoes_z: TIntegerField
      FieldName = 'nr_reducoes_z'
    end
    object adsVendasPDVcoo: TIntegerField
      FieldName = 'coo'
    end
    object adsVendasPDVnome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      Size = 40
    end
    object adsVendasPDVmeio_pagto: TWideStringField
      FieldName = 'meio_pagto'
      Size = 15
    end
  end
  object adsItensVendasPDV: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    CommandText = 
      'SELECT *, ([Tipo de Registro]) As TipoReg, N'#250'mero As Numero, Des' +
      'cri'#231#227'o As Descricao, Destina'#231#227'o As Destinacao, ([Tipo da Venda])' +
      ' As TipoVenda, ([Valor Original]) As VlrOriginal , ([Valor de De' +
      'sconto]) As VlrDesconto, ([Valor L'#237'quido]) As VlrLiquido, ([Valo' +
      'r do ICMS]) As VlrIcms, ([Valor do IPI]) As VlrIPI, Situa'#231#227'o As ' +
      'Situacao'#13#10'FROM "Itens de Vendas PDV" IPDV'#13#10#13#10#13#10'      '
    Parameters = <>
    Left = 328
    Top = 120
    object adsItensVendasPDVTipoReg: TWideStringField
      FieldName = 'TipoReg'
    end
    object adsItensVendasPDVNumero: TIntegerField
      FieldName = 'Numero'
    end
    object adsItensVendasPDVDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object adsItensVendasPDVDestinacao: TWideStringField
      FieldName = 'Destinacao'
    end
    object adsItensVendasPDVTipoVenda: TWideStringField
      FieldName = 'TipoVenda'
      Size = 10
    end
    object adsItensVendasPDVVlrOriginal: TFloatField
      FieldName = 'VlrOriginal'
    end
    object adsItensVendasPDVVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object adsItensVendasPDVVlrLiquido: TFloatField
      FieldName = 'VlrLiquido'
    end
    object adsItensVendasPDVVlrIcms: TFloatField
      FieldName = 'VlrIcms'
    end
    object adsItensVendasPDVVlrIPI: TFloatField
      FieldName = 'VlrIPI'
    end
    object adsItensVendasPDVSituacao: TWideStringField
      FieldName = 'Situacao'
      Size = 15
    end
    object adsItensVendasPDVFornecedor: TWideStringField
      FieldName = 'Fornecedor'
      Size = 15
    end
    object adsItensVendasPDVItem: TSmallintField
      FieldName = 'Item'
    end
    object adsItensVendasPDVTipodoPedidoOramento: TWideStringField
      FieldName = 'Tipo do Pedido/Or'#231'amento'
    end
    object adsItensVendasPDVNmerodoPedidoOramento: TIntegerField
      FieldName = 'N'#250'mero do Pedido/Or'#231'amento'
    end
    object adsItensVendasPDVItemdoPedidoOramento: TSmallintField
      FieldName = 'Item do Pedido/Or'#231'amento'
    end
    object adsItensVendasPDVTabeladePreos: TIntegerField
      FieldName = 'Tabela de Pre'#231'os'
    end
    object adsItensVendasPDVProduto: TWideStringField
      FieldName = 'Produto'
    end
    object adsItensVendasPDVComplemento: TWideStringField
      FieldName = 'Complemento'
      Size = 50
    end
    object adsItensVendasPDVServio: TIntegerField
      FieldName = 'Servi'#231'o'
    end
    object adsItensVendasPDVDescriodoServio: TMemoField
      FieldName = 'Descri'#231#227'o do Servi'#231'o'
      BlobType = ftMemo
    end
    object adsItensVendasPDVUnidade: TWideStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object adsItensVendasPDVMarca: TWideStringField
      FieldName = 'Marca'
      Size = 15
    end
    object adsItensVendasPDVSituaoTributria: TWideStringField
      FieldName = 'Situa'#231#227'o Tribut'#225'ria'
      Size = 5
    end
    object adsItensVendasPDVNaturezadeOperao: TWideStringField
      FieldName = 'Natureza de Opera'#231#227'o'
      Size = 4
    end
    object adsItensVendasPDVComplementodaNatureza: TWideStringField
      FieldName = 'Complemento da Natureza'
      Size = 1
    end
    object adsItensVendasPDVQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object adsItensVendasPDVQuantidadedeDesconto: TFloatField
      FieldName = 'Quantidade de Desconto'
    end
    object adsItensVendasPDVPorcentagemdeDesconto: TFloatField
      FieldName = 'Porcentagem de Desconto'
    end
    object adsItensVendasPDVICMS: TFloatField
      FieldName = 'ICMS'
    end
    object adsItensVendasPDVDescontodeICMS: TFloatField
      FieldName = 'Desconto de ICMS'
    end
    object adsItensVendasPDVReduodeBase: TFloatField
      FieldName = 'Redu'#231#227'o de Base'
    end
    object adsItensVendasPDVAcrscimodeBase: TFloatField
      FieldName = 'Acr'#233'scimo de Base'
    end
    object adsItensVendasPDVAcrscimodeICMS: TFloatField
      FieldName = 'Acr'#233'scimo de ICMS'
    end
    object adsItensVendasPDVReduodeICMS: TFloatField
      FieldName = 'Redu'#231#227'o de ICMS'
    end
    object adsItensVendasPDVAlquotadeICMSdeSubstituio: TFloatField
      FieldName = 'Al'#237'quota de ICMS de Substitui'#231#227'o'
    end
    object adsItensVendasPDVIPI: TFloatField
      FieldName = 'IPI'
    end
    object adsItensVendasPDVIRF: TFloatField
      FieldName = 'IRF'
    end
    object adsItensVendasPDVINSS: TFloatField
      FieldName = 'INSS'
    end
    object adsItensVendasPDVISS: TFloatField
      FieldName = 'ISS'
    end
    object adsItensVendasPDVOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object adsItensVendasPDVVendedor01: TSmallintField
      FieldName = 'Vendedor01'
    end
    object adsItensVendasPDVComisso01: TFloatField
      FieldName = 'Comiss'#227'o01'
    end
    object adsItensVendasPDVVendedor02: TSmallintField
      FieldName = 'Vendedor02'
    end
    object adsItensVendasPDVComisso02: TFloatField
      FieldName = 'Comiss'#227'o02'
    end
    object adsItensVendasPDVVendedor03: TSmallintField
      FieldName = 'Vendedor03'
    end
    object adsItensVendasPDVComisso03: TFloatField
      FieldName = 'Comiss'#227'o03'
    end
    object adsItensVendasPDVPrazodeEntregaInicial: TSmallintField
      FieldName = 'Prazo de Entrega Inicial'
    end
    object adsItensVendasPDVPrazodeEntregaFinal: TSmallintField
      FieldName = 'Prazo de Entrega Final'
    end
    object adsItensVendasPDVObservaes: TMemoField
      FieldName = 'Observa'#231#245'es'
      BlobType = ftMemo
    end
    object adsItensVendasPDVDatadaPreviso: TDateTimeField
      FieldName = 'Data da Previs'#227'o'
    end
    object adsItensVendasPDVDatadaBaixa: TDateTimeField
      FieldName = 'Data da Baixa'
    end
    object adsItensVendasPDVQuantidadeBaixada: TFloatField
      FieldName = 'Quantidade Baixada'
    end
    object adsItensVendasPDVCentrodeCusto: TIntegerField
      FieldName = 'Centro de Custo'
    end
    object adsItensVendasPDVCadastradopor: TWideStringField
      FieldName = 'Cadastrado por'
      Size = 10
    end
    object adsItensVendasPDVCrditoLiberadopor: TWideStringField
      FieldName = 'Cr'#233'dito Liberado por'
      Size = 10
    end
    object adsItensVendasPDVNotadeDevoluo: TIntegerField
      FieldName = 'Nota de Devolu'#231#227'o'
    end
    object adsItensVendasPDVTipodeDevoluo: TWideStringField
      FieldName = 'Tipo de Devolu'#231#227'o'
      Size = 15
    end
    object adsItensVendasPDVTipodedesconto: TWideStringField
      FieldName = 'Tipo de desconto'
      Size = 13
    end
    object adsItensVendasPDVPedidoLiberadopor: TWideStringField
      FieldName = 'Pedido Liberado por'
      Size = 10
    end
    object adsItensVendasPDVValorLiberadopor: TWideStringField
      FieldName = 'Valor Liberado por'
      Size = 10
    end
    object adsItensVendasPDVEmpresaCotada: TWideStringField
      FieldName = 'Empresa Cotada'
      Size = 15
    end
    object adsItensVendasPDVComissoLiberadapor: TWideStringField
      FieldName = 'Comiss'#227'o Liberada por'
      Size = 10
    end
    object adsItensVendasPDVDescontoLiberadopor: TWideStringField
      FieldName = 'Desconto Liberado por'
      Size = 10
    end
    object adsItensVendasPDVValordoFretenoIPI: TFloatField
      FieldName = 'Valor do Frete no IPI'
    end
    object adsItensVendasPDVDatadaCotao: TDateTimeField
      FieldName = 'Data da Cota'#231#227'o'
    end
    object adsItensVendasPDVImpostodeImportao: TFloatField
      FieldName = 'Imposto de Importa'#231#227'o'
    end
    object adsItensVendasPDVFreteeSeguro: TFloatField
      FieldName = 'Frete e Seguro'
    end
    object adsItensVendasPDVRateiodeImportao: TFloatField
      FieldName = 'Rateio de Importa'#231#227'o'
    end
    object adsItensVendasPDVLote: TWideStringField
      FieldName = 'Lote'
      Size = 10
    end
    object adsItensVendasPDVValordoBeneficiamento: TFloatField
      FieldName = 'Valor do Beneficiamento'
    end
    object adsItensVendasPDVSrie: TWideStringField
      FieldName = 'S'#233'rie'
      Size = 15
    end
    object adsItensVendasPDVUnEnt: TWideStringField
      FieldName = 'UnEnt'
      Size = 3
    end
    object adsItensVendasPDVUnEntQtd: TFloatField
      FieldName = 'UnEntQtd'
    end
    object adsItensVendasPDVUnEntCampo1: TFloatField
      FieldName = 'UnEntCampo1'
    end
    object adsItensVendasPDVUnEntCampo2: TFloatField
      FieldName = 'UnEntCampo2'
    end
    object adsItensVendasPDVUnEntCampo3: TFloatField
      FieldName = 'UnEntCampo3'
    end
    object adsItensVendasPDVUnEntDesc: TWideStringField
      FieldName = 'UnEntDesc'
      Size = 70
    end
    object adsItensVendasPDVUnAux: TWideStringField
      FieldName = 'UnAux'
      Size = 3
    end
    object adsItensVendasPDVUnAuxQtd: TFloatField
      FieldName = 'UnAuxQtd'
    end
    object adsItensVendasPDVUnAuxCampo1: TFloatField
      FieldName = 'UnAuxCampo1'
    end
    object adsItensVendasPDVUnAuxCampo2: TFloatField
      FieldName = 'UnAuxCampo2'
    end
    object adsItensVendasPDVUnAuxCampo3: TFloatField
      FieldName = 'UnAuxCampo3'
    end
    object adsItensVendasPDVUnAuxDesc: TWideStringField
      FieldName = 'UnAuxDesc'
      Size = 70
    end
    object adsItensVendasPDVUnAux1: TWideStringField
      FieldName = 'UnAux1'
      Size = 3
    end
    object adsItensVendasPDVUnAux1Qtd: TFloatField
      FieldName = 'UnAux1Qtd'
    end
    object adsItensVendasPDVUnAux1Campo1: TFloatField
      FieldName = 'UnAux1Campo1'
    end
    object adsItensVendasPDVUnAux1Campo2: TFloatField
      FieldName = 'UnAux1Campo2'
    end
    object adsItensVendasPDVUnAux1Campo3: TFloatField
      FieldName = 'UnAux1Campo3'
    end
    object adsItensVendasPDVUnAux1Desc: TWideStringField
      FieldName = 'UnAux1Desc'
      Size = 70
    end
    object adsItensVendasPDVMargem: TFloatField
      FieldName = 'Margem'
    end
    object adsItensVendasPDVMargemPercentual: TFloatField
      FieldName = 'MargemPercentual'
    end
    object adsItensVendasPDVValorBruto: TFloatField
      FieldName = 'ValorBruto'
    end
    object adsItensVendasPDVVlrAdiBasICMS: TFloatField
      FieldName = 'VlrAdiBasICMS'
    end
    object adsItensVendasPDVCODPRJ: TIntegerField
      FieldName = 'CODPRJ'
    end
    object adsItensVendasPDVCODLOC: TWideStringField
      FieldName = 'CODLOC'
      Size = 12
    end
    object adsItensVendasPDVQTDRES: TFloatField
      FieldName = 'QTDRES'
    end
    object adsItensVendasPDVVlrBpc: TFloatField
      FieldName = 'VlrBpc'
    end
    object adsItensVendasPDVPerPis: TFloatField
      FieldName = 'PerPis'
    end
    object adsItensVendasPDVPerCof: TFloatField
      FieldName = 'PerCof'
    end
    object adsItensVendasPDVVlrPis: TFloatField
      FieldName = 'VlrPis'
    end
    object adsItensVendasPDVVlrCof: TFloatField
      FieldName = 'VlrCof'
    end
    object adsItensVendasPDVVlrIIm: TFloatField
      FieldName = 'VlrIIm'
    end
    object adsItensVendasPDVVlrUUV: TFloatField
      FieldName = 'VlrUUV'
    end
    object adsItensVendasPDVPerIcm: TFloatField
      FieldName = 'PerIcm'
    end
    object adsItensVendasPDVPerIpi: TFloatField
      FieldName = 'PerIpi'
    end
    object adsItensVendasPDVVlrBic: TFloatField
      FieldName = 'VlrBic'
    end
    object adsItensVendasPDVVlrIic: TFloatField
      FieldName = 'VlrIic'
    end
    object adsItensVendasPDVVlrOic: TFloatField
      FieldName = 'VlrOic'
    end
    object adsItensVendasPDVVlrBip: TFloatField
      FieldName = 'VlrBip'
    end
    object adsItensVendasPDVVlrOip: TFloatField
      FieldName = 'VlrOip'
    end
    object adsItensVendasPDVVlrIip: TFloatField
      FieldName = 'VlrIip'
    end
    object adsItensVendasPDVVlrIst: TFloatField
      FieldName = 'VlrIst'
    end
    object adsItensVendasPDVVlrBis: TFloatField
      FieldName = 'VlrBis'
    end
    object adsItensVendasPDVVlrIss: TFloatField
      FieldName = 'VlrIss'
    end
    object adsItensVendasPDVVlrBss: TFloatField
      FieldName = 'VlrBss'
    end
    object adsItensVendasPDVVlrIis: TFloatField
      FieldName = 'VlrIis'
    end
    object adsItensVendasPDVVlrIRF: TFloatField
      FieldName = 'VlrIRF'
    end
    object adsItensVendasPDVVLRBIR: TFloatField
      FieldName = 'VLRBIR'
    end
    object adsItensVendasPDVVlrBru: TFloatField
      FieldName = 'VlrBru'
    end
    object adsItensVendasPDVPERCSL: TFloatField
      FieldName = 'PERCSL'
    end
    object adsItensVendasPDVVLRCSL: TFloatField
      FieldName = 'VLRCSL'
    end
    object adsItensVendasPDVVlrRdg: TFloatField
      FieldName = 'VlrRdg'
    end
    object adsItensVendasPDVcod_Similar: TWideStringField
      FieldName = 'cod_Similar'
      Size = 50
    end
    object adsItensVendasPDVcd_caixa: TIntegerField
      FieldName = 'cd_caixa'
    end
    object adsItensVendasPDVCod_Imp_Fiscal: TIntegerField
      FieldName = 'Cod_Imp_Fiscal'
    end
    object adsItensVendasPDVnr_reducoes_z: TIntegerField
      FieldName = 'nr_reducoes_z'
    end
    object adsItensVendasPDVcoo: TIntegerField
      FieldName = 'coo'
    end
    object adsItensVendasPDVseq_taxa: TWideStringField
      FieldName = 'seq_taxa'
      Size = 2
    end
    object adsItensVendasPDVcd_taxa: TWideStringField
      FieldName = 'cd_taxa'
      Size = 5
    end
  end
  object adsEstLocal: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    CommandText = 'SELECT *'#13#10'FROM ESTLOCAL'#13#10#13#10'      '
    Parameters = <>
    Left = 328
    Top = 208
    object adsEstLocalCODLOC: TWideStringField
      FieldName = 'CODLOC'
      Size = 12
    end
    object adsEstLocalCODPRO: TWideStringField
      FieldName = 'CODPRO'
    end
    object adsEstLocalQTDEST: TFloatField
      FieldName = 'QTDEST'
    end
    object adsEstLocalQTDBLO: TFloatField
      FieldName = 'QTDBLO'
    end
    object adsEstLocalQTDRES: TFloatField
      FieldName = 'QTDRES'
    end
    object adsEstLocalQTDENP: TFloatField
      FieldName = 'QTDENP'
    end
    object adsEstLocalDATIPD: TDateTimeField
      FieldName = 'DATIPD'
    end
    object adsEstLocalCODUSU: TWideStringField
      FieldName = 'CODUSU'
    end
  end
  object adsEBS: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    CommandText = 
      'SELECT * '#13#10'FROM ESTMOVIMENTO '#13#10'WHERE CODLOC = '#39'1'#39'   '#13#10'      AND ' +
      'TIPREG = '#39'CUPOM-SS'#39'   '#13#10'      AND NRODOC = 95'#13#10
    Parameters = <>
    Left = 440
    Top = 272
  end
  object ADODataSet1: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    Parameters = <>
    Left = 256
    Top = 288
  end
  object dsLimiteCredito: TDataSource
    DataSet = adsLimiteCredito
    Left = 128
    Top = 272
  end
  object adsLimiteCredito: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    CommandText = 
      'SELECT SUM([L.Valor Original]) As VlrOriginal, E.Cr'#233'dito As VlrC' +
      'redito, E.APEL'#13#10'FROM EMPRESAS E'#13#10'LEFT JOIN LAN'#199'AMENTOS L'#13#10'  ON L' +
      '.Empresa = E.Apel'#13#10'where ((L.Pagamento is Null))'#13#10'GROUP BY E.CR'#201 +
      'DITO, E.APEL'#13#10#13#10
    Parameters = <>
    Left = 56
    Top = 272
    object adsLimiteCreditoVlrOriginal: TBCDField
      FieldName = 'VlrOriginal'
      DisplayFormat = '0.00'
      Precision = 19
    end
    object adsLimiteCreditoVlrCredito: TBCDField
      FieldName = 'VlrCredito'
      DisplayFormat = '0.00'
      Precision = 19
    end
  end
end
