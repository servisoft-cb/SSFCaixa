unit UCupomFiscalC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Mask,
  ToolEdit, Grids, DBGrids, SMDBGrid, DB, FMTBcd, DBClient, Provider, SqlExpr, ADODB, BSPInter, NBioAPI_Type, ComObj,
  DateUtils, IndexSearchType, IndexSearchInteR, UCBase, NxCollection, NxEdit;

type
  TfCupomFiscalC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SMDBGrid1: TSMDBGrid;
    sdsCupomFiscal: TSQLDataSet;
    dspCupomFiscal: TDataSetProvider;
    cdsCupomFiscal: TClientDataSet;
    dsCupomFiscal: TDataSource;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    qVerificaUlt: TSQLQuery;
    qVerificaUltNUMCUPOM: TIntegerField;
    sdsCupomFiscalID_CUPOM: TIntegerField;
    sdsCupomFiscalNUMCUPOM: TIntegerField;
    sdsCupomFiscalDTEMISSAO: TDateField;
    sdsCupomFiscalHREMISSAO: TTimeField;
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
    cdsCupomFiscalID_CUPOM: TIntegerField;
    cdsCupomFiscalNUMCUPOM: TIntegerField;
    cdsCupomFiscalDTEMISSAO: TDateField;
    cdsCupomFiscalHREMISSAO: TTimeField;
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
    BitBtn6: TBitBtn;
    ckTeste: TCheckBox;
    ckMostrarSitTrib: TCheckBox;
    sdsCupomFiscalCODPESSOA: TIntegerField;
    sdsCupomFiscalNOMEPESSOA: TStringField;
    cdsCupomFiscalCODPESSOA: TIntegerField;
    cdsCupomFiscalNOMEPESSOA: TStringField;
    sdsCupomFiscalAPEL_EBS: TStringField;
    sdsCupomFiscalNUMLANCAMENTO_EBS: TIntegerField;
    sdsCupomFiscalCONFIRMACAO_EBS: TStringField;
    sdsCupomFiscalAPEL_VENDEDOR_EBS: TStringField;
    cdsCupomFiscalAPEL_EBS: TStringField;
    cdsCupomFiscalNUMLANCAMENTO_EBS: TIntegerField;
    cdsCupomFiscalCONFIRMACAO_EBS: TStringField;
    cdsCupomFiscalAPEL_VENDEDOR_EBS: TStringField;
    UCControls1: TUCControls;
    UCControls2: TUCControls;
    sdsCupomFiscalUSUARIO: TStringField;
    cdsCupomFiscalUSUARIO: TStringField;
    ckExcluir: TCheckBox;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    cdsCupomFiscalclFormaPgto: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure cdsCupomFiscalCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    ctCupomFiscalLoc: String;

    procedure Monta_sqlCupomFiscal;
    procedure Monta_sqlCupomFiscalDM(ID, NumCupom: Integer);
    procedure carregarDigitais;
    procedure encerrarLeitor;
  public
    { Public declarations }
    vDigital: Boolean;
    vCodCliente: Integer;
    vEmpresa, vUnidade: String;
    vFormaPgto: Short;

    m_hFIR: DWORD;
    procedure Excluir_Registro(Excluir: Boolean = False); //True = Excluir   False = Cancela

    procedure Gravar_EstMovimento_EBS;
    procedure Excluir_EstMovimento_EBS(Item: Integer);

    procedure Gravar_UltimasComprasVendas_EBS;
    procedure Excluir_UltimasComprasVendas_EBS(Item: Integer);

    procedure Gravar_Lancamentos_EBS;
    procedure Excluir_Lancamentos_EBS;

    procedure Gravar_VendasPDV_EBS;
    procedure Excluir_VendasPDV_EBS;

    procedure Gravar_ItensVendasPDV_EBS;
    procedure Excluir_ItensVendasPDV_EBS(Item: Integer);

    procedure Gravar_EstLocal_EBS(Tipo: String); //S=Somar  D=Diminuir

    procedure Gravar_Empresa_EBS;

    function fnc_LimiteCredito_OK: Boolean;
  end;

var
  fCupomFiscalC: TfCupomFiscalC;
  objNBioBSP: variant;
  objDevice: variant;
  objExtraction: variant;
  objIndexSearch: variant;

implementation

uses uDmCupom, UDMSitTrib_CF, UCupomFiscal, uImpFiscal_Daruma, uUtilCupomFiscal, DmdDatabase, UDMProduto, UDMPessoa,
  UCupomFiscalOpcoes, UCupomFiscalCli, UDMEBS, DmdDatabase_EBS, UDMParametros, uDmUserControl, uDmOracle, uCupomFiscalR,
  UCupomFiscalPgto;

{$R *.dfm}

procedure TfCupomFiscalC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  encerrarLeitor;

  if DMSitTrib_CF.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMSitTrib_CF);
  if DMProduto.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMProduto);
  if DMPessoa.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMPessoa);
  if DMParametros.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMParametros);
  if DMEBS.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMEBS);
  if dmOracle.Owner.ClassName = Self.ClassName then
    FreeAndNil(dmOracle);

  Action := Cafree;
end;

