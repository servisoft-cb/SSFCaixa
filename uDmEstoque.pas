unit uDmEstoque;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDmEstoque = class(TDataModule)
    sdsEstoqueDoc: TSQLDataSet;
    dspEstoqueDoc: TDataSetProvider;
    cdsEstoqueDoc: TClientDataSet;
    dsEstoqueDoc: TDataSource;
    sdsEstoqueDocID: TIntegerField;
    sdsEstoqueDocDATA: TDateField;
    sdsEstoqueDocPDV: TIntegerField;
    sdsEstoqueDocUSUARIO: TStringField;
    sdsEstoqueDocES: TStringField;
    cdsEstoqueDocID: TIntegerField;
    cdsEstoqueDocDATA: TDateField;
    cdsEstoqueDocPDV: TIntegerField;
    cdsEstoqueDocUSUARIO: TStringField;
    cdsEstoqueDocES: TStringField;
    sdsEstoqueDocCons: TSQLDataSet;
    dspEstoqueDocCons: TDataSetProvider;
    cdsEstoqueDocCons: TClientDataSet;
    dsEstoqueDocCons: TDataSource;
    sdsEstoqueDocJUSTIFICATIVA: TStringField;
    cdsEstoqueDocJUSTIFICATIVA: TStringField;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaFANTASIA: TStringField;
    dsEmpresa: TDataSource;
    sdsEstoqueDocTIPO: TStringField;
    cdsEstoqueDocTIPO: TStringField;
    dsmEstoqueDoc: TDataSource;
    sdsEstoqueDocIt: TSQLDataSet;
    cdsEstoqueDocIt: TClientDataSet;
    dsEstoqueDocIt: TDataSource;
    sdsEstoqueDocItID: TIntegerField;
    sdsEstoqueDocItITEM: TIntegerField;
    sdsEstoqueDocItPRODUTO_ID: TIntegerField;
    sdsEstoqueDocItQTD: TFMTBCDField;
    sdsEstoqueDocItES: TStringField;
    sdsEstoqueDocItVALOR: TFMTBCDField;
    cdsEstoqueDocItID: TIntegerField;
    cdsEstoqueDocItITEM: TIntegerField;
    cdsEstoqueDocItPRODUTO_ID: TIntegerField;
    cdsEstoqueDocItQTD: TFMTBCDField;
    cdsEstoqueDocItES: TStringField;
    cdsEstoqueDocItVALOR: TFMTBCDField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoID: TIntegerField;
    cdsProdutoCODBARRA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoPRECO_COMPRA: TFloatField;
    sdsEstoqueDocItUNIDADE: TStringField;
    cdsEstoqueDocItUNIDADE: TStringField;
    cdsEstoqueDocConsID: TIntegerField;
    cdsEstoqueDocConsDATA: TDateField;
    cdsEstoqueDocConsPDV: TIntegerField;
    cdsEstoqueDocConsUSUARIO: TStringField;
    cdsEstoqueDocConsES: TStringField;
    cdsEstoqueDocConsJUSTIFICATIVA: TStringField;
    cdsEstoqueDocConsEMPRESA_ID: TIntegerField;
    cdsEstoqueDocConsTIPO: TStringField;
    cdsEstoqueDocItlkProduto: TStringField;
    cdsEstoqueDocsdsEstoqueDocIt: TDataSetField;
    sdsEstoqueDocEMPRESA_ID: TIntegerField;
    cdsEstoqueDocEMPRESA_ID: TIntegerField;
    sdsEstoqueAtual: TSQLDataSet;
    dspEstoqueAtual: TDataSetProvider;
    cdsEstoqueAtual: TClientDataSet;
    dsEstoqueAtual: TDataSource;
    cdsEstoqueAtualEMPRESA_ID: TIntegerField;
    cdsEstoqueAtualPRODUTO_ID: TIntegerField;
    cdsEstoqueAtualQTD: TFMTBCDField;
    cdsEstoqueAtualNOME: TStringField;
    procedure cdsEstoqueDocAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsEstoqueDocItAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vItem: Integer;
    procedure posicionar(vId: Integer);
    procedure posicionarIt(vId, vItem: Integer);
  end;

var
  DmEstoque: TDmEstoque;

implementation

uses DmdDatabase, uDmUserControl;

{$R *.dfm}

{ TDmEstoque }

procedure TDmEstoque.posicionar(vId: Integer);
begin
  cdsEstoqueDoc.Close;
  sdsEstoqueDoc.ParamByName('ID').AsInteger := vId;
  cdsEstoqueDoc.Open;
end;

procedure TDmEstoque.posicionarIt(vId, vItem: Integer);
begin
end;

procedure TDmEstoque.cdsEstoqueDocAfterInsert(DataSet: TDataSet);
begin
  cdsEstoqueDocID.AsInteger     := dmDatabase.ProximaSequencia('ESTOQUE',0);
  cdsEstoqueDocDATA.AsDateTime  := Date;
  cdsEstoqueDocUSUARIO.AsString := dmUserControl.vUsuario;
end;

procedure TDmEstoque.DataModuleCreate(Sender: TObject);
begin
  cdsEmpresa.Open;
  cdsEstoqueDoc.Open;
  cdsEstoqueDocCons.Open;
  cdsProduto.Open;
end;

procedure TDmEstoque.cdsEstoqueDocItAfterInsert(DataSet: TDataSet);
begin
  cdsEstoqueDocItES.AsString  := cdsEstoqueDocES.AsString;
  cdsEstoqueDocItID.AsInteger := cdsEstoqueDocID.AsInteger;
  cdsEstoqueDocItITEM.AsInteger := vItem + 1;
end;

end.
