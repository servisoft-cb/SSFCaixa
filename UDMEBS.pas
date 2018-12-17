unit UDMEBS;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMEBS = class(TDataModule)
    adsEstMovimento: TADODataSet;
    adsEstMovimentoCODLOC: TWideStringField;
    adsEstMovimentoCODPRO: TWideStringField;
    adsEstMovimentoDATMOV: TDateTimeField;
    adsEstMovimentoSEQMOV: TIntegerField;
    adsEstMovimentoCODPRJ: TIntegerField;
    adsEstMovimentoNRODOC: TIntegerField;
    adsEstMovimentoTIPREG: TWideStringField;
    adsEstMovimentoCODFOR: TWideStringField;
    adsEstMovimentoSEQITE: TIntegerField;
    adsEstMovimentoENTSAI: TWideStringField;
    adsEstMovimentoQTDMOV: TFloatField;
    adsEstMovimentoVLRMOV: TFloatField;
    adsEstMovimentoQTDANT: TFloatField;
    adsEstMovimentoQTDAPO: TFloatField;
    adsEstMovimentoORIMOV: TWideStringField;
    adsEstMovimentoCODCCU: TIntegerField;
    adsEstMovimentoCODCTF: TIntegerField;
    adsEstMovimentoHORMOV: TIntegerField;
    adsEstMovimentoMIGMOV: TBooleanField;
    adsEstMovimentoCUSPRO: TFloatField;
    adsEstMovimentoANOASS: TIntegerField;
    adsEstMovimentoVLRANT: TFloatField;
    adsEstMovimentoVLRAPOS: TFloatField;
    adsEstMovimentoCUSTMEDPRO: TFloatField;
    adsEstMovimentoregistro_integrado: TBooleanField;
    adsLancamentos: TADODataSet;
    adsLancamentosCodigo: TIntegerField;
    adsLancamentosDescricao: TWideStringField;
    adsLancamentosEmissao: TDateTimeField;
    adsLancamentosLiberacao: TDateTimeField;
    adsLancamentosAcrescimo: TBCDField;
    adsLancamentosSituacao: TWideStringField;
    adsLancamentosMarcacao: TBooleanField;
    adsLancamentosUsuario: TWideStringField;
    adsLancamentosAlteracao: TDateTimeField;
    adsLancamentosPagRec: TWideStringField;
    adsLancamentosParcela: TSmallintField;
    adsLancamentosEmpresa: TWideStringField;
    adsLancamentosTipo: TWideStringField;
    adsLancamentosVencimento: TDateTimeField;
    adsLancamentosPagamento: TDateTimeField;
    adsLancamentosValorOriginal: TBCDField;
    adsLancamentosAbatimento: TBCDField;
    adsLancamentosBanco: TIntegerField;
    adsLancamentosConta: TIntegerField;
    adsLancamentosCentro: TIntegerField;
    adsLancamentosCheque: TIntegerField;
    adsLancamentosMoeda: TWideStringField;
    adsLancamentosValordaMoeda: TBCDField;
    adsLancamentosControle: TWideStringField;
    adsLancamentosEnviado: TWideStringField;
    adsLancamentosObs: TMemoField;
    adsLancamentosBorder: TIntegerField;
    adsLancamentosDataIntegraoFatoGerador: TDateTimeField;
    adsLancamentosDataIntegraoFatoPagamento: TDateTimeField;
    adsLancamentosLINDIG: TWideStringField;
    adsLancamentosConciliado: TBooleanField;
    adsLancamentosCarteira: TWideStringField;
    adsLancamentosPrevisao: TBooleanField;
    adsLancamentosVlrMrD: TBCDField;
    adsLancamentosPerMrD: TBCDField;
    adsLancamentosSeqNossoNumero: TFloatField;
    adsLancamentosVlrDsP: TBCDField;
    adsLancamentosPerJur: TBCDField;
    adsLancamentosVlrJur: TBCDField;
    adsLancamentosCODPRJ: TIntegerField;
    adsLancamentosCODFPG: TIntegerField;
    adsLancamentosCheBan: TIntegerField;
    adsLancamentosCheAge: TWideStringField;
    adsLancamentosCheEmi: TWideStringField;
    adsLancamentosCheCco: TWideStringField;
    adsLancamentosPerMul: TBCDField;
    adsLancamentosVlrMul: TBCDField;
    adsLancamentosCODBAR: TWideStringField;
    adsLancamentosNOSNUM: TWideStringField;
    adsLancamentosAGECCE: TWideStringField;
    adsLancamentosLOCPAG: TWideStringField;
    adsLancamentosINSTRU: TWideStringField;
    adsLancamentoscd_operacao_contabil: TIntegerField;
    adsLancamentosregistro_integrado: TBooleanField;
    adsLancamentoscd_operacao_baixa: TIntegerField;
    adsLancamentosbaixa_integrado: TBooleanField;
    adsLancamentosproveniente_rateio: TBooleanField;
    adsLancamentosparc_origem_baixa: TIntegerField;
    adsLancamentosid_carteira: TIntegerField;
    adsLancamentoscod_motivo: TWideStringField;
    adsLancamentosdesc_motivo: TWideStringField;
    adsLancamentosultima_mov_cnab: TIntegerField;
    adsLancamentosultima_data_cnab: TDateTimeField;
    adsLancamentoscd_cobranca: TIntegerField;
    adsLancamentosseq_remessa: TIntegerField;
    adsUltimasComprasVendas: TADODataSet;
    adsUltimasComprasVendasNumero: TIntegerField;
    adsUltimasComprasVendasTipoReg: TWideStringField;
    adsUltimasComprasVendasVlrUnitario: TBCDField;
    adsUltimasComprasVendasObs: TMemoField;
    adsUltimasComprasVendasProduto: TWideStringField;
    adsUltimasComprasVendasEmpresa: TWideStringField;
    adsUltimasComprasVendasTipo: TWideStringField;
    adsUltimasComprasVendasData: TDateTimeField;
    adsUltimasComprasVendasQuantidade: TFloatField;
    adsUltimasComprasVendasItem: TIntegerField;
    adsVendasPDV: TADODataSet;
    adsVendasPDVTipoReg: TWideStringField;
    adsVendasPDVNumero: TIntegerField;
    adsVendasPDVDtEmissao: TDateTimeField;
    adsVendasPDVTipoEmpresa: TWideStringField;
    adsVendasPDVCondPagamento: TSmallintField;
    adsVendasPDVFretePorConta: TWideStringField;
    adsVendasPDVRegImpresso: TBooleanField;
    adsVendasPDVSituacao: TWideStringField;
    adsVendasPDVViadeTransporte: TWideStringField;
    adsVendasPDVVlrDescontos: TFloatField;
    adsVendasPDVVlrTotalMercadorias: TFloatField;
    adsVendasPDVVlrTotal: TFloatField;
    adsVendasPDVNatOperacao: TWideStringField;
    adsVendasPDVFornecedor: TWideStringField;
    adsVendasPDVEmpresa: TWideStringField;
    adsVendasPDVMoeda: TWideStringField;
    adsVendasPDVDespesaFinanceira: TFloatField;
    adsVendasPDVDescontoemValor: TBCDField;
    adsVendasPDVDescontoemPorcentagem: TFloatField;
    adsVendasPDVTransportadora: TIntegerField;
    adsVendasPDVValordoFrete: TFloatField;
    adsVendasPDVCadastradopor: TWideStringField;
    adsVendasPDVDuplicatasLiberadopor: TWideStringField;
    adsVendasPDVValidade: TDateTimeField;
    adsVendasPDVMotivo: TWideStringField;
    adsVendasPDVData: TDateTimeField;
    adsVendasPDVHora: TDateTimeField;
    adsVendasPDVSrie: TWideStringField;
    adsVendasPDVPedidodoCliente: TWideStringField;
    adsVendasPDVTaxasExtras: TFloatField;
    adsVendasPDVValordoSinal: TFloatField;
    adsVendasPDVDatadoSinal: TDateTimeField;
    adsVendasPDVPesoLquido: TFloatField;
    adsVendasPDVPesoBruto: TFloatField;
    adsVendasPDVVolumes: TFloatField;
    adsVendasPDVEspcie: TWideStringField;
    adsVendasPDVValordoSeguro: TFloatField;
    adsVendasPDVMarcadaNota: TWideStringField;
    adsVendasPDVDescontoEspecial: TFloatField;
    adsVendasPDVContato: TWideStringField;
    adsVendasPDVDepartamento: TWideStringField;
    adsVendasPDVFone: TWideStringField;
    adsVendasPDVFax: TWideStringField;
    adsVendasPDVObservaes: TMemoField;
    adsVendasPDVObservaesInternas: TMemoField;
    adsVendasPDVEndereodeEntrega: TWideStringField;
    adsVendasPDVBairrodeEntrega: TWideStringField;
    adsVendasPDVCEPdeEntrega: TWideStringField;
    adsVendasPDVCidadedeEntrega: TWideStringField;
    adsVendasPDVEstadodeEntrega: TWideStringField;
    adsVendasPDVPessoa: TWideStringField;
    adsVendasPDVCNPJdeEntrega: TWideStringField;
    adsVendasPDVIEdeEntrega: TWideStringField;
    adsVendasPDVFonedeEntrega: TWideStringField;
    adsVendasPDVRamaldeEntrega: TWideStringField;
    adsVendasPDVEndereodeCobrana: TWideStringField;
    adsVendasPDVBairrodeCobrana: TWideStringField;
    adsVendasPDVCEPdeCobrana: TWideStringField;
    adsVendasPDVCidadedeCobrana: TWideStringField;
    adsVendasPDVEstadodeCobrana: TWideStringField;
    adsVendasPDVFonedeCobrana: TWideStringField;
    adsVendasPDVRamaldeCobrana: TWideStringField;
    adsVendasPDVEmitentedaCarga: TWideStringField;
    adsVendasPDVNaturezadaCarga: TWideStringField;
    adsVendasPDVNotaFiscaldaCarga: TIntegerField;
    adsVendasPDVValordasMercadoriasdaCarga: TFloatField;
    adsVendasPDVBasedeICMS: TFloatField;
    adsVendasPDVBasedeIPI: TFloatField;
    adsVendasPDVTotaldeICMS: TFloatField;
    adsVendasPDVBasedeICMSdeSubstituio: TFloatField;
    adsVendasPDVTotaldeICMSdeSubstituio: TFloatField;
    adsVendasPDVTotaldeFrete: TFloatField;
    adsVendasPDVReembolso_Frete: TFloatField;
    adsVendasPDVTotaldeSeguro: TFloatField;
    adsVendasPDVTotaldeDespesas: TFloatField;
    adsVendasPDVTotaldeTaxas: TFloatField;
    adsVendasPDVIPInaBasedeICMS: TFloatField;
    adsVendasPDVTotaldeIPI: TFloatField;
    adsVendasPDVTotaldeModeObra: TFloatField;
    adsVendasPDVTotaldeINSS: TFloatField;
    adsVendasPDVTotaldeISS: TFloatField;
    adsVendasPDVTotaldeIRF: TFloatField;
    adsVendasPDVTotaldeOUTROS: TFloatField;
    adsVendasPDVDescontoFinanceiro: TFloatField;
    adsVendasPDVBanco: TIntegerField;
    adsVendasPDVConta: TIntegerField;
    adsVendasPDVDescriodaTaxa: TWideStringField;
    adsVendasPDVDespesadeImportao: TFloatField;
    adsVendasPDVCotaodaDI: TFloatField;
    adsVendasPDVPlacadoVeculo: TWideStringField;
    adsVendasPDVLocaldeEmbarque: TWideStringField;
    adsVendasPDVLocaldeDesembarque: TWideStringField;
    adsVendasPDVTotaldeQuantidade: TFloatField;
    adsVendasPDVComplementodaNaturezadeOperao: TWideStringField;
    adsVendasPDVTipodeRegistrodaNotaComplementar: TWideStringField;
    adsVendasPDVNmerodaNotaComplementar: TIntegerField;
    adsVendasPDVNotaprovenientedoVendasaVarejo: TBooleanField;
    adsVendasPDVTotaldeISSRetidonaFonte: TFloatField;
    adsVendasPDVDataProgramada: TDateTimeField;
    adsVendasPDVPercentualdeDescontoGeral: TFloatField;
    adsVendasPDVTotaldeImpostodeImportao: TFloatField;
    adsVendasPDVCaixa: TSmallintField;
    adsVendasPDVDescontoLista: TFloatField;
    adsVendasPDVPercFrete: TFloatField;
    adsVendasPDVPercEmbalagem: TFloatField;
    adsVendasPDVDescMedio: TFloatField;
    adsVendasPDVMargemMedia: TFloatField;
    adsVendasPDVMargemFinal: TFloatField;
    adsVendasPDVMerTerceiro: TBooleanField;
    adsVendasPDVEmpProprietaria: TWideStringField;
    adsVendasPDVCODPRJ: TIntegerField;
    adsVendasPDVRegInt: TWideStringField;
    adsVendasPDVTotBpc: TFloatField;
    adsVendasPDVTotPis: TFloatField;
    adsVendasPDVTotCof: TFloatField;
    adsVendasPDVTOTCSL: TFloatField;
    adsVendasPDVVLRDES: TBCDField;
    adsVendasPDVPERDES: TFloatField;
    adsVendasPDVSLDSIN: TFloatField;
    adsVendasPDVEEMAIL: TWideStringField;
    adsVendasPDVTABPRECO: TIntegerField;
    adsVendasPDVcd_caixa: TIntegerField;
    adsVendasPDVCod_Imp_Fiscal: TIntegerField;
    adsVendasPDVcnpj_cpf: TWideStringField;
    adsVendasPDVnr_reducoes_z: TIntegerField;
    adsVendasPDVcoo: TIntegerField;
    adsVendasPDVnome_cliente: TWideStringField;
    adsVendasPDVmeio_pagto: TWideStringField;
    adsItensVendasPDV: TADODataSet;
    adsItensVendasPDVTipoReg: TWideStringField;
    adsItensVendasPDVNumero: TIntegerField;
    adsItensVendasPDVDescricao: TWideStringField;
    adsItensVendasPDVDestinacao: TWideStringField;
    adsItensVendasPDVTipoVenda: TWideStringField;
    adsItensVendasPDVVlrOriginal: TFloatField;
    adsItensVendasPDVVlrDesconto: TFloatField;
    adsItensVendasPDVVlrLiquido: TFloatField;
    adsItensVendasPDVVlrIcms: TFloatField;
    adsItensVendasPDVVlrIPI: TFloatField;
    adsItensVendasPDVSituacao: TWideStringField;
    adsItensVendasPDVFornecedor: TWideStringField;
    adsItensVendasPDVItem: TSmallintField;
    adsItensVendasPDVTipodoPedidoOramento: TWideStringField;
    adsItensVendasPDVNmerodoPedidoOramento: TIntegerField;
    adsItensVendasPDVItemdoPedidoOramento: TSmallintField;
    adsItensVendasPDVTabeladePreos: TIntegerField;
    adsItensVendasPDVProduto: TWideStringField;
    adsItensVendasPDVComplemento: TWideStringField;
    adsItensVendasPDVServio: TIntegerField;
    adsItensVendasPDVDescriodoServio: TMemoField;
    adsItensVendasPDVUnidade: TWideStringField;
    adsItensVendasPDVMarca: TWideStringField;
    adsItensVendasPDVSituaoTributria: TWideStringField;
    adsItensVendasPDVNaturezadeOperao: TWideStringField;
    adsItensVendasPDVComplementodaNatureza: TWideStringField;
    adsItensVendasPDVQuantidade: TFloatField;
    adsItensVendasPDVQuantidadedeDesconto: TFloatField;
    adsItensVendasPDVPorcentagemdeDesconto: TFloatField;
    adsItensVendasPDVICMS: TFloatField;
    adsItensVendasPDVDescontodeICMS: TFloatField;
    adsItensVendasPDVReduodeBase: TFloatField;
    adsItensVendasPDVAcrscimodeBase: TFloatField;
    adsItensVendasPDVAcrscimodeICMS: TFloatField;
    adsItensVendasPDVReduodeICMS: TFloatField;
    adsItensVendasPDVAlquotadeICMSdeSubstituio: TFloatField;
    adsItensVendasPDVIPI: TFloatField;
    adsItensVendasPDVIRF: TFloatField;
    adsItensVendasPDVINSS: TFloatField;
    adsItensVendasPDVISS: TFloatField;
    adsItensVendasPDVOUTROS: TFloatField;
    adsItensVendasPDVVendedor01: TSmallintField;
    adsItensVendasPDVComisso01: TFloatField;
    adsItensVendasPDVVendedor02: TSmallintField;
    adsItensVendasPDVComisso02: TFloatField;
    adsItensVendasPDVVendedor03: TSmallintField;
    adsItensVendasPDVComisso03: TFloatField;
    adsItensVendasPDVPrazodeEntregaInicial: TSmallintField;
    adsItensVendasPDVPrazodeEntregaFinal: TSmallintField;
    adsItensVendasPDVObservaes: TMemoField;
    adsItensVendasPDVDatadaPreviso: TDateTimeField;
    adsItensVendasPDVDatadaBaixa: TDateTimeField;
    adsItensVendasPDVQuantidadeBaixada: TFloatField;
    adsItensVendasPDVCentrodeCusto: TIntegerField;
    adsItensVendasPDVCadastradopor: TWideStringField;
    adsItensVendasPDVCrditoLiberadopor: TWideStringField;
    adsItensVendasPDVNotadeDevoluo: TIntegerField;
    adsItensVendasPDVTipodeDevoluo: TWideStringField;
    adsItensVendasPDVTipodedesconto: TWideStringField;
    adsItensVendasPDVPedidoLiberadopor: TWideStringField;
    adsItensVendasPDVValorLiberadopor: TWideStringField;
    adsItensVendasPDVEmpresaCotada: TWideStringField;
    adsItensVendasPDVComissoLiberadapor: TWideStringField;
    adsItensVendasPDVDescontoLiberadopor: TWideStringField;
    adsItensVendasPDVValordoFretenoIPI: TFloatField;
    adsItensVendasPDVDatadaCotao: TDateTimeField;
    adsItensVendasPDVImpostodeImportao: TFloatField;
    adsItensVendasPDVFreteeSeguro: TFloatField;
    adsItensVendasPDVRateiodeImportao: TFloatField;
    adsItensVendasPDVLote: TWideStringField;
    adsItensVendasPDVValordoBeneficiamento: TFloatField;
    adsItensVendasPDVSrie: TWideStringField;
    adsItensVendasPDVUnEnt: TWideStringField;
    adsItensVendasPDVUnEntQtd: TFloatField;
    adsItensVendasPDVUnEntCampo1: TFloatField;
    adsItensVendasPDVUnEntCampo2: TFloatField;
    adsItensVendasPDVUnEntCampo3: TFloatField;
    adsItensVendasPDVUnEntDesc: TWideStringField;
    adsItensVendasPDVUnAux: TWideStringField;
    adsItensVendasPDVUnAuxQtd: TFloatField;
    adsItensVendasPDVUnAuxCampo1: TFloatField;
    adsItensVendasPDVUnAuxCampo2: TFloatField;
    adsItensVendasPDVUnAuxCampo3: TFloatField;
    adsItensVendasPDVUnAuxDesc: TWideStringField;
    adsItensVendasPDVUnAux1: TWideStringField;
    adsItensVendasPDVUnAux1Qtd: TFloatField;
    adsItensVendasPDVUnAux1Campo1: TFloatField;
    adsItensVendasPDVUnAux1Campo2: TFloatField;
    adsItensVendasPDVUnAux1Campo3: TFloatField;
    adsItensVendasPDVUnAux1Desc: TWideStringField;
    adsItensVendasPDVMargem: TFloatField;
    adsItensVendasPDVMargemPercentual: TFloatField;
    adsItensVendasPDVValorBruto: TFloatField;
    adsItensVendasPDVVlrAdiBasICMS: TFloatField;
    adsItensVendasPDVCODPRJ: TIntegerField;
    adsItensVendasPDVCODLOC: TWideStringField;
    adsItensVendasPDVQTDRES: TFloatField;
    adsItensVendasPDVVlrBpc: TFloatField;
    adsItensVendasPDVPerPis: TFloatField;
    adsItensVendasPDVPerCof: TFloatField;
    adsItensVendasPDVVlrPis: TFloatField;
    adsItensVendasPDVVlrCof: TFloatField;
    adsItensVendasPDVVlrIIm: TFloatField;
    adsItensVendasPDVVlrUUV: TFloatField;
    adsItensVendasPDVPerIcm: TFloatField;
    adsItensVendasPDVPerIpi: TFloatField;
    adsItensVendasPDVVlrBic: TFloatField;
    adsItensVendasPDVVlrIic: TFloatField;
    adsItensVendasPDVVlrOic: TFloatField;
    adsItensVendasPDVVlrBip: TFloatField;
    adsItensVendasPDVVlrOip: TFloatField;
    adsItensVendasPDVVlrIip: TFloatField;
    adsItensVendasPDVVlrIst: TFloatField;
    adsItensVendasPDVVlrBis: TFloatField;
    adsItensVendasPDVVlrIss: TFloatField;
    adsItensVendasPDVVlrBss: TFloatField;
    adsItensVendasPDVVlrIis: TFloatField;
    adsItensVendasPDVVlrIRF: TFloatField;
    adsItensVendasPDVVLRBIR: TFloatField;
    adsItensVendasPDVVlrBru: TFloatField;
    adsItensVendasPDVPERCSL: TFloatField;
    adsItensVendasPDVVLRCSL: TFloatField;
    adsItensVendasPDVVlrRdg: TFloatField;
    adsItensVendasPDVcod_Similar: TWideStringField;
    adsItensVendasPDVcd_caixa: TIntegerField;
    adsItensVendasPDVCod_Imp_Fiscal: TIntegerField;
    adsItensVendasPDVnr_reducoes_z: TIntegerField;
    adsItensVendasPDVcoo: TIntegerField;
    adsItensVendasPDVseq_taxa: TWideStringField;
    adsItensVendasPDVcd_taxa: TWideStringField;
    adsEstLocal: TADODataSet;
    adsEstLocalCODLOC: TWideStringField;
    adsEstLocalCODPRO: TWideStringField;
    adsEstLocalQTDEST: TFloatField;
    adsEstLocalQTDBLO: TFloatField;
    adsEstLocalQTDRES: TFloatField;
    adsEstLocalQTDENP: TFloatField;
    adsEstLocalDATIPD: TDateTimeField;
    adsEstLocalCODUSU: TWideStringField;
    adsEBS: TADODataSet;
    ADODataSet1: TADODataSet;
    dsLimiteCredito: TDataSource;
    adsLimiteCredito: TADODataSet;
    adsLimiteCreditoVlrOriginal: TBCDField;
    adsLimiteCreditoVlrCredito: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adsLancamentosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vSeqMovEst_EBS : Integer;
    vLancamento_EBS : Integer;

    procedure Abrir_EstMovimento;
    procedure Abrir_Lancamentos;
    procedure Abrir_UltimaCompraVenda;
    procedure Abrir_VendasPDV;
    procedure Abrir_ItensVendasPDV;
    procedure Abrir_EstLocal(CodProduto : String);
    procedure Abrir_LimiteCredito(CodFuncionario : String);

  end;