procedure TfCupomFiscalC.Monta_sqlCupomFiscal;
begin
  cdsCupomFiscal.Close;
  sdsCupomFiscal.CommandText := ctCupomFiscalLoc + ' WHERE FILIAL = ' + IntToStr(DMParametros.vFilial);
  if NxDatePicker1.Date > 0 then
    sdsCupomFiscal.CommandText := sdsCupomFiscal.CommandText + ' AND DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
  if NxDatePicker2.Date > 0 then
    sdsCupomFiscal.CommandText := sdsCupomFiscal.CommandText + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));

  sdsCupomFiscal.CommandText := sdsCupomFiscal.CommandText + ' ORDER BY DTEMISSAO DESC, ID_CUPOM DESC';
  cdsCupomFiscal.Open;
end;

procedure TfCupomFiscalC.FormShow(Sender: TObject);
begin
  Tag := 0;

  ctCupomFiscalLoc := sdsCupomFiscal.CommandText;
  if not Assigned(DMSitTrib_CF) then
    DMSitTrib_CF := TDMSitTrib_CF.Create(Self);
  if not Assigned(DMProduto) then
    DMProduto := TDMProduto.Create(Self);
  if not Assigned(DMPessoa) then
    DMPessoa := TDMPessoa.Create(Self);
  if not Assigned(DMEBS) then
    DMEBS := TDMEBS.Create(Self);
  if not Assigned(dmOracle) then
    dmOracle := TdmOracle.Create(Self);

  DMParametros.cdsParametros.Close;
  DMParametros.cdsParametros.Open;

  DMProduto.cdsProduto.Active := True;

  NxDatePicker1.Date := Date;
  NxDatePicker2.Date := Date;

  carregarDigitais;

  NxDatePicker1.Enabled := NxButton1.Enabled;
  NxDatePicker2.Enabled := NxButton1.Enabled;
  Label1.Enabled        := NxButton1.Enabled;
  Label2.Enabled        := NxButton1.Enabled;

  NxButton1.Click;
end;

procedure TfCupomFiscalC.Monta_sqlCupomFiscalDM(ID, NumCupom: Integer);
begin
  if ID < 1 then
    ID := 0;
  if NumCupom < 1 then
    NumCupom := 0;
  DMCupom.cdsCupomFiscal.Close;
  DMCupom.sdsCupomFiscal.CommandText := ctCupomFiscal;
  if NumCupom > 0 then
    DMCupom.sdsCupomFiscal.CommandText := DMCupom.sdsCupomFiscal.CommandText + ' WHERE NUMCUPOM = ' + IntToStr(NumCupom)
  else
    DMCupom.sdsCupomFiscal.CommandText := DMCupom.sdsCupomFiscal.CommandText + ' WHERE ID_CUPOM = ' + IntToStr(ID);
  DMCupom.cdsCupomFiscal.Open;
end;

procedure TfCupomFiscalC.BitBtn4Click(Sender: TObject);
begin
  {if fnc_Imp_Ligada_Daruma = 1 then
    Exit;

  if not DM1.tUsuarioCupomFiscalLeitRed.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não esta autorizado para esta opção!');
    exit;
  end;
  fCupomFiscalOpcoes := TfCupomFiscalOpcoes.Create(Self);
  fCupomFiscalOpcoes.ShowModal;}
end;

procedure TfCupomFiscalC.BitBtn6Click(Sender: TObject);
begin
  prc_Abrir_Gaveta_Daruma;
end;

procedure TfCupomFiscalC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F12) then
    BitBtn6Click(Sender)
  else
  if (Key = Vk_F2) then
    NxButton5Click(Sender)
  else
  if (Key = Vk_F3) then
    NxButton2Click(Sender)
  else
//  if (Key = Vk_F7) then
//    BitBtn10.Visible := True
//  else
  if (Key = Vk_F6) then
    NxButton5.Visible := True
  else
  if (Key = Vk_F5) then
    if NxButton1.Enabled then
      NxButton1Click(Sender);

  if (Shift = [ssCtrl]) and (Key = 74) then
  begin
    Panel2.Visible    := not(Panel2.Visible);
    ckTeste.Visible   := not(ckTeste.Visible);
    ckExcluir.Visible := not(ckExcluir.Visible);
    NxButton8.Visible := not(NxButton8.Visible);
  end;
end;

procedure TfCupomFiscalC.SMDBGrid1DblClick(Sender: TObject);
begin
  if cdsCupomFiscal.IsEmpty then
    Exit;
  fCupomFiscal := TfCupomFiscal.Create(Self);
  Monta_sqlCupomFiscalDM(cdsCupomFiscalID_CUPOM.AsInteger,0);
  fCupomFiscal.Panel2.Enabled := False;
  fCupomFiscal.ShowModal;
end;

procedure TfCupomFiscalC.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsCupomFiscalCANCELADO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfCupomFiscalC.Excluir_Registro(Excluir: Boolean);
begin
  DMCupom.cdsCupomFiscalParc.First;
  while not DMCupom.cdsCupomFiscalParc.Eof do
    DMCupom.cdsCupomFiscalParc.Delete;

//  Excluir_Lancamentos_EBS;
//  Excluir_VendasPDV_EBS;

