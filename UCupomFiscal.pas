unit UCupomFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid,
  StdCtrls, RxLookup, DBFilter, Mask, ToolEdit, CurrEdit, FMTBcd, DB, Provider, DBClient, SqlExpr, DBCtrls, Buttons,
  NxCollection;

type
  TfCupomFiscal = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    sdsSitTrib_CF: TSQLDataSet;
    cdsSitTrib_CF: TClientDataSet;
    dspSitTrib_CF: TDataSetProvider;
    dsSitTrib_CF: TDataSource;
    Panel2: TPanel;
    Panel4: TPanel;
    Label4: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label5: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Panel5: TPanel;
    Panel7: TPanel;
    sdsSitTrib_CFID: TIntegerField;
    sdsSitTrib_CFPERCENTUAL: TFloatField;
    cdsSitTrib_CFID: TIntegerField;
    cdsSitTrib_CFPERCENTUAL: TFloatField;
    Panel8: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel9: TPanel;
    sdsSitTrib_CFCODIGO: TStringField;
    cdsSitTrib_CFCODIGO: TStringField;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btConfirmar: TNxButton;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    StaticText1: TStaticText;
    btCancelar: TNxButton;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    DBText1: TDBText;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure Panel8Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
    vAliqIcms: Real;
    vCodProduto: String;
    procedure Move_Itens;
    procedure Limpa_Campos;
    procedure Gravar_Estoque;

    function Posiciona_Produto_EBS: Boolean;
    function Recalcula_Total: Currency;
  public
    { Public declarations }
  end;

var
  fCupomFiscal: TfCupomFiscal;

implementation

uses UDMCupom, UDMSitTrib_CF, DmdDatabase, uUtilCupomFiscal, UCupomFiscalPgto, UCupomFiscalCanc, UCupomFiscalC, UDMEBS,
  UCupomFiscalCli;

{$R *.dfm}

procedure TfCupomFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fCupomFiscalC.Tag := 0;
  DMCupom.cdsProduto.Close;
  cdsSitTrib_CF.Close;
  Action := Cafree;
end;

procedure TfCupomFiscal.FormShow(Sender: TObject);
begin
  DMCupom.cdsProduto.Open;
  cdsSitTrib_CF.Open;
end;

procedure TfCupomFiscal.Edit1Exit(Sender: TObject);
begin
  if not Posiciona_Produto_EBS then
  begin
    ShowMessage('Produto não encontrado!');
    Edit1.SetFocus;
    Edit1.Clear;
    exit;
  end
  else
  if Edit1.Text <> '' then
    CurrencyEdit1.SetFocus;
end;

procedure TfCupomFiscal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DMCupom.cdsCupomFiscal.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Cancelar ou confirmar o cupom!');
    CanClose := False;
  end
  else
    CanClose := True;
end;

procedure TfCupomFiscal.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Value > 30 then
    if MessageDlg('Quantidade maior do que 30, confirma?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
    begin
      CurrencyEdit1.SetFocus;
      Exit;
    end;
  CurrencyEdit3.Value := 0;
  if (CurrencyEdit2.Value > 0) and (CurrencyEdit1.Value > 0) then
    CurrencyEdit3.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit2.Value * CurrencyEdit1.Value));
end;

procedure TfCupomFiscal.Panel8Exit(Sender: TObject);
begin
  Move_Itens;
end;

procedure TfCupomFiscal.Move_Itens;
begin
  if RxDBLookupCombo1.Text = '' then
    exit;
  if RxDBLookupCombo1.Value <> DMCupom.cdsProdutoID.AsString then
    DMCupom.cdsProduto.Locate('ID',RxDBLookupCombo1.Value,[loCaseInsensitive]);
  CurrencyEdit2.Value := DMCupom.cdsProdutoPRECO_VENDA.AsFloat;

  DmCupom.cdsProdutoPreco.Open;
  DMCupom.cdsProdutoPreco.IndexFieldNames := 'PRODUTO_ID;EMPRESA_ID';
  if DMCupom.cdsProdutoPreco.FindKey([RxDBLookupCombo1.KeyValue,DMCupom.cdsCupomFiscalFILIAL.AsInteger]) then
    CurrencyEdit2.Value := DMCupom.cdsProdutoPrecoPRECO_VENDA.AsFloat;
  DmCupom.cdsProdutoPreco.Close;

  CurrencyEdit1.Value := 1;
  CurrencyEdit1Exit(fCupomFiscal);
