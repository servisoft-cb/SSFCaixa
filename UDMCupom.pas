unit UDMCupom;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TDMCupom = class(TDataModule)
    sdsCupomFiscal: TSQLDataSet;
    dspCupomFiscal: TDataSetProvider;
    cdsCupomFiscal: TClientDataSet;
    dsCupomFiscal: TDataSource;
    dsCupomFiscal_Mestre: TDataSource;
    sdsCupomFiscalIt: TSQLDataSet;
    sdsCupomFiscalItID_CUPOM: TIntegerField;
    sdsCupomFiscalItITEM: TIntegerField;
    sdsCupomFiscalItCODCOR: TIntegerField;
    sdsCupomFiscalItQTD: TFloatField;
    sdsCupomFiscalItALIQICMS: TFloatField;
    sdsCupomFiscalItVLRUNIT: TFloatField;
    sdsCupomFiscalItPERCDESCONTO: TFloatField;
    sdsCupomFiscalItVLRDESCONTO: TFloatField;
    sdsCupomFiscalItBASEICMS: TFloatField;
    sdsCupomFiscalItVLRICMS: TFloatField;
    sdsCupomFiscalItVLRTOTAL: TFloatField;
    sdsCupomFiscalItCODNATOPER: TIntegerField;
    sdsCupomFiscalItNUMMOVEST: TIntegerField;
    sdsCupomFiscalItUNIDADE: TStringField;
    cdsCupomFiscalIt: TClientDataSet;
    cdsCupomFiscalItID_CUPOM: TIntegerField;
    cdsCupomFiscalItITEM: TIntegerField;
    cdsCupomFiscalItCODCOR: TIntegerField;
    cdsCupomFiscalItQTD: TFloatField;
    cdsCupomFiscalItALIQICMS: TFloatField;
    cdsCupomFiscalItVLRUNIT: TFloatField;
    cdsCupomFiscalItPERCDESCONTO: TFloatField;
    cdsCupomFiscalItVLRDESCONTO: TFloatField;
    cdsCupomFiscalItBASEICMS: TFloatField;
    cdsCupomFiscalItVLRICMS: TFloatField;
    cdsCupomFiscalItVLRTOTAL: TFloatField;
    cdsCupomFiscalItCODNATOPER: TIntegerField;
    cdsCupomFiscalItNUMMOVEST: TIntegerField;
    cdsCupomFiscalItUNIDADE: TStringField;
    dsCupomFiscalIt: TDataSource;
    sdsCupomFicalParc: TSQLDataSet;
    sdsCupomFicalParcID_CUPOM: TIntegerField;
    sdsCupomFicalParcPARCELA: TIntegerField;
    cdsCupomFiscalParc: TClientDataSet;
    cdsCupomFiscalParcID_CUPOM: TIntegerField;
    cdsCupomFiscalParcPARCELA: TIntegerField;
    dsCupomFiscalParc: TDataSource;
    sdsCupomFiscalItCANCELADO: TStringField;
    cdsCupomFiscalItCANCELADO: TStringField;
    sdsCupomFicalParcDTVENCIMENTO: TDateField;
    sdsCupomFicalParcVALOR: TFloatField;
    cdsCupomFiscalParcDTVENCIMENTO: TDateField;
    cdsCupomFiscalParcVALOR: TFloatField;
    sdsCupomFiscalItSITTRIB: TStringField;
    cdsCupomFiscalItSITTRIB: TStringField;
    sdsCupomFiscalID_CUPOM: TIntegerField;
    sdsCupomFiscalNUMCUPOM: TIntegerField;
    sdsCupomFiscalDTEMISSAO: TDateField;
    sdsCupomFiscalHREMISSAO: TTimeField;
    sdsCupomFiscalCODPESSOA: TIntegerField;
    sdsCupomFiscalTIPOPGTO: TStringField;
    sdsCupomFiscalCODCONDPGTO: TIntegerField;
    sdsCupomFiscalCODVENDEDOR: TIntegerField;
    sdsCupomFiscalPERCVENDEDOR: TFloatField;
    sdsCupomFiscalBASEICMS: TFloatField;
    sdsCupomFiscalVLRICMS: TFloatField;
    sdsCupomFiscalVLRPRODUTOS: TFloatField;
    sdsCupomFiscalVLRDESCONTO: TFloatField;
    sdsCupomFiscalVLRTOTAL: TFloatField;
    sdsCupomFiscalCANCELADO: TStringField;
    sdsCupomFiscalVLRRECEBIDO: TFloatField;
    sdsCupomFiscalVLRTROCO: TFloatField;
    sdsCupomFiscalNUMMOVFINANCEIRO: TIntegerField;
    sdsCupomFiscalCODCONTA: TIntegerField;
    sdsCupomFiscalFILIAL: TIntegerField;
    sdsCupomFiscalCODTIPOCOBRANCA: TIntegerField;
    sdsCupomFiscalNOME_PESSOA: TStringField;
    cdsCupomFiscalItlkNomeProduto: TStringField;
    cdsCupomFiscalID_CUPOM: TIntegerField;
    cdsCupomFiscalNUMCUPOM: TIntegerField;
    cdsCupomFiscalDTEMISSAO: TDateField;
    cdsCupomFiscalHREMISSAO: TTimeField;
    cdsCupomFiscalCODPESSOA: TIntegerField;
    cdsCupomFiscalTIPOPGTO: TStringField;
    cdsCupomFiscalCODCONDPGTO: TIntegerField;
    cdsCupomFiscalCODVENDEDOR: TIntegerField;
    cdsCupomFiscalPERCVENDEDOR: TFloatField;
    cdsCupomFiscalBASEICMS: TFloatField;
    cdsCupomFiscalVLRICMS: TFloatField;
    cdsCupomFiscalVLRPRODUTOS: TFloatField;
    cdsCupomFiscalVLRDESCONTO: TFloatField;
    cdsCupomFiscalVLRTOTAL: TFloatField;
    cdsCupomFiscalCANCELADO: TStringField;
    cdsCupomFiscalVLRRECEBIDO: TFloatField;
    cdsCupomFiscalVLRTROCO: TFloatField;
    cdsCupomFiscalNUMMOVFINANCEIRO: TIntegerField;
    cdsCupomFiscalCODCONTA: TIntegerField;
    cdsCupomFiscalFILIAL: TIntegerField;
    cdsCupomFiscalCODTIPOCOBRANCA: TIntegerField;
    cdsCupomFiscalNOME_PESSOA: TStringField;
    cdsCupomFiscalsdsCupomFicalParc: TDataSetField;
    cdsCupomFiscalsdsCupomFiscalIt: TDataSetField;
    sdsCupomFiscalItCODPRODUTO: TStringField;
    cdsCupomFiscalItCODPRODUTO: TStringField;
    sdsCupomFiscalAPEL_EBS: TStringField;
    cdsCupomFiscalAPEL_EBS: TStringField;
    sdsCupomFiscalItNUMSEQ_EBS: TIntegerField;
    cdsCupomFiscalItNUMSEQ_EBS: TIntegerField;
    sdsCupomFiscalNUMLANCAMENTO_EBS: TIntegerField;
    cdsCupomFiscalNUMLANCAMENTO_EBS: TIntegerField;
    sdsCupomFiscalItGRAVOU_ESTLOCAL_EBS: TStringField;
    cdsCupomFiscalItGRAVOU_ESTLOCAL_EBS: TStringField;
    sdsCupomFiscalCONFIRMACAO_EBS: TStringField;
    cdsCupomFiscalCONFIRMACAO_EBS: TStringField;
    sdsCupomFiscalItCONFIRMACAO_EBS: TStringField;
    cdsCupomFiscalItCONFIRMACAO_EBS: TStringField;
    sdsCupomFiscalAPEL_VENDEDOR_EBS: TStringField;
    cdsCupomFiscalAPEL_VENDEDOR_EBS: TStringField;
    sdsCupomFiscalCODEMPRESA: TStringField;
    cdsCupomFiscalCODEMPRESA: TStringField;
    sdsCupomFiscalUSUARIO: TStringField;
    cdsCupomFiscalUSUARIO: TStringField;
    sdsCupomFiscalFANTASIA: TStringField;
    cdsCupomFiscalFANTASIA: TStringField;
    sdsCupomFiscalIMPRIME_CUPOM: TStringField;
    cdsCupomFiscalIMPRIME_CUPOM: TStringField;
    cdsCupomFiscalItlkNomeProduto2: TStringField;
    sdsEmpresa: TSQLDataSet;
    sdsEmpresaID: TIntegerField;
    sdsEmpresaNOME: TStringField;
    sdsEmpresaENDERECO: TStringField;
    sdsEmpresaBAIRRO: TStringField;
    sdsEmpresaCEP: TStringField;
    sdsEmpresaCIDADE: TStringField;
    sdsEmpresaUF: TStringField;
    sdsEmpresaCPF_CNPJ: TStringField;
    sdsEmpresaPESSOA: TStringField;
    sdsEmpresaDDD: TIntegerField;
    sdsEmpresaFONE: TStringField;
    sdsEmpresaENDLOGO: TStringField;
    sdsEmpresaFANTASIA: TStringField;
    sdsEmpresaIMPRIME_CUPOM: TStringField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaCPF_CNPJ: TStringField;
    cdsEmpresaPESSOA: TStringField;
    cdsEmpresaDDD: TIntegerField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaENDLOGO: TStringField;
    cdsEmpresaFANTASIA: TStringField;
    cdsEmpresaIMPRIME_CUPOM: TStringField;
    dsEmpresa: TDataSource;
    sdsProduto: TSQLDataSet;
    sdsProdutoID: TIntegerField;
    sdsProdutoCODBARRA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoUNIDADE: TStringField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoPRECO_COMPRA: TFloatField;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoCODBARRA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoPRECO_COMPRA: TFloatField;
    dsProduto: TDataSource;
    sdsProdutoLINHA_2: TStringField;
    cdsProdutoLINHA_2: TStringField;
    sdsProdutoINATIVO: TStringField;
    cdsProdutoINATIVO: TStringField;
    dsmProduto: TDataSource;
    sdsProdutoPreco: TSQLDataSet;
    sdsProdutoPrecoPRODUTO_ID: TIntegerField;
    sdsProdutoPrecoEMPRESA_ID: TIntegerField;
    cdsProdutoPreco: TClientDataSet;
    cdsProdutoPrecoPRODUTO_ID: TIntegerField;
    cdsProdutoPrecoEMPRESA_ID: TIntegerField;
    dsProdutoPreco: TDataSource;
    cdsProdutosdsProdutoPreco: TDataSetField;
    sdsProdutoPrecoPRECO_COMPRA: TFloatField;
    sdsProdutoPrecoPRECO_VENDA: TFloatField;
    cdsProdutoPrecoPRECO_COMPRA: TFloatField;
    cdsProdutoPrecoPRECO_VENDA: TFloatField;
    sdsCupomFiscalCODUNIDADE: TStringField;
    cdsCupomFiscalCODUNIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCupomFiscalUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsCupomFiscalBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCupom: TDMCupom;
  ctCupomFiscal : String;

implementation

uses DmdDatabase, UDMProduto;

{$R *.dfm}

procedure TDMCupom.DataModuleCreate(Sender: TObject);
begin
  ctCupomFiscal := sdsCupomFiscal.CommandText;
end;

procedure TDMCupom.dspCupomFiscalUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

procedure TDMCupom.cdsCupomFiscalBeforePost(DataSet: TDataSet);
begin
  if DMCupom.cdsCupomFiscalNUMCUPOM.AsInteger <= 0 then
    DMCupom.cdsCupomFiscalNUMCUPOM.AsInteger := DMCupom.cdsCupomFiscalID_CUPOM.AsInteger;
end;

end.