//  Excluir_EstMovimento_EBS(0);
//  Excluir_UltimasComprasVendas_EBS(0);
//  Excluir_ItensVendasPDV_EBS(0);

  DMCupom.cdsCupomFiscalIt.First;
  while not DMCupom.cdsCupomFiscalIt.Eof do
  begin
{    if (DMCupom.cdsCupomFiscalItGRAVOU_ESTLOCAL_EBS.AsString = 'S') and
       (DMCupom.cdsCupomFiscalItCANCELADO.AsString = 'N') then
      Gravar_EstLocal_EBS('S');}
    if Excluir then
      DMCupom.cdsCupomFiscalIt.Delete
    else
    begin
      DMCupom.cdsCupomFiscalIt.Edit;
      DMCupom.cdsCupomFiscalItCANCELADO.AsString := 'S';
      DMCupom.cdsCupomFiscalIt.Post;

      DMCupom.cdsCupomFiscalIt.Next;
    end;
  end;
  if Excluir then
    DMCupom.cdsCupomFiscal.Delete
  else
  begin
    DMCupom.cdsCupomFiscal.Edit;
    DMCupom.cdsCupomFiscalCANCELADO.AsString := 'S';
    DMCupom.cdsCupomFiscal.Post;
  end;
  DMCupom.cdsCupomFiscal.ApplyUpdates(0);
  //BitBtn3Click(fCupomFiscalC);
end;

procedure TfCupomFiscalC.Gravar_EstMovimento_EBS;
var
  adq: TADOQuery;
  vNumSeq: Integer;
begin
  //Buscar última sequencia na EBS
  adq := TADOQuery.Create(nil);
  adq.Connection := dmDatabase_EBS.adoEBS;
  adq.SQL.Text   := 'SELECT MAX(SEQMOV) AS SEQMOVIMENTO FROM ESTMOVIMENTO ' +
                    'WHERE CODLOC = ' + QuotedStr('3') +
                    ' AND CODPRO = ' + QuotedStr(DMCupom.cdsCupomFiscalItCODPRODUTO.AsString) +
                    ' AND DATMOV = :DATMOV ';
  adq.Parameters.ParamByName('DATMOV').Value := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
  adq.Open;
  vNumSeq := adq.FieldByName('SEQMOVIMENTO').AsInteger;
  vNumSeq := vNumSeq + 1;
  DMEBS.vSeqMovEst_EBS := vNumSeq;
  FreeAndNil(adq);
  //*******************

  if not DMEBS.adsEstMovimento.Active then
    DMEBS.Abrir_EstMovimento;

  DMEBS.adsEstMovimento.Insert;
  DMEBS.adsEstMovimentoCODLOC.AsInteger  := 3;
  DMEBS.adsEstMovimentoCODPRO.AsString   := DMCupom.cdsCupomFiscalItCODPRODUTO.AsString;
  DMEBS.adsEstMovimentoDATMOV.AsDateTime := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
  DMEBS.adsEstMovimentoSEQMOV.AsInteger  := vNumSeq;
  DMEBS.adsEstMovimentoNRODOC.AsInteger  := DMCupom.cdsCupomFiscalID_CUPOM.AsInteger;
  DMEBS.adsEstMovimentoTIPREG.AsString   := 'CUPOM-SS';
  DMEBS.adsEstMovimentoCODFOR.AsString   := DMCupom.cdsCupomFiscalAPEL_EBS.AsString;
  DMEBS.adsEstMovimentoSEQITE.AsInteger  := DMCupom.cdsCupomFiscalItITEM.AsInteger;
  DMEBS.adsEstMovimentoENTSAI.AsString   := 'S';
  DMEBS.adsEstMovimentoQTDMOV.AsFloat    := DMCupom.cdsCupomFiscalItQTD.AsFloat;
  DMEBS.adsEstMovimentoVLRMOV.AsFloat    := DMCupom.cdsCupomFiscalItVLRUNIT.AsFloat;
  DMEBS.adsEstMovimentoORIMOV.AsString   := 'VVA';//'CFSS';
  DMEBS.adsEstMovimentoMIGMOV.AsBoolean  := False;
  DMEBS.adsEstMovimentoregistro_integrado.AsBoolean := False;
  DMEBS.adsEstMovimento.Post;

  DMEBS.adsEstMovimento.UpdateBatch();
end;

procedure TfCupomFiscalC.Excluir_EstMovimento_EBS(Item: Integer);
var
  adq: TADOQuery;
begin
  try
    adq := TADOQuery.Create(nil);
    adq.Connection := dmDatabase_EBS.adoEBS;
    adq.SQL.Text   := 'DELETE FROM ESTMOVIMENTO ';
    if Item > 0 then
    begin
      adq.SQL.Text := adq.SQL.Text
                    + 'WHERE CODLOC = ' + QuotedStr('3')
                    + ' AND TIPREG = ' + QuotedStr('CUPOM-SS')
                    + ' AND NRODOC = ' + DMCupom.cdsCupomFiscalID_CUPOM.AsString
                    + ' AND SEQITE = ' + IntToStr(Item)
    end
    else
    begin
      adq.SQL.Text := adq.SQL.Text
                    + 'WHERE CODLOC = ' + QuotedStr('3')
                    + ' AND TIPREG = ' + QuotedStr('CUPOM-SS')
                    + ' AND NRODOC = ' + DMCupom.cdsCupomFiscalID_CUPOM.AsString;
    end;
    adq.ExecSQL;
  except
  end;
  FreeAndNil(adq);
