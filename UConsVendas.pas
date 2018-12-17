unit UConsVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, Mask, ToolEdit,
  ExtCtrls, FMTBcd, Buttons, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, SMDBGrid, CurrEdit, RxLookup, NxEdit;

type
  TfConsVendas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    sdsCupom: TSQLDataSet;
    dspCupom: TDataSetProvider;
    cdsCupom: TClientDataSet;
    dsCupom: TDataSource;
    SMDBGrid1: TSMDBGrid;
    sdsCupomID_CUPOM: TIntegerField;
    sdsCupomNUMCUPOM: TIntegerField;
    sdsCupomDTEMISSAO: TDateField;
    sdsCupomHREMISSAO: TTimeField;
    sdsCupomCODPESSOA: TIntegerField;
    sdsCupomTIPOPGTO: TStringField;
    sdsCupomCODCONDPGTO: TIntegerField;
    sdsCupomCODVENDEDOR: TIntegerField;
    sdsCupomPERCVENDEDOR: TFloatField;
    sdsCupomBASEICMS: TFloatField;
    sdsCupomVLRICMS: TFloatField;
    sdsCupomVLRPRODUTOS: TFloatField;
    sdsCupomVLRDESCONTO: TFloatField;
    sdsCupomVLRTOTAL: TFloatField;
    sdsCupomCANCELADO: TStringField;
    sdsCupomVLRRECEBIDO: TFloatField;
    sdsCupomVLRTROCO: TFloatField;
    sdsCupomNUMMOVFINANCEIRO: TIntegerField;
    sdsCupomCODCONTA: TIntegerField;
    sdsCupomFILIAL: TIntegerField;
    sdsCupomCODTIPOCOBRANCA: TIntegerField;
    sdsCupomAPEL_EBS: TStringField;
    sdsCupomNUMLANCAMENTO_EBS: TIntegerField;
    sdsCupomCONFIRMACAO_EBS: TStringField;
    sdsCupomAPEL_VENDEDOR_EBS: TStringField;
    sdsCupomNOME: TStringField;
    cdsCupomID_CUPOM: TIntegerField;
    cdsCupomNUMCUPOM: TIntegerField;
    cdsCupomDTEMISSAO: TDateField;
    cdsCupomHREMISSAO: TTimeField;
    cdsCupomCODPESSOA: TIntegerField;
    cdsCupomTIPOPGTO: TStringField;
    cdsCupomCODCONDPGTO: TIntegerField;
    cdsCupomCODVENDEDOR: TIntegerField;
    cdsCupomPERCVENDEDOR: TFloatField;
    cdsCupomBASEICMS: TFloatField;
    cdsCupomVLRICMS: TFloatField;
    cdsCupomVLRPRODUTOS: TFloatField;
    cdsCupomVLRDESCONTO: TFloatField;
    cdsCupomVLRTOTAL: TFloatField;
    cdsCupomCANCELADO: TStringField;
    cdsCupomVLRRECEBIDO: TFloatField;
    cdsCupomVLRTROCO: TFloatField;
    cdsCupomNUMMOVFINANCEIRO: TIntegerField;
    cdsCupomCODCONTA: TIntegerField;
    cdsCupomFILIAL: TIntegerField;
    cdsCupomCODTIPOCOBRANCA: TIntegerField;
    cdsCupomAPEL_EBS: TStringField;
    cdsCupomNUMLANCAMENTO_EBS: TIntegerField;
    cdsCupomCONFIRMACAO_EBS: TStringField;
    cdsCupomAPEL_VENDEDOR_EBS: TStringField;
    cdsCupomNOME: TStringField;
    Panel2: TPanel;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    Label5: TLabel;
    qTotal: TSQLQuery;
    qTotalVLRTOTAL: TFloatField;
    SMDBGrid2: TSMDBGrid;
    sdsCupomItem: TSQLDataSet;
    dspCupomItem: TDataSetProvider;
    cdsCupomItem: TClientDataSet;
    dsCupomItem: TDataSource;
    sdsCupomItemCODPRODUTO: TStringField;
    sdsCupomItemVLRTOTAL: TFloatField;
    sdsCupomItemQTD: TFloatField;
    cdsCupomItemCODPRODUTO: TStringField;
    cdsCupomItemVLRTOTAL: TFloatField;
    cdsCupomItemQTD: TFloatField;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    sds1: TSQLDataSet;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    cds1CODPESSOA: TIntegerField;
    cds1SUM: TFloatField;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label9: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    sdsEmpresaCODEMPRESA: TStringField;
    sdsCupomUSUARIO: TStringField;
    cdsCupomUSUARIO: TStringField;
    BitBtn6: TBitBtn;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    sdsCupomItemNOMEPRODUTO: TStringField;
    cdsCupomItemNOMEPRODUTO: TStringField;
    Label10: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label11: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    qTotalCODTIPOCOBRANCA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    vSQL: String;
    procedure Monta_cdsCupom;
    procedure Monta_cdsCupomItem;
    procedure Monta_qTotal;
  public
    { Public declarations }
    procedure Monta_cdsCupomItemR;
  end;