end;

procedure TfCupomFiscal.RxDBLookupCombo2Exit(Sender: TObject);
begin
  vAliqIcms := cdsSitTrib_CFPERCENTUAL.AsFloat;
end;

procedure TfCupomFiscal.Limpa_Campos;
begin
  Edit1.Clear;
  RxDBLookupCombo1.ClearValue;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  vAliqIcms := 0;
end;

procedure TfCupomFiscal.Gravar_Estoque;
var
  vNumMovEst: Integer;
begin
  {vNumMovEst := 0;

  try
    DM1.tEstoqueMatMov.IndexFieldNames := 'Filial;NumMov';
    DM1.tEstoqueMatMov.Refresh;
    DM1.tEstoqueMatMov.Last;
    vNumMovEst := DM1.tEstoqueMatMovNumMov.AsInteger + 1;

    DM1.tEstoqueMatMov.Insert;
    Dm1.tEstoqueMatMovFilial.AsInteger      := DMCupom.cdsCupomFiscalFILIAL.AsInteger;
    DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
    DM1.tEstoqueMatMovCodMaterial.AsInteger := DMCupom.cdsCupomFiscalItCODPRODUTO.AsInteger;
    DM1.tEstoqueMatMovCodCor.AsInteger      := 0;
    if DMCupom.cdsCupomFiscalItCODCOR.AsInteger > 0 then
      DM1.tEstoqueMatMovCodCor.AsInteger    := DMCupom.cdsCupomFiscalItCODCOR.AsInteger;
    DM1.tEstoqueMatMovDtMov.AsDateTime      := DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime;
    DM1.tEstoqueMatMovES.AsString           := 'S';
    DM1.tEstoqueMatMovTipoMov.AsString      := 'CFI';
    DM1.tEstoqueMatMovNumNota.AsInteger     := DMCupom.cdsCupomFiscalNUMCUPOM.AsInteger;
    DM1.tEstoqueMatMovCodCliForn.AsInteger  := DMCupom.cdsCupomFiscalCODCLIENTE.AsInteger;
    DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DMCupom.cdsCupomFiscalItVLRUNIT.AsFloat;
    DM1.tEstoqueMatMovQtd.AsFloat           := DMCupom.cdsCupomFiscalItQTD.AsFloat;
    DM1.tEstoqueMatMovQtd2.AsFloat          := StrToFloat(FormatFloat('0.00000',DMCupom.cdsCupomFiscalItQTD.AsFloat * -1));
    DM1.tEstoqueMatMovUnidade.AsString      := DMCupom.cdsCupomFiscalItUNIDADE.AsString;
    DM1.tEstoqueMatMovPercIcms.AsFloat      := DMCupom.cdsCupomFiscalItALIQICMS.AsFloat;
    DM1.tEstoqueMatMovPercIpi.AsFloat       := 0;
    DM1.tEstoqueMatMovVlrDesconto.AsFloat   := 0;
    DM1.tEstoqueMatMovTamanho.AsString      := '';
    if StrToFloat(FormatFloat('0.00',DMCupom.cdsCupomFiscalItALIQICMS.AsFloat)) > 0 then
      DM1.tEstoqueMatMovPercTributacao.AsFloat := 100
    else
      DM1.tEstoqueMatMovPercTributacao.AsFloat := 0;
    DM1.tEstoqueMatMovCodNatOper.AsInteger := DMCupom.cdsCupomFiscalItCODNATOPER.AsInteger;
    DM1.tEstoqueMatMovSerie.AsString       := 'CF';
    DM1.tEstoqueMatMovNumSeqNota.AsInteger := DMCupom.cdsCupomFiscalID_CUPOM.AsInteger;
    DM1.tEstoqueMatMov.Post;
    //02/05/2012
    if DM1.tParametrosUsaFB.AsBoolean then
      Prc_Gravar_Estoque_Mov_FB(dm1.tEstoqueMatMovFilial.AsInteger,dm1.tEstoqueMatMovNumMov.AsInteger);

    if DMCupom.cdsCupomFiscalIt.State in [dsBrowse] then
      DMCupom.cdsCupomFiscalIt.Edit;

    DMCupom.cdsCupomFiscalItNUMMOVEST.AsInteger := vNumMovEst;

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar o estoque, ' + E.Message + '! Clique para continuar!');
      DM1.tMovimentos.Cancel;
    end;
  end;}