end;

procedure TfCupomFiscalC.Gravar_Lancamentos_EBS;
var
  vNumSeq: Integer;
begin
  //Buscar última sequencia na EBS
  vNumSeq := dmDatabase.ProximaSequencia('LANCAMENTOS_EBS',0);
  DMEBS.vLancamento_EBS := vNumSeq;
  //*******************

  if not DMEBS.adsLancamentos.Active then
    DMEBS.Abrir_Lancamentos;

  //DMEBS.adsLancamentos.Insert;
  DMEBS.adsLancamentos.Insert;
  DMEBS.adsLancamentosPagRec.AsString       := 'R';
  DMEBS.adsLancamentosCodigo.AsInteger      := vNumSeq;
  DMEBS.adsLancamentosParcela.AsInteger     := 1;
  DMEBS.adsLancamentosDescricao.AsString    := 'Cupom-SS No. ' + DMCupom.cdsCupomFiscalID_CUPOM.AsString;
  DMEBS.adsLancamentosEmissao.AsDateTime    := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
  DMEBS.adsLancamentosLiberacao.AsDateTime  := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
  DMEBS.adsLancamentosSituacao.AsString     := 'Normal';
  DMEBS.adsLancamentosMarcacao.AsBoolean    := False;
  DMEBS.adsLancamentosUsuario.AsString      := 'CUPOM-SS';
  DMEBS.adsLancamentosEmpresa.AsString      := DMCupom.cdsCupomFiscalAPEL_EBS.AsString;
  DMEBS.adsLancamentosTipo.AsString         := 'CUPOM-SS';
  DMEBS.adsLancamentosVencimento.AsDateTime := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
  if DMCupom.cdsCupomFiscalTIPOPGTO.AsString = 'V' then
    DMEBS.adsLancamentosPagamento.AsDateTime := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
  DMEBS.adsLancamentosValorOriginal.AsFloat := DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat;
  DMEBS.adsLancamentos.Post;

  DMEBS.adsLancamentos.UpdateBatch();
end;

procedure TfCupomFiscalC.Excluir_Lancamentos_EBS;
var
  adq: TADOQuery;
begin
  if DMCupom.cdsCupomFiscalNUMLANCAMENTO_EBS.AsInteger <= 0 then
    exit;
  try
    adq := TADOQuery.Create(nil);
    adq.Connection := dmDatabase_EBS.adoEBS;
    adq.SQL.Text   := 'DELETE FROM LANÇAMENTOS '
                    + 'WHERE PagRec = ' + QuotedStr('R')
                    + ' AND [Código] = ' + DMCupom.cdsCupomFiscalNUMLANCAMENTO_EBS.AsString;
    adq.ExecSQL;
  except
  end;
  FreeAndNil(adq);
  //*******************
end;

procedure TfCupomFiscalC.Excluir_UltimasComprasVendas_EBS(Item: Integer);
var
  adq: TADOQuery;
begin
  try
    adq := TADOQuery.Create(nil);
    adq.Connection := dmDatabase_EBS.adoEBS;
    adq.SQL.Text   := 'DELETE FROM "Últimas Compras/Vendas"  ';
    if Item > 0 then
    begin
      adq.SQL.Text := adq.SQL.Text
                    + 'WHERE [Número] = ' + DMCupom.cdsCupomFiscalID_CUPOM.AsString
                    + ' AND [Tipo de Registro] = ' + QuotedStr('CUPOM-SS')
                    + ' AND Item = ' + IntToStr(Item)
    end
    else
    begin
      adq.SQL.Text := adq.SQL.Text
                    + 'WHERE [Número] = ' + DMCupom.cdsCupomFiscalID_CUPOM.AsString
                    + ' AND [Tipo de Registro] = ' + QuotedStr('CUPOM-SS')
    end;
    adq.ExecSQL;
  except
  end;
  FreeAndNil(adq);
end;

procedure TfCupomFiscalC.Gravar_UltimasComprasVendas_EBS;
begin
  if not DMEBS.adsUltimasComprasVendas.Active then
    DMEBS.Abrir_UltimaCompraVenda;

  DMEBS.adsUltimasComprasVendas.Insert;
  DMEBS.adsUltimasComprasVendasProduto.AsString    := DMCupom.cdsCupomFiscalItCODPRODUTO.AsString;
  DMEBS.adsUltimasComprasVendasEmpresa.AsString    := DMCupom.cdsCupomFiscalAPEL_EBS.AsString;
  DMEBS.adsUltimasComprasVendasNumero.AsInteger    := DMCupom.cdsCupomFiscalID_CUPOM.AsInteger;
  DMEBS.adsUltimasComprasVendasTipoReg.AsString    := 'CUPOM-SS';
  DMEBS.adsUltimasComprasVendasTipo.AsString       := 'CUPOM-SS';
  DMEBS.adsUltimasComprasVendasVlrUnitario.AsFloat := DMCupom.cdsCupomFiscalItVLRUNIT.AsFloat;
  DMEBS.adsUltimasComprasVendasData.AsDateTime     := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
  DMEBS.adsUltimasComprasVendasQuantidade.AsFloat  := DMCupom.cdsCupomFiscalItQTD.AsFloat;
  DMEBS.adsUltimasComprasVendasItem.AsInteger      := DMCupom.cdsCupomFiscalItITEM.AsInteger;
  DMEBS.adsUltimasComprasVendas.Post;
  DMEBS.adsUltimasComprasVendas.UpdateBatch();
