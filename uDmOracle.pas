unit uDmOracle;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmOracle = class(TDataModule)
    ConexaoOra: TSQLConnection;
    sdsFuncionarioOra: TSQLDataSet;
    sdsFuncionarioOraEMPRESA: TStringField;
    sdsFuncionarioOraUNIDADE: TStringField;
    sdsFuncionarioOraPESSOA: TBCDField;
    sdsFuncionarioOraFOTO: TStringField;
    sdsFuncionarioOraNOME: TStringField;
    sdsFuncionarioOraLIMITE: TFMTBCDField;
    pdsFuncionarioOra: TDataSetProvider;
    cdsFuncionarioOra: TClientDataSet;
    cdsFuncionarioOraEMPRESA: TStringField;
    cdsFuncionarioOraUNIDADE: TStringField;
    cdsFuncionarioOraPESSOA: TBCDField;
    cdsFuncionarioOraFOTO: TStringField;
    cdsFuncionarioOraNOME: TStringField;
    cdsFuncionarioOraLIMITE: TFMTBCDField;
    dsFuncionarioOra: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmOracle: TdmOracle;

implementation

{$R *.dfm}

end.
