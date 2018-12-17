unit UDMPessoa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, ADODB;

type
  TDMPessoa = class(TDataModule)
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    dsPessoa: TDataSource;
    sdsPessoaAPEL_EBS: TStringField;
    sdsPessoaNOME: TStringField;
    sdsPessoaDEDO_D1: TBlobField;
    sdsPessoaDEDO_D2: TBlobField;
    sdsPessoaDEDO_E1: TBlobField;
    sdsPessoaDEDO_E2: TBlobField;
    sdsPessoaTIPO: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaENDNUM: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaCIDADE: TStringField;
    sdsPessoaFOTO: TBlobField;
    sdsPessoaSITUACAO: TStringField;
    sdsPessoaDTADMISSAO: TDateField;
    sdsPessoaDTDEMISSAO: TDateField;
    sdsPessoaVLRLIMITECREDITO: TFloatField;
    sdsPessoaDTCADASTRO: TDateField;
    sdsPessoaHRCADASTRO: TTimeField;
    adsEmpresas: TADODataSet;
    adsEmpresasApel: TWideStringField;
    adsEmpresasRazo: TWideStringField;
    adsEmpresasTipo: TWideStringField;
    adsEmpresasCadastro: TDateTimeField;
    adsEmpresasPessoa: TWideStringField;
    adsEmpresasCNPJCPF: TWideStringField;
    adsEmpresasIEstRG: TWideStringField;
    adsEmpresasCCM: TWideStringField;
    adsEmpresasRamo: TIntegerField;
    adsEmpresasEndereo: TWideStringField;
    adsEmpresasBairro: TWideStringField;
    adsEmpresasCEP: TWideStringField;
    adsEmpresasCidade: TWideStringField;
    adsEmpresasEstado: TWideStringField;
    adsEmpresasSuframa: TWideStringField;
    adsEmpresasRegio: TWideStringField;
    adsEmpresasPas: TWideStringField;
    adsEmpresasFone1: TWideStringField;
    adsEmpresasRamal1: TWideStringField;
    adsEmpresasFone2: TWideStringField;
    adsEmpresasRamal2: TWideStringField;
    adsEmpresasFax: TWideStringField;
    adsEmpresasContato: TWideStringField;
    adsEmpresasDpto: TWideStringField;
    adsEmpresasVendedor: TIntegerField;
    adsEmpresasCondPag: TSmallintField;
    adsEmpresasCrdito: TBCDField;
    adsEmpresasTransp: TIntegerField;
    adsEmpresasemail: TWideStringField;
    adsEmpresasSite: TWideStringField;
    adsEmpresasBloqueado: TWideStringField;
    adsEmpresasObsFinanceira: TMemoField;
    adsEmpresasObsGerais: TMemoField;
    adsEmpresasObservaesGlobais: TMemoField;
    adsEmpresasHora: TWideStringField;
    adsEmpresasHora2: TWideStringField;
    adsEmpresasTabeladePreos: TIntegerField;
    adsEmpresasVendedor2: TIntegerField;
    adsEmpresasVendedor3: TIntegerField;
    adsEmpresasltimaAtualizao: TDateTimeField;
    adsEmpresasltimaAtualizaoHora: TDateTimeField;
    adsEmpresasProcedncia: TSmallintField;
    adsEmpresasClienteBloqueado: TBooleanField;
    adsEmpresasTipodeCompra: TWideStringField;
    adsEmpresasConta: TIntegerField;
    adsEmpresasBanco: TIntegerField;
    adsEmpresasContaContbilCliente: TIntegerField;
    adsEmpresasContaContbilFornecedor: TIntegerField;
    adsEmpresasAgncia: TWideStringField;
    adsEmpresasDgitodaAgncia: TWideStringField;
    adsEmpresasContaCorrente: TWideStringField;
    adsEmpresasDgitodaContaCorrente: TWideStringField;
    adsEmpresasDescontoporPontualidade: TFloatField;
    adsEmpresasDescPorCliente: TFloatField;
    adsEmpresasFixVar: TWideStringField;
    adsEmpresasAbrEmp: TWideStringField;
    adsEmpresasPercFrete: TFloatField;
    adsEmpresasPercEmbalagem: TFloatField;
    adsEmpresasBCOPGT: TWideStringField;
    adsEmpresasCONMRE: TWideStringField;
    adsEmpresasVariasTabelas: TBooleanField;
    adsEmpresasClienteIntFiscal: TIntegerField;
    adsEmpresasFornecedorIntFiscal: TIntegerField;
    adsEmpresasCodFoxDados: TIntegerField;
    adsEmpresascalcula_pis: TBooleanField;
    adsEmpresascalcula_cofins: TBooleanField;
    adsEmpresascontribuinte_icms: TBooleanField;
    adsEmpresaschk_simples_nacional: TBooleanField;
    adsEmpresascd_municipio_ibge: TIntegerField;
    adsEmpresascd_cnae_fiscal: TIntegerField;
    adsEmpresascod_exportador: TWideStringField;
    adsEmpresascodigo_formapagamento: TIntegerField;
    adsEmpresasper_credito_icms: TFloatField;
    adsEmpresasemail_nfe: TWideStringField;
    adsEmpresasdescontarbaseST_SUFRAMA: TBooleanField;
    sdsPessoaCEP: TStringField;
    sdsPessoaUF: TStringField;
    sdsPessoaCANCELARCUPOM: TStringField;
    sdsPessoaCONSULTARCUPOM: TStringField;
    sdsPessoaACESSARCUPOM: TStringField;
    sdsPessoaDigital: TSQLDataSet;
    dsPessoalDigital: TDataSource;
    sdsPessoaID_PESSOA: TIntegerField;
    sdsPessoaDigitalID_PESSOA: TIntegerField;
    sdsPessoaDigitalDEDO: TIntegerField;
    sdsPessoaDigitalAMOSTRA: TIntegerField;
    dspPessoaDigital: TDataSetProvider;
    sdsPessoaID: TIntegerField;
    sdsPessoaENDERECO_FOTO: TStringField;
    sdsPessoaDigitalOra: TSQLDataSet;
    cdsPessoaDigitalOra: TClientDataSet;
    dsPessoaDigitalOra: TDataSource;
    dspPessoaDigitalOra: TDataSetProvider;
    sdsPessoaDigitalOraID: TIntegerField;
    sdsPessoaDigitalOraEMPRESA: TStringField;
    sdsPessoaDigitalOraPESSOA: TIntegerField;
    sdsPessoaDigitalOraDIGITAL: TBlobField;
    cdsPessoaDigitalOraID: TIntegerField;
    cdsPessoaDigitalOraEMPRESA: TStringField;
    cdsPessoaDigitalOraPESSOA: TIntegerField;
    cdsPessoaDigitalOraDIGITAL: TBlobField;
    sdsPessoaDigitalOraNOME: TStringField;
    cdsPessoaDigitalOraNOME: TStringField;
    sdsPessoaDigitalOraSENHA: TStringField;
    cdsPessoaDigitalOraSENHA: TStringField;
    sdsPessoaDigitalOraUNIDADE: TStringField;
    cdsPessoaDigitalOraUNIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPessoaNewRecord(DataSet: TDataSet);
    procedure cdsPessoaBeforePost(DataSet: TDataSet);
    procedure cdsPessoaDigitalOraAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Abrir_Pessoa(Tipo, Situacao : String; ID : Integer); //F= Funcionário

  end;