end;

procedure TfCupomFiscalC.Excluir_VendasPDV_EBS;
var
  adq: TADOQuery;
begin
  try
    adq := TADOQuery.Create(nil);
    adq.Connection := dmDatabase_EBS.adoEBS;
    adq.SQL.Text   := 'DELETE FROM "Vendas PDV" ' +
                      'WHERE [Tipo de Registro] = ' + QuotedStr('CUPOM-SS') +
                      ' AND [Número] = ' + DMCupom.cdsCupomFiscalID_CUPOM.AsString;
    adq.ExecSQL;
  except
  end;
  FreeAndNil(adq);
  //*******************
end;

procedure TfCupomFiscalC.Gravar_VendasPDV_EBS;
begin
  if not DMEBS.adsVendasPDV.Active then
    DMEBS.Abrir_VendasPDV;

  DMEBS.adsVendasPDV.Insert;
  DMEBS.adsVendasPDVTipoReg.AsString            := 'CUPOM-SS';
  DMEBS.adsVendasPDVNumero.AsInteger            := DMCupom.cdsCupomFiscalID_CUPOM.AsInteger;
  DMEBS.adsVendasPDVDtEmissao.AsDateTime        := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
  DMEBS.adsVendasPDVTipoEmpresa.AsString        := 'Ativa';
  DMEBS.adsVendasPDVEmpresa.AsString            := 'CONSUMIDOR';
  DMEBS.adsVendasPDVCondPagamento.AsInteger     := 0;
  DMEBS.adsVendasPDVFretePorConta.AsString      := 'Sem Frete';
  DMEBS.adsVendasPDVRegImpresso.AsBoolean       := True;
  DMEBS.adsVendasPDVSituacao.AsString           := 'Normal';
  DMEBS.adsVendasPDVViadeTransporte.AsString    := 'Rodoviário';
  DMEBS.adsVendasPDVVlrTotalMercadorias.AsFloat := DMCupom.cdsCupomFiscalVLRPRODUTOS.AsFloat;
  DMEBS.adsVendasPDVVlrTotal.AsFloat            := DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat;
  DMEBS.adsVendasPDVNatOperacao.AsString        := '5101';
  DMEBS.adsVendasPDVFornecedor.AsString         := DMParametros.cdsParametrosFORNECEDOR.AsString;
  DMEBS.adsVendasPDVDescontoemValor.AsFloat     := 0;
  DMEBS.adsVendasPDVData.AsDateTime             := Date;
  DMEBS.adsVendasPDVHora.AsDateTime             := Now;
  DMEBS.adsVendasPDVPessoa.AsString             := 'Física';
  DMEBS.adsVendasPDVBasedeICMS.AsFloat          := 0;
  DMEBS.adsVendasPDVTotaldeICMS.AsFloat         := 0;
  DMEBS.adsVendasPDVcd_caixa.AsInteger          := 1;
  DMEBS.adsVendasPDVCod_Imp_Fiscal.AsInteger    := 1;
  DMEBS.adsVendasPDV.Post;
  DMEBS.adsVendasPDV.UpdateBatch();
end;

procedure TfCupomFiscalC.Gravar_ItensVendasPDV_EBS;
begin
  if not DMEBS.adsItensVendasPDV.Active then
    DMEBS.Abrir_ItensVendasPDV;

  DMEBS.adsItensVendasPDV.Insert;
  DMEBS.adsItensVendasPDVTipoReg.AsString         := 'CUPOM-SS';
  DMEBS.adsItensVendasPDVNumero.AsInteger         := DMCupom.cdsCupomFiscalID_CUPOM.AsInteger;
  DMEBS.adsItensVendasPDVDescricao.AsString       := DMCupom.cdsCupomFiscalItlkNomeProduto.AsString;
  DMEBS.adsItensVendasPDVDestinacao.AsString      := 'Consumidor Final';
  DMEBS.adsItensVendasPDVTipoVenda.AsString       := 'Varejo';
  DMEBS.adsItensVendasPDVVlrOriginal.AsFloat      := DMCupom.cdsCupomFiscalItVLRUNIT.AsFloat;
  DMEBS.adsItensVendasPDVVlrDesconto.AsFloat      := DMCupom.cdsCupomFiscalItVLRDESCONTO.AsFloat;
  DMEBS.adsItensVendasPDVVlrLiquido.AsFloat       := DMCupom.cdsCupomFiscalItVLRTOTAL.AsFloat;
  DMEBS.adsItensVendasPDVVlrIcms.AsFloat          := DMCupom.cdsCupomFiscalItVLRICMS.AsFloat;
  DMEBS.adsItensVendasPDVSituacao.AsString        := 'Normal';
  DMEBS.adsItensVendasPDVFornecedor.AsString      := DMParametros.cdsParametrosFORNECEDOR.AsString;
  DMEBS.adsItensVendasPDVItem.AsInteger           := DMCupom.cdsCupomFiscalItITEM.AsInteger;
  DMEBS.adsItensVendasPDVProduto.AsString         := DMCupom.cdsCupomFiscalItCODPRODUTO.AsString;
  DMEBS.adsItensVendasPDVUnidade.AsString         := DMCupom.cdsCupomFiscalItUNIDADE.AsString;
  DMEBS.adsItensVendasPDVQuantidade.AsFloat       := DMCupom.cdsCupomFiscalItQTD.AsFloat;
  DMEBS.adsItensVendasPDVcd_caixa.AsInteger       := 1;
  DMEBS.adsItensVendasPDVCod_Imp_Fiscal.AsInteger := 1;
  DMEBS.adsItensVendasPDV.Post;

  DMEBS.adsItensVendasPDV.UpdateBatch();