var
  fConsVendas: TfConsVendas;

implementation

uses DmdDatabase, UDMProduto, UDMParametros, uDmOracle, UDMEmpresa, UConsVendasR, rsExcelExporta;

{$R *.dfm}

procedure TfConsVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmOracle.cdsFuncionarioOra.Close;

  if DMProduto.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMProduto);
  if dmOracle.Owner.ClassName = Self.ClassName then
    FreeAndNil(dmOracle);
  if DMEmpresa.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMEmpresa);

  Action := Cafree;
end;

procedure TfConsVendas.FormShow(Sender: TObject);
var
  ano, mes, dia: Word;
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  if not Assigned(DMProduto) then
    DMProduto := TDMProduto.Create(Self);
  if not Assigned(dmOracle) then
    dmOracle := TdmOracle.Create(Self);
  if not Assigned(DMEmpresa) then
    DMEmpresa := TDMEmpresa.Create(Self);

  NxDatePicker2.Date := Date;
  DecodeDate(Date,ano,mes,dia);
  if Dia <= 20 then
  begin
    if mes = 1 then
    begin
      mes := 12;
      ano := ano - 1;
    end
    else
      mes := mes - 1;
  end;
  NxDatePicker1.Date := EncodeDate(ano,mes,20);

  if not dmOracle.cdsFuncionarioOra.Active then
    dmOracle.cdsFuncionarioOra.Open;

  DMEmpresa.cdsEmpresa.Open;
  DMProduto.cdsProduto.Open;
  cdsEmpresa.Open;

  vSQL := sds1.CommandText;
end;

procedure TfConsVendas.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsCupomCANCELADO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfConsVendas.BitBtn1Click(Sender: TObject);
begin
  if (NxDatePicker1.Date < 10) or (NxDatePicker2.Date < 10) then
  begin
    ShowMessage('Data não informada!');
    exit;
  end;
  Monta_cdsCupom;
  Monta_qTotal;
end;

procedure TfConsVendas.Monta_cdsCupom;
begin
  cdsCupom.Close;
  sdsCupom.CommandText := ' SELECT CF.*, FUNC.NOME ' +
                          ' FROM CUPOMFISCAL CF ' +
                          ' LEFT JOIN PESSOA_DIGITAL_ORA FUNC ON (CF.CODPESSOA = FUNC.PESSOA AND CF.CODEMPRESA = FUNC.EMPRESA)' +
                          ' WHERE CF.DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date)) +
                          '  AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
  if RxDBLookupCombo1.Value <> '' then
    sdsCupom.CommandText := sdsCupom.CommandText + ' AND CF.CODPESSOA = ' + RxDBLookupCombo1.Value;
  if RxDBLookupCombo2.Value <> '' then
    sdsCupom.CommandText := sdsCupom.CommandText + ' AND CF.FILIAL = ' + RxDBLookupCombo2.Value;
  if Trim(RxDBLookupCombo3.Value) <> '' then
    sdsCupom.CommandText := sdsCupom.CommandText + ' AND CF.CODEMPRESA = ' + QuotedStr(RxDBLookupCombo3.Value);
  case ComboBox1.ItemIndex of
    0: sdsCupom.CommandText := sdsCupom.CommandText + ' AND CODTIPOCOBRANCA = ''1'''; //descontada
    1: sdsCupom.CommandText := sdsCupom.CommandText + ' AND CODTIPOCOBRANCA = ''2'''; //dinheiro
    2: sdsCupom.CommandText := sdsCupom.CommandText + ' AND CODTIPOCOBRANCA = ''3'''; //cartão
  end;
  cdsCupom.Open;