var
  DMEBS: TDMEBS;
  ctEstMovimento : String;
  ctLancamentos : String;
  ctUltimaCompraVenda : String;
  ctVendasPDV : String;
  ctItensVendasPDV : String;
  ctEstLocal : String;
  ctLimiteCredito : String;

implementation

uses DmdDatabase_EBS;

{$R *.dfm}

procedure TDMEBS.Abrir_EstLocal(CodProduto : String);
begin
  adsEstLocal.Close;
  adsEstLocal.CommandText := ctEstLocal
                           + ' WHERE CODLOC = ' + QuotedStr('3')
                           + '   AND CODPRO = ' + QuotedStr(CodProduto);
  adsEstLocal.Open;
end;

procedure TDMEBS.Abrir_EstMovimento;
begin
  adsEstMovimento.Close;
  adsEstMovimento.CommandText := ctEstMovimento
                               + ' WHERE CODLOC = ' + QuotedStr('99999');
  adsEstMovimento.Open;
end;

procedure TDMEBS.Abrir_ItensVendasPDV;
begin
  adsItensVendasPDV.Close;
  adsItensVendasPDV.CommandText := ctItensVendasPDV
                              + ' WHERE 0 = 1';
  adsItensVendasPDV.Open;
end;

procedure TDMEBS.Abrir_Lancamentos;
begin
  adsLancamentos.Close;
  adsLancamentos.CommandText := ctLancamentos
                              + ' WHERE PagRec = ' + QuotedStr('R');
  adsLancamentos.Open;