end;

procedure TfCupomFiscalC.Excluir_ItensVendasPDV_EBS(Item: Integer);
var
  adq: TADOQuery;
begin
  try
    adq := TADOQuery.Create(nil);
    adq.Connection := dmDatabase_EBS.adoEBS;
    adq.SQL.Text   := 'DELETE FROM "Itens de Vendas PDV" ';
    if Item > 0 then
    begin
      adq.SQL.Text := adq.SQL.Text
                    + 'WHERE [Tipo de Registro] = ' + QuotedStr('CUPOM-SS')
                    + ' AND [Número] = ' + DMCupom.cdsCupomFiscalID_CUPOM.AsString
                    + ' AND Item = ' + IntToStr(Item)
    end
    else
    begin
      adq.SQL.Text := adq.SQL.Text
                    + 'WHERE [Tipo de Registro] = ' + QuotedStr('CUPOM-SS')
                    + ' AND [Número] = ' + DMCupom.cdsCupomFiscalID_CUPOM.AsString;
    end;
    adq.ExecSQL;
  except
  end;
  FreeAndNil(adq);
  //*******************
end;

procedure TfCupomFiscalC.Gravar_EstLocal_EBS(Tipo: String);
begin
  DMEBS.Abrir_EstLocal(DMCupom.cdsCupomFiscalItCODPRODUTO.AsString);
  if not DMEBS.adsEstLocal.IsEmpty then
    DMEBS.adsEstLocal.Edit
  else
  begin
    DMEBS.adsEstLocal.Insert;
    DMEBS.adsEstLocalCODLOC.AsString := '3';
    DMEBS.adsEstLocalCODPRO.AsString := DMCupom.cdsCupomFiscalItCODPRODUTO.AsString;
    DMEBS.adsEstLocalQTDEST.AsFloat  := 0;
  end;
  if Tipo = 'S' then
    DMEBS.adsEstLocalQTDEST.AsFloat := DMEBS.adsEstLocalQTDEST.AsFloat + DMCupom.cdsCupomFiscalItQTD.AsFloat
  else
    DMEBS.adsEstLocalQTDEST.AsFloat := DMEBS.adsEstLocalQTDEST.AsFloat - DMCupom.cdsCupomFiscalItQTD.AsFloat;
  DMEBS.adsEstLocalCODUSU.AsString := 'Usuario';
  DMEBS.adsEstLocal.Post;

  DMEBS.adsEstLocal.UpdateBatch();
end;

function TfCupomFiscalC.fnc_LimiteCredito_OK: Boolean;
var
  vVlrAux: Real;
begin
{    ShowMessage('Vai calcular crédito!');
    cdsCupomFiscal.Close;
    sdsCupomFiscal.ParamByName('E1').AsString  := fCupomFiscalC.vEmpresa;
    sdsCupomFiscal.ParamByName('P1').AsInteger := fCupomFiscalC.vCodCliente;
    sdsCupomFiscal.ParamByName('D1').AsDate    := vData;
    cdsCupomFiscal.Open;
    ShowMessage('Tabela de consulta de crédito aberta!');
    lbVlrAberto.Caption     := FormatFloat('0.00',cdsCupomFiscalSOMA.AsCurrency);
    lbVlrDisponivel.Caption := FormatFloat('0.00',dmOracle.cdsFuncionarioOraLIMITE.AsCurrency -
                                                  cdsCupomFiscalSOMA.AsCurrency);
    ShowMessage('Crédito calculado!');
    vCredito := dmOracle.cdsFuncionarioOraLIMITE.AsCurrency - cdsCupomFiscalSOMA.AsCurrency;
}


