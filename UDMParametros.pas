unit UDMParametros;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, iniFiles;

type
  TDMParametros = class(TDataModule)
    sdsParametros: TSQLDataSet;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    dsParametros: TDataSource;
    sdsParametrosID: TIntegerField;
    sdsParametrosTIPOCONFIRMAVENDA: TStringField;
    cdsParametrosID: TIntegerField;
    cdsParametrosTIPOCONFIRMAVENDA: TStringField;
    sdsParametrosFORNECEDOR: TStringField;
    cdsParametrosFORNECEDOR: TStringField;
    sdsParametrosCONSUMIDOR: TStringField;
    cdsParametrosCONSUMIDOR: TStringField;
    sdsParametrosARQUIVO_DIGITAIS: TStringField;
    cdsParametrosARQUIVO_DIGITAIS: TStringField;
    sdsParametrosENDERECO_FOTOS: TStringField;
    cdsParametrosENDERECO_FOTOS: TStringField;
    sdsParametrosSEPARADORDAFOTO: TStringField;
    cdsParametrosSEPARADORDAFOTO: TStringField;
    sdsParametrosEXTENSAOFOTO: TStringField;
    cdsParametrosEXTENSAOFOTO: TStringField;
    sdsParametrosUSARSTRETCH: TStringField;
    cdsParametrosUSARSTRETCH: TStringField;
    sdsParametrosARQUIVO_EXPORTACAO: TStringField;
    cdsParametrosARQUIVO_EXPORTACAO: TStringField;
    sdsParametrosESTOQUE_EBS: TStringField;
    cdsParametrosESTOQUE_EBS: TStringField;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    sdsEmpresaID: TIntegerField;
    sdsEmpresaNOME: TStringField;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaNOME: TStringField;
    sdsCupomFiscal_Cons: TSQLDataSet;
    sdsCupomFiscal_ConsSOMA: TFloatField;
    dspCupomFiscal_Cons: TDataSetProvider;
    cdsCupomFiscal_Cons: TClientDataSet;
    cdsCupomFiscal_ConsSOMA: TFloatField;
    dsCupomFiscal_Cons: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vFilial: Integer;
    vBarPadrao: Integer;
    vFantasia: String;
    vImprime: String;
    vUnPadrao: String;
  end;

var
  DMParametros: TDMParametros;
  ctParametros: String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMParametros.DataModuleCreate(Sender: TObject);
var
  vImpressora, vPorta: String;
  ini: TIniFile;
begin
  cdsEmpresa.Open;
  cdsParametros.Open;
  ctParametros := sdsParametros.CommandText;
  vBarPadrao   := 0;


  ini := TIniFile.Create('C:\$Servisoft\Impressora.ini');
  try
    vImpressora := '';
    vPorta      := '';
    vImpressora := ini.ReadString('IMPRESSORA','Impressora','');
    vPorta      := ini.ReadString('IMPRESSORA','Porta','');
    vBarPadrao  := StrToInt(ini.ReadString('IMPRESSORA','BarPadrao',''));
    vUnPadrao   := ini.ReadString('IMPRESSORA','UnPadrao','');
  finally
    ini.Free;
  end;

end;

end.