end;

procedure TDMEBS.Abrir_UltimaCompraVenda;
begin
  adsUltimasComprasVendas.Close;
  adsUltimasComprasVendas.CommandText := ctUltimaCompraVenda
                                       + ' WHERE 0 = 1';
  adsUltimasComprasVendas.Open;
end;

procedure TDMEBS.Abrir_VendasPDV;
begin
  adsVendasPDV.Close;
  adsVendasPDV.CommandText := ctVendasPDV
                            + ' WHERE 0 = 1';
  adsVendasPDV.Open;
end;

procedure TDMEBS.DataModuleCreate(Sender: TObject);
begin
  ctEstMovimento      := adsEstMovimento.CommandText;
  ctLancamentos       := adsLancamentos.CommandText;
  ctUltimaCompraVenda := adsUltimasComprasVendas.CommandText;
  ctVendasPDV         := adsVendasPDV.CommandText;
  ctItensVendasPDV    := adsItensVendasPDV.CommandText;
  ctEstLocal          := adsEstLocal.CommandText;
  ctLimiteCredito     := adsLimiteCredito.CommandText; 
end;

procedure TDMEBS.adsLancamentosAfterInsert(DataSet: TDataSet);
begin
  adsLancamentosEmpresa.AsString := 'ATENDE BEM';
end;

procedure TDMEBS.Abrir_LimiteCredito(CodFuncionario: String);
begin
  adsLimiteCredito.Close;
  adsLimiteCredito.CommandText := 'SELECT SUM([L.Valor Original]) As VlrOriginal, E.Crédito As VlrCredito, E.APEL '
                                + ' FROM EMPRESAS E '
                                + ' LEFT JOIN LANÇAMENTOS L '
                                + '  ON E.Apel = L.Empresa '
                                + ' WHERE ((L.Pagamento is Null)) '
                                + '   AND E.APEL = ' + QuotedStr(CodFuncionario)
                                + ' GROUP BY E.CRÉDITO, E.APEL';
  adsLimiteCredito.Open;
end;

end.