end;

procedure TfCupomFiscal.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DMCupom.cdsCupomFiscalItCANCELADO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfCupomFiscal.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(Edit1.Text) <> '') then
    CurrencyEdit1.SetFocus;
end;

procedure TfCupomFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F10) and not(DMCupom.cdsCupomFiscalIt.IsEmpty) then
    NxButton1Click(Sender);
  if (Key = Vk_F3) and not(DMCupom.cdsCupomFiscalIt.IsEmpty) then
    btCancelarClick(Sender);
  if (Key = Vk_F8) then
    NxButton2Click(Sender);
  if (Key = Vk_F2) then
  begin
    fCupomFiscalCli     := TfCupomFiscalCli.Create(Self);
    fCupomFiscalCli.Tag := 1;
    fCupomFiscalCli.ShowModal;
  end;
end;

function TfCupomFiscal.Posiciona_Produto_EBS: Boolean;
begin
  RxDBLookupCombo1.ClearValue;
  Result := False;
  if Trim(Edit1.Text) = '' then
  begin
    Result := True;
    exit;
  end;

  if DMCupom.cdsProduto.Locate('CODBARRA',Edit1.Text,[loCaseInsensitive]) then
    Result := True;

  if not Result then
    if DMCupom.cdsProduto.Locate('ID',Edit1.Text,[loCaseInsensitive]) then
      Result := True;

  if Result then
    RxDBLookupCombo1.Value := DMCupom.cdsProdutoID.AsString;
end;

procedure TfCupomFiscal.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    Edit1.Text := DMCupom.cdsProdutoID.AsString;
end;

procedure TfCupomFiscal.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (CurrencyEdit1.AsInteger > 0) then
  begin
    if CurrencyEdit2.Value > 0 then
      btConfirmar.SetFocus
    else
      CurrencyEdit2.SetFocus;
  end;
end;