{  Result := False;
  ShowMessage('
  DMEBS.Abrir_LimiteCredito(DMCupom.cdsCupomFiscalAPEL_EBS.AsString);
  vVlrAux := DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat + DMEBS.adsLimiteCreditoVlrOriginal.AsFloat;
  if StrToFloat(FormatFloat('0.00',vVlrAux)) > StrToFloat(FormatFloat('0.00',dmOracle.cdsFuncionarioOraLIMITE.AsCurrency)) then
  begin
    ShowMessage('Limite excedido, VENDA NEGADA!');
    exit;
  end;
  Result := True;}
end;

procedure TfCupomFiscalC.carregarDigitais;
begin
  //Create NBioBSP object
  objNBioBSP     := CreateOleObject('NBioBSPCOM.NBioBSP');
  objDevice      := objNBioBSP.Device;
  objExtraction  := objNBioBSP.Extraction;
  objIndexSearch := objNBioBSP.IndexSearch;
  objNBioBSP.SetSkinResource('.\NBSP2Por.dll');

//  ShowMessage('Vai abrir DMPessoa.cdsPessoaDigitalOra');

  DMPessoa.cdsPessoaDigitalOra.Close;
  DMPessoa.sdsPessoaDigitalOra.CommandText := 'SELECT PDO.* FROM PESSOA_DIGITAL_ORA PDO';
  DMPessoa.cdsPessoaDigitalOra.Open;

//  ShowMessage('Aberto DMPessoa.cdsPessoaDigitalOra');

  DMPessoa.cdsPessoaDigitalOra.First;
  while not DMPessoa.cdsPessoaDigitalOra.Eof do
  begin
    if not DMPessoa.cdsPessoaDigitalOraDIGITAL.IsNull then  //carrega digitais para o leitor
      objIndexSearch.AddFIR(DMPessoa.cdsPessoaDigitalOraDIGITAL.AsString,DMPessoa.cdsPessoaDigitalOraID.AsInteger);
    DMPessoa.cdsPessoaDigitalOra.Next;
  end;

//  ShowMessage('Carregado cdsPessoaDigitalOra no leitor biométrico');
end;

procedure TfCupomFiscalC.Gravar_Empresa_EBS;
begin
  DMPessoa.adsEmpresas.Close;
  DMPessoa.adsEmpresas.CommandText := 'SELECT * FROM Empresas '
                                    + 'WHERE Apel = ' + QuotedStr(DMCupom.cdsCupomFiscalAPEL_EBS.AsString);
  DMPessoa.adsEmpresas.Open;
  if not DMPessoa.adsEmpresas.IsEmpty then
    Exit
  else
  begin
    DMPessoa.adsEmpresas.Insert;
    if dmOracle.cdsFuncionarioOraNOME.AsString <> '' then
    begin
      DMPessoa.adsEmpresasApel.AsString  := DMCupom.cdsCupomFiscalAPEL_EBS.AsString;
      DMPessoa.adsEmpresasRazo.AsString  := dmOracle.cdsFuncionarioOraNOME.AsString;
      DMPessoa.adsEmpresasCrdito.AsFloat := dmOracle.cdsFuncionarioOraLIMITE.AsFloat;
    end
    else
    begin
      DMPessoa.adsEmpresasApel.AsString  := '0001_0';
      DMPessoa.adsEmpresasRazo.AsString  := 'CONSUMIDOR';
      DMPessoa.adsEmpresasCrdito.AsFloat := 1000000000;
    end;
    DMPessoa.adsEmpresasTipo.AsString       := 'Cliente';
    DMPessoa.adsEmpresasCadastro.AsDateTime := Date;
    DMPessoa.adsEmpresasPessoa.AsString     := 'Física';
    DMPessoa.adsEmpresasRamo.Asinteger      := 1;
    DMPessoa.adsEmpresas.Post;
    DMPessoa.adsEmpresas.UpdateBatch();
  end;
end;

procedure TfCupomFiscalC.encerrarLeitor;
begin
    if m_hFIR <> 0 then
          FreeFIRHandle(m_hFIR);

  TerminateIndexSearchEngin;
  TerminateNBioAPI;

  //FreeLibrary - 'NBioBSP.dll'
  if (g_hwnd > 0) Then
    FreeLibrary(g_hwnd);
end;

procedure TfCupomFiscalC.NxButton1Click(Sender: TObject);
begin
  if (NxDatePicker1.Date < 10) or (NxDatePicker2.Date < 10) then
  begin
    ShowMessage('É obrigatório informar a data inicial e final!');
    exit;
  end;
  Monta_sqlCupomFiscal;
end;

procedure TfCupomFiscalC.NxButton2Click(Sender: TObject);
begin
  if not ckTeste.Checked then
  begin
    if rVerificarImpressoraLigada_ECF_Daruma() <> 1 then
    begin
      ShowMessage('Impressora desligada!');
      Exit;
    end;
  end;

  if not ckTeste.Checked then
  begin
    if prc_Iniciar_Cupom_Daruma() <> 1 then
    begin
      DarumaFramework_Mostrar_Retorno(prc_Iniciar_Cupom_Daruma);
      Exit;
    end;
  end;

  vDigital := False;
  vCodCliente := 0;
  vEmpresa    := '0001';
  fCupomFiscalCli := TfCupomFiscalCli.Create(Self);
  fCupomFiscalCli.ShowModal;
  if not vDigital then
    Exit;

  Monta_sqlCupomFiscalDM(0,0);
  prc_Inserir_Cupom_Fiscal(vFormaPgto);

  DMCupom.cdsCupomFiscalCODPESSOA.AsInteger    := vCodCliente;
  DMCupom.cdsCupomFiscalCODEMPRESA.AsString    := vEmpresa;
  DMCupom.cdsCupomFiscalCODUNIDADE.AsString    := vUnidade;
  DMCupom.cdsCupomFiscalFANTASIA.AsString      := DMParametros.vFantasia;
  DMCupom.cdsCupomFiscalIMPRIME_CUPOM.AsString := DMParametros.vImprime;

  case DMCupom.cdsCupomFiscalCODTIPOCOBRANCA.AsInteger of
    1, 3: DMCupom.cdsCupomFiscalTIPOPGTO.AsString := 'P';
       2: DMCupom.cdsCupomFiscalTIPOPGTO.AsString := 'V';
  end;

  if dmOracle.cdsFuncionarioOraPESSOA.AsInteger > 0 then
  begin
    dmCupom.cdsCupomFiscalNOME_PESSOA.AsString := dmOracle.cdsFuncionarioOraNOME.AsString;
    DMCupom.cdsCupomFiscalAPEL_EBS.AsString    := dmOracle.cdsFuncionarioOraEMPRESA.AsString + '_' +
                                                  dmOracle.cdsFuncionarioOraPESSOA.AsString;
  end
  else
  begin
    dmCupom.cdsCupomFiscalNOME_PESSOA.AsString := 'CONSUMIDOR';
    DMCupom.cdsCupomFiscalAPEL_EBS.AsString    := '0001_0';
  end;

  if Tag <> 1 then
  begin
    fCupomFiscal := TfCupomFiscal.Create(Self);
    fCupomFiscal.ShowModal;
    NxButton1.SetFocus;
    //BitBtn3.Click;
  end;
  dmOracle.cdsFuncionarioOra.Close;// avaliar depois se é o melhor lugar parar fechar a tabela
  NxButton1.Click;
end;

procedure TfCupomFiscalC.NxButton3Click(Sender: TObject);
begin
  fCupomFiscalCli     := TfCupomFiscalCli.Create(Self);
  fCupomFiscalCli.Tag := 1;
  fCupomFiscalCli.ShowModal;
end;

procedure TfCupomFiscalC.NxButton4Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o cupom?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  Monta_sqlCupomFiscalDM(cdsCupomFiscalID_CUPOM.AsInteger,0);
  if DMCupom.cdsCupomFiscal.IsEmpty then
    exit;

  if (DMCupom.cdsCupomFiscalIt.IsEmpty) or (ckExcluir.Checked) then
    Excluir_Registro(True)
  else
    Excluir_Registro(False);
  NxButton1Click(Sender);
end;

procedure TfCupomFiscalC.NxButton5Click(Sender: TObject);
begin
  encerrarLeitor;
  carregarDigitais;
end;

procedure TfCupomFiscalC.NxButton6Click(Sender: TObject);
var
  vNumCupomAux: Integer;
begin
//  if fnc_Imp_Ligada_Daruma = 1 then
//    Exit;

  if MessageDlg('Deseja cancelar o último cupom?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if not fCupomFiscalC.ckTeste.Checked then
  begin
    vNumCupomAux := fnc_Busca_Ultimo_Cupom_Daruma;
    if vNumCupomAux <= 0 then
      Raise Exception.Create('Não encontrou cupom fiscal!');
  end;

  qVerificaUlt.Close;
  qVerificaUlt.Open;

  if vNumCupomAux <> qVerificaUltNUMCUPOM.AsInteger then
    Raise Exception.Create('Cupom Fiscal não é o último!');

  if not ckTeste.Checked then
    prc_Cancelar_Cupom_Daruma;

  Monta_sqlCupomFiscalDM(0,qVerificaUltNUMCUPOM.AsInteger);

  DMCupom.cdsCupomFiscal.Edit;
  DMCupom.cdsCupomFiscalCANCELADO.AsString := 'S';
  DMCupom.cdsCupomFiscal.Post;
  DMCupom.cdsCupomFiscal.ApplyUpdates(0);

  NxButton1Click(sender);

  try
    //Excluir_CReceber;
    //Excluir_MovFinanceiro;
  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível o item, ' + E.Message + '! Clique para continuar!');
      DMCupom.cdsCupomFiscalIt.CancelUpdates;
    end;
  end;
end;

procedure TfCupomFiscalC.NxButton7Click(Sender: TObject);
begin
  iCFCancelar_ECF_Daruma();
end;

procedure TfCupomFiscalC.NxButton8Click(Sender: TObject);
begin
  DMCupom.cdsCupomFiscal.Open;
  DMCupom.cdsCupomFiscalIt.Open;

  Monta_sqlCupomFiscalDM(cdsCupomFiscalID_CUPOM.AsInteger,0);

  fCupomFiscalPgto.Imprime;
end;

procedure TfCupomFiscalC.cdsCupomFiscalCalcFields(DataSet: TDataSet);
begin
  if not cdsCupomFiscalCODTIPOCOBRANCA.IsNull then
    case cdsCupomFiscalCODTIPOCOBRANCA.AsInteger of
      1: cdsCupomFiscalclFormaPgto.AsString := 'FOLHA';
      2: cdsCupomFiscalclFormaPgto.AsString := 'DINHEIRO';
      3: cdsCupomFiscalclFormaPgto.AsString := 'CARTÃO';
    end;
end;

end.