end;

procedure TfConsVendas.Monta_qTotal;
begin
  CurrencyEdit2.Value := 0;
  CurrencyEdit3.Value := 0;

  qTotal.Close;
  qTotal.SQL.Clear;
  qTotal.SQL.Add('SELECT SUM(VLRTOTAL) VLRTOTAL, CODTIPOCOBRANCA');
  qTotal.SQL.Add('FROM CUPOMFISCAL');
  qTotal.SQL.Add('WHERE CANCELADO = ' + QuotedStr('N'));
  qTotal.SQL.Add(' AND DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date)));
  qTotal.SQL.Add(' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date)));
  if RxDBLookupCombo1.Value <> '' then
    qTotal.SQL.Add(' AND CODPESSOA = ' + RxDBLookupCombo1.Value);
  if RxDBLookupCombo2.Value <> '' then
    qTotal.SQL.Add(' AND FILIAL = ' + RxDBLookupCombo2.Value);
  if Trim(RxDBLookupCombo3.Value) <> '' then
    qTotal.SQL.Add(' AND CODEMPRESA = ' + QuotedStr(RxDBLookupCombo3.Value));
  qTotal.SQL.Add('GROUP BY CODTIPOCOBRANCA');
  qTotal.Open;
  while not qTotal.Eof do
  begin
    case qTotalCODTIPOCOBRANCA.AsInteger of
      1: CurrencyEdit2.Value := qTotalVLRTOTAL.AsFloat;
      2: CurrencyEdit5.Value := qTotalVLRTOTAL.AsFloat;
      3: CurrencyEdit3.Value := qTotalVLRTOTAL.AsFloat;
    end;
    qTotal.Next;
  end;
  CurrencyEdit1.Value := CurrencyEdit2.Value + CurrencyEdit3.Value + CurrencyEdit5.Value;
end;

procedure TfConsVendas.Monta_cdsCupomItem;
var
  vSomaIt: Currency;
begin
  cdsCupomItem.Close;
  sdsCupomItem.CommandText := 'SELECT CFI.codproduto, SUM(CFI.VLRTOTAL) VlrTotal, SUM(CFI.QTD) Qtd, P.NOME NOMEPRODUTO ' +
                              'FROM cupomfiscalIT CFI ' +
                              'INNER JOIN CUPOMFISCAL CF ON (CFI.id_cupom = CF.id_cupom) ' +
                              'LEFT JOIN PRODUTO P ON (CFI.CODPRODUTO = P.ID) ' +
                              'WHERE CFI.CANCELADO = ''N'' AND CF.CANCELADO = ''N'' AND ' +
                              'CF.dtemissao BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date)) +
                              'AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
  if RxDBLookupCombo2.Value <> '' then
    sdsCupomItem.CommandText := sdsCupomItem.CommandText + ' AND CF.FILIAL = ' + RxDBLookupCombo2.Value;
  sdsCupomItem.CommandText := sdsCupomItem.CommandText + 'GROUP BY CFI.CODPRODUTO, P.NOME';
  cdsCupomItem.Open;

  SMDBGrid2.DisableScroll;
  vSomaIt := 0;
  while not cdsCupomItem.Eof do
  begin
    vSomaIt := vSomaIt + cdsCupomItemVLRTOTAL.AsCurrency;
    cdsCupomItem.Next;
  end;
  CurrencyEdit4.Value := vSomaIt;
  SMDBGrid2.EnableScroll;
end;

procedure TfConsVendas.BitBtn2Click(Sender: TObject);
var
  F: TextFile;
  vTexto: String;
  vArquivo: String;
begin
  if (NxDatePicker1.Text = '  /  /    ') or (NxDatePicker2.Text = '  /  /    ') then
  begin
    ShowMessage('Datas devem ser selecionadas!');
    NxDatePicker1.SetFocus;
    Exit;
  end;
  if Trim(RxDBLookupCombo3.Value) = '' then
  begin
    ShowMessage('Emrpesa deve ser selecionada!');
    RxDBLookupCombo3.SetFocus;
    Exit;
  end;         

  cds1.Close;
  sds1.CommandText := vSQL;
  sds1.CommandText := sds1.CommandText + ' AND CF.DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date));
  sds1.CommandText := sds1.CommandText + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.Date));
  if Trim(RxDBLookupCombo3.Value) <> '' then
    sds1.CommandText := sds1.CommandText + ' AND CF.CODEMPRESA = ' + QuotedStr(RxDBLookupCombo3.Value);
  sds1.CommandText := sds1.CommandText + ' GROUP BY CF.CODEMPRESA, CF.CODPESSOA';
  cds1.Open;

  DMParametros.cdsParametros.Active := True;
  vArquivo := DMParametros.cdsParametrosARQUIVO_EXPORTACAO.AsString;
  AssignFile(F,vArquivo);
  Rewrite(F);
  cds1.First;
  while not cds1.Eof do
  begin
    vTexto := cds1CODPESSOA.AsString + '; ';
    vTexto := vTexto + FormatFloat('0.00',cds1SUM.AsCurrency) + ';';
    WriteLn(F,vTexto);
    cds1.Next;
  end;
  CloseFile(F);
  ShowMessage('Arquivo gerado em ' + vArquivo);