procedure TfCupomFiscal.CurrencyEdit2Exit(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger > 0 then
    CurrencyEdit1Exit(Sender);
end;

procedure TfCupomFiscal.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (CurrencyEdit2.AsInteger > 0) then
    btConfirmar.SetFocus;
end;

procedure TfCupomFiscal.FormResize(Sender: TObject);
begin
  RxDBLookupCombo1.Width := Panel1.Left - RxDBLookupCombo1.Left - 10;
  Edit1.Width            := RxDBLookupCombo1.Width;
end;

procedure TfCupomFiscal.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DMCupom.cdsProduto.IndexFieldNames := 'NOME';
end;

function TfCupomFiscal.Recalcula_Total: Currency;
var
  vTotal: Currency;
begin
  SMDBGrid1.DisableScroll;
  vTotal := 0;
  DMCupom.cdsCupomFiscalIt.First;
  while not DMCupom.cdsCupomFiscalIt.Eof do
  begin
    vTotal := vTotal + DMCupom.cdsCupomFiscalItVLRTOTAL.AsCurrency;
    DMCupom.cdsCupomFiscalIt.Next;
  end;
  Result := vTotal;
  SMDBGrid1.EnableScroll;
end;

procedure TfCupomFiscal.btConfirmarClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Produto não informado!');
    Edit1.SetFocus;
    exit;
  end;
  if RxDBLookupCombo1.Value <> DMCupom.cdsProdutoID.AsString then
  begin
    if not DMCupom.cdsProduto.Locate('ID',RxDBLookupCombo1.Value,[loCaseInsensitive]) then
    begin
      ShowMessage('Produto não encontrado!');
      exit;
    end;
  end;
  if CurrencyEdit1.Value <= 0 then
  begin
    ShowMessage('Quantidade não informada!');
    CurrencyEdit1.SetFocus;
    exit;
  end;
  if CurrencyEdit2.Value <= 0 then
  begin
    ShowMessage('Valor unitário não informado!');
    CurrencyEdit1.SetFocus;
    exit;
  end;

  DMCupom.cdsCupomFiscalIt.Last;
  vItemAux := DMCupom.cdsCupomFiscalItITEM.AsInteger;

  if (vCredito - CurrencyEdit2.Value) < 0 then
  begin
    ShowMessage('Crédito insuficiente para esta compra!');
    Exit;
  end;

    DMCupom.cdsCupomFiscalIt.Insert;
    DMCupom.cdsCupomFiscalItID_CUPOM.AsInteger   := DMCupom.cdsCupomFiscalID_CUPOM.AsInteger;
    DMCupom.cdsCupomFiscalItITEM.AsInteger       := vItemAux + 1;

    DMCupom.cdsCupomFiscalItCODPRODUTO.AsString  := RxDBLookupCombo1.Value;
    DMCupom.cdsCupomFiscalItCODCOR.AsInteger     := 0;
    DMCupom.cdsCupomFiscalItQTD.AsFloat          := CurrencyEdit1.Value;
    DMCupom.cdsCupomFiscalItALIQICMS.AsFloat     := vAliqIcms;
//    DMCupom.cdsCupomFiscalItSITTRIB.AsString     := RxDBLookupCombo2.Value;
    DMCupom.cdsCupomFiscalItVLRUNIT.AsFloat      := CurrencyEdit2.Value;
    DMCupom.cdsCupomFiscalItPERCDESCONTO.AsFloat := 0;
    DMCupom.cdsCupomFiscalItVLRDESCONTO.AsFloat  := 0;
    DMCupom.cdsCupomFiscalItVLRTOTAL.AsFloat     := CurrencyEdit3.Value;
    DMCupom.cdsCupomFiscalItBASEICMS.AsFloat     := 0;
    DMCupom.cdsCupomFiscalItVLRICMS.AsFloat      := 0;
    if StrToFloat(FormatFloat('0.00',DMCupom.cdsCupomFiscalItALIQICMS.AsFloat)) > 0 then
    begin
      DMCupom.cdsCupomFiscalItBASEICMS.AsFloat := CurrencyEdit3.Value;
      DMCupom.cdsCupomFiscalItVLRICMS.AsFloat  := StrToFloat(FormatFloat('0.00',DMCupom.cdsCupomFiscalItBASEICMS.AsFloat * DMCupom.cdsCupomFiscalItALIQICMS.AsFloat / 100));
    end;
    DMCupom.cdsCupomFiscalItCODNATOPER.AsInteger := 0;
    DMCupom.cdsCupomFiscalItNUMMOVEST.AsInteger  := 0;
    DMCupom.cdsCupomFiscalItUNIDADE.AsString     := DMCupom.cdsProdutoUNIDADE.AsString;
    DMCupom.cdsCupomFiscalItCANCELADO.AsString   := 'N';
    DMCupom.cdsCupomFiscalItGRAVOU_ESTLOCAL_EBS.AsString := 'N';
  try
    DMCupom.cdsCupomFiscalIt.Post;
    //Total
    DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat    := DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat + DMCupom.cdsCupomFiscalItVLRTOTAL.AsFloat;
    DMCupom.cdsCupomFiscalVLRICMS.AsFloat     := DMCupom.cdsCupomFiscalVLRICMS.AsFloat + DMCupom.cdsCupomFiscalItVLRICMS.AsFloat;
    DMCupom.cdsCupomFiscalVLRPRODUTOS.AsFloat := DMCupom.cdsCupomFiscalVLRPRODUTOS.AsFloat + DMCupom.cdsCupomFiscalItVLRTOTAL.AsFloat;
    DMCupom.cdsCupomFiscalBASEICMS.AsFloat    := DMCupom.cdsCupomFiscalBASEICMS.AsFloat + DMCupom.cdsCupomFiscalItBASEICMS.AsFloat;
    vCredito                                  := vCredito - DMCupom.cdsCupomFiscalItVLRTOTAL.AsFloat;
    //*****
    DMCupom.cdsCupomFiscal.Post;
    DMCupom.cdsCupomFiscal.ApplyUpdates(0);
    DMCupom.cdsCupomFiscal.Edit;
    dmCupom.cdsCupomFiscalIt.Last;

    if not fCupomFiscalC.ckTeste.Checked then
      prc_Imprimir_Item_Cupom_Daruma(False);
  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível incluir o item, ' + E.Message + '! Clique para continuar!');
      DMCupom.cdsCupomFiscalIt.CancelUpdates;
      DMCupom.cdsCupomFiscal.Edit;
      DMCupom.cdsCupomFiscalVLRTOTAL.AsCurrency := Recalcula_Total;
    end;
  end;

  Edit1.SetFocus;
  Limpa_Campos;
end;

procedure TfCupomFiscal.btCancelarClick(Sender: TObject);
var
  vNumSeqAux: Integer;
begin
  if DmCupom.cdsCupomFiscalItCANCELADO.AsString = 'S' then
    Exit;

  if DMCupom.cdsCupomFiscalIt.IsEmpty then
    Exit;

  if MessageDlg('Cancelar o item '+ DMCupom.cdsCupomFiscalItITEM.AsString + ', Prod: ' + DMCupom.cdsCupomFiscalItlkNomeProduto.AsString + ' ?',mtconfirmation,[mbok,mbno],0) = mrNo then
    Exit;

  vNumSeqAux := DMCupom.cdsCupomFiscalItNUMSEQ_EBS.AsInteger;

  try
    DMCupom.cdsCupomFiscalIt.Edit;
    DMCupom.cdsCupomFiscalItCANCELADO.AsString := 'S';
    DMCupom.cdsCupomFiscalIt.Post;

    //Total
    DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat    := DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat - DMCupom.cdsCupomFiscalItVLRTOTAL.AsFloat;
    DMCupom.cdsCupomFiscalVLRICMS.AsFloat     := DMCupom.cdsCupomFiscalVLRICMS.AsFloat - DMCupom.cdsCupomFiscalItVLRICMS.AsFloat;
    DMCupom.cdsCupomFiscalVLRPRODUTOS.AsFloat := DMCupom.cdsCupomFiscalVLRPRODUTOS.AsFloat - DMCupom.cdsCupomFiscalItVLRTOTAL.AsFloat;
    DMCupom.cdsCupomFiscalBASEICMS.AsFloat    := DMCupom.cdsCupomFiscalBASEICMS.AsFloat - DMCupom.cdsCupomFiscalItBASEICMS.AsFloat;
    vCredito                                  := vCredito + DMCupom.cdsCupomFiscalItVLRTOTAL.AsFloat;
    //*****

    DMCupom.cdsCupomFiscal.Post;
    DMCupom.cdsCupomFiscal.ApplyUpdates(0);

    //DMCupom.cdsCupomFiscalIt.Delete;
    //DMCupom.cdsCupomFiscalIt.ApplyUpdates(0);

  except
  end;

  DMCupom.cdsCupomFiscal.Edit;

  //fCupomFiscalCanc := TfCupomFiscalCanc.Create(Self);
  //fCupomFiscalCanc.ShowModal;
end;

procedure TfCupomFiscal.NxButton1Click(Sender: TObject);
begin
  if DMCupom.cdsCupomFiscalIt.IsEmpty then
  begin
    ShowMessage('Não existem itens informados!');
    exit;
  end;

  if MessageDlg('Encerrar o cupom?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
                                                          
  if not fCupomFiscalC.ckTeste.Checked then
    prc_Totalizar_Cupom_Daruma;
  fCupomFiscalPgto := TfCupomFiscalPgto.Create(Self);
  fCupomFiscalPgto.ShowModal;

  if not fCupomFiscalC.ckTeste.Checked then
    prc_Encerrar_Cupom_Daruma;

  fCupomFiscalC.Gravar_Empresa_EBS;

  if DMCupom.cdsCupomFiscal.State in [dsBrowse] then
  begin
    Close;
    //fCupomFiscalC.Tag := 1;
    //fCupomFiscalC.BitBtn1Click(fCupomFiscalC);
  end;
end;

procedure TfCupomFiscal.NxButton2Click(Sender: TObject);
begin
  if not(DMCupom.cdsCupomFiscalIt.IsEmpty) and (StrToFloat(FormatFloat('0.00',DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat)) > 0) then
  begin
    ShowMessage('Cupom não pode ser excluído pois possui itens!');
    Exit;
  end;

  if MessageDlg('Excluir o CUPOM?',mtconfirmation,[mbok,mbno],0) = mrNo then
    Exit;

  fCupomFiscalC.Excluir_Registro(True);
  Close;
end;

end.