var
  DMPessoa: TDMPessoa;
  ctPessoa : String;

implementation

uses DmdDatabase, DmdDatabase_EBS;

{$R *.dfm}

procedure TDMPessoa.DataModuleCreate(Sender: TObject);
begin
  ctPessoa := sdsPessoa.CommandText;
end;

procedure TDMPessoa.cdsPessoaNewRecord(DataSet: TDataSet);
begin
{  DMPessoa.cdsPessoaSITUACAO.AsString        := 'A';
  DMPessoa.cdsPessoaVLRLIMITECREDITO.AsFloat := 0;
  DMPessoa.cdsPessoaDTCADASTRO.AsDateTime    := Date;
  DMPessoa.cdsPessoaHRCADASTRO.AsDateTime    := Now;
  DMPessoa.cdsPessoaACESSARCUPOM.AsString    := 'N';
  DMPessoa.cdsPessoaCONSULTARCUPOM.AsString  := 'N';
  DMPessoa.cdsPessoaCANCELARCUPOM.AsString   := 'N';}
end;

procedure TDMPessoa.cdsPessoaBeforePost(DataSet: TDataSet);
begin
{  if DMPessoa.cdsPessoaSITUACAO.AsString = 'A' then
    DMPessoa.cdsPessoaDTDEMISSAO.Clear;}
end;

procedure TDMPessoa.Abrir_Pessoa(Tipo, Situacao : String; ID: Integer);
begin
{  cdsPessoa.Close;
  sdsPessoa.CommandText := ctPessoa
                         + ' WHERE TIPO = ' + QuotedStr(Tipo);
  if ID > 0 then
    sdsPessoa.CommandText := sdsPessoa.CommandText
                           + ' AND ID = ' + IntToStr(ID);
  if Trim(Situacao) <> '' then
    sdsPessoa.CommandText := sdsPessoa.CommandText
                           + ' AND Situacao = ' + QuotedStr(Tipo);;
  cdsPessoa.Open;}
end;

procedure TDMPessoa.cdsPessoaDigitalOraAfterInsert(DataSet: TDataSet);
begin
  cdsPessoaDigitalOraID.AsInteger := dmDatabase.ProximaSequencia('PESSOA_DIGITAL_ORA',0);
end;

end.