end;

procedure TfConsVendas.RxDBLookupCombo1Enter(Sender: TObject);
begin
  dmOracle.cdsFuncionarioOra.IndexFieldNames := 'NOME';
end;

procedure TfConsVendas.BitBtn3Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;

  cdsCupom.Filtered := False;
  cdsCupom.Filter   := 'CANCELADO = ''N''';
  cdsCupom.Filtered := True;

  fConsVendasR := TfConsVendasR.Create(Self);
  fConsVendasR.RLPeriodo.Caption := 'Período de ' + NxDatePicker1.Text + ' até ' + NxDatePicker2.Text;
  fConsVendasR.RLReport1.Preview;
  fConsVendasR.RLReport1.Free;

  cdsCupom.Filtered := False;
  cdsCupom.Filter   := '';
  SMDBGrid1.EnableScroll;
end;

procedure TfConsVendas.Monta_cdsCupomItemR;
begin

//SELECT CFI.CODPRODUTO, SUM(CFI.VLRTOTAL) VlrTotal, SUM(CFI.QTD) Qtd, P.NOME NOMEPRODUTO
//FROM CUPOMFISCALIT CFI
//INNER JOIN CUPOMFISCAL CF ON (CFI.ID_CUPOM = CF.ID_CUPOM)
//LEFT JOIN PRODUTO P ON (CFI.CODPRODUTO = P.ID)
//WHERE CF.DTEMISSAO BETWEEN :DATA1 AND :DATA2
//GROUP BY CFI.CODPRODUTO, P.NOME

  cdsCupomItem.Close;
  sdsCupomItem.CommandText := 'SELECT CFI.CODPRODUTO, CFI.VLRTOTAL, CFI.QTD, P.NOME NOMEPRODUTO ' +
                              'FROM CUPOMFISCALIT CFI ' +
                              'LEFT JOIN PRODUTO P ON (CFI.CODPRODUTO = P.ID) ' +
                              'WHERE CFI.CANCELADO = ''N'' AND CFI.ID_CUPOM = ' + cdsCupomID_CUPOM.AsString;
  cdsCupomItem.Open;
end;

procedure TfConsVendas.BitBtn4Click(Sender: TObject);
begin
  Monta_cdsCupomItem;
end;

procedure TfConsVendas.BitBtn5Click(Sender: TObject);
begin
  ExcelExporta('SMDBGrid2',fConsVendas);
end;

procedure TfConsVendas.BitBtn6Click(Sender: TObject);
begin
  ExcelExporta('SMDBGrid1',fConsVendas);
end;

end.
