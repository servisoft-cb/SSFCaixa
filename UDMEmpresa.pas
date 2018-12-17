unit UDMEmpresa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMEmpresa = class(TDataModule)
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
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
    sdsEmpresaINATIVA: TStringField;
    cdsEmpresaINATIVA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsEmpresaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ctEmpresa: String;
  end;

var
  DMEmpresa: TDMEmpresa;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMEmpresa.DataModuleCreate(Sender: TObject);
begin
  ctEmpresa := sdsEmpresa.CommandText;
  cdsEmpresa.Close;
  cdsEmpresa.Open;
end;

procedure TDMEmpresa.cdsEmpresaBeforePost(DataSet: TDataSet);
begin
  if cdsEmpresa.State in [dsInsert] then
    dmDatabase.ProximaSequencia('EMPRESA',0);
end;

end.
