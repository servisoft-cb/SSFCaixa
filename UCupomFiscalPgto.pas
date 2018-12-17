unit UCupomFiscalPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, StdCtrls, Buttons, ExtCtrls,
  Mask, DB, RxDBComb, DBCtrls, Printers, IniFiles;

type
  TfCupomFiscalPgto = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Mostrar_Prazo(Tipo: String);
    procedure Gravar_MovFinanceiro;
    procedure Calcula_Troco;
    function Formatar_Campo(Campo, Lado: String; Tamanho: Integer): String;

    procedure Imprime_Diebold(vPorta: String);
    procedure Imprime_Daruma(vPorta: String);
  public
    { Public declarations }
    procedure Imprime;
  end;

var
  fCupomFiscalPgto: TfCupomFiscalPgto;
const
  cColunas = 40;
  cAvanco  = 20; //era 30, passei a 20 para teste

implementation

uses UDMCupom, UCupomFiscalCli, uUtilCupomFiscal, UCupomFiscalC, UDMEBS, UDMParametros, uCupomFiscalR;

{$R *.dfm}

procedure TfCupomFiscalPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCupomFiscalPgto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfCupomFiscalPgto.BitBtn1Click(Sender: TObject);
var
  vConfirmacao_EBS: String;
  vConfirmacao_Item_EBS: String;
  vFlagItem: Boolean;
  vLimiteOk: Boolean;
begin
  if ((DMCupom.cdsCupomFiscalTIPOPGTO.AsString = 'V') and (StrToFloat(FormatFloat('0.00',DMCupom.cdsCupomFiscalVLRRECEBIDO.AsFloat)) <= 0)) then
    Raise Exception.Create('Valor não informado!');

  if StrToFloat(FormatFloat('0.00',DMCupom.cdsCupomFiscalVLRRECEBIDO.AsFloat)) <= 0 then
    DMCupom.cdsCupomFiscalTIPOPGTO.AsString := 'P'
  else
    DMCupom.cdsCupomFiscalTIPOPGTO.AsString := 'V';

  if (StrToFloat(FormatFloat('0.00',DMCupom.cdsCupomFiscalVLRRECEBIDO.AsFloat)) <= 0) and
     (DMCupom.cdsCupomFiscalAPEL_EBS.AsString = DMParametros.cdsParametrosCONSUMIDOR.AsString) then
  begin
    ShowMessage('Este funcionário não tem permissão para fazer crédito!');
    exit;
  end;

  vLimiteOK := True;
  if DMCupom.cdsCupomFiscalCODTIPOCOBRANCA.AsString = '1' then
    vLimiteOK := fCupomFiscalC.fnc_LimiteCredito_OK;

  if not vLimiteOk then
    exit;

  vConfirmacao_EBS      := '';
  vConfirmacao_Item_EBS := '';
  if Trim(DMCupom.cdsCupomFiscalAPEL_EBS.AsString) = '' then
    DMCupom.cdsCupomFiscalAPEL_EBS.AsString := DMParametros.cdsParametrosCONSUMIDOR.AsString;

  try  //Desabilitado em 19/09/12 //vai gerar arquivo de exportação 
//    fCupomFiscalC.Excluir_Lancamentos_EBS;
//    fCupomFiscalC.Gravar_Lancamentos_EBS;
//    vConfirmacao_EBS := vConfirmacao_EBS + '1';
  except
  end;

  DMCupom.cdsCupomFiscalNUMLANCAMENTO_EBS.AsInteger := 0; //DMEBS.vLancamento_EBS;

  if DMParametros.cdsParametrosESTOQUE_EBS.AsString = 'S' then
  begin

    try
      fCupomFiscalC.Gravar_VendasPDV_EBS;
      vConfirmacao_EBS := vConfirmacao_EBS + '2';
    except
    end;

    try
      fCupomFiscalC.Excluir_EstMovimento_EBS(0);
      fCupomFiscalC.Excluir_UltimasComprasVendas_EBS(0);
    except
    end;

    vFlagItem := True;
    DMCupom.cdsCupomFiscalIt.First;
    while not DMCupom.cdsCupomFiscalIt.Eof do
    begin
      vConfirmacao_Item_EBS := '';
      if DMCupom.cdsCupomFiscalItCANCELADO.AsString = 'S' then
      begin
        if DMCupom.cdsCupomFiscalItGRAVOU_ESTLOCAL_EBS.AsString = 'S' then
          fCupomFiscalC.Gravar_EstLocal_EBS('S');
      end
      else
      if DMCupom.cdsCupomFiscalItCANCELADO.AsString <> 'S' then
      begin
        try
          fCupomFiscalC.Gravar_EstMovimento_EBS;
          vConfirmacao_Item_EBS := 'M';
        except
        end;
        try
          fCupomFiscalC.Gravar_UltimasComprasVendas_EBS;
          vConfirmacao_Item_EBS := vConfirmacao_Item_EBS + 'C';
        except
        end;
        try
          fCupomFiscalC.Gravar_ItensVendasPDV_EBS;
          vConfirmacao_Item_EBS := vConfirmacao_Item_EBS + 'V';
        except
        end;

        if DMCupom.cdsCupomFiscalItGRAVOU_ESTLOCAL_EBS.AsString = 'S' then
          fCupomFiscalC.Gravar_EstLocal_EBS('S');
        try
          fCupomFiscalC.Gravar_EstLocal_EBS('D');
          vConfirmacao_Item_EBS := vConfirmacao_Item_EBS + 'E';
        except
        end;

        DMCupom.cdsCupomFiscalIt.Edit;
        if (vConfirmacao_Item_EBS <> '') and (Copy(vConfirmacao_Item_EBS,Length(vConfirmacao_Item_EBS),1) = 'E') then
          DMCupom.cdsCupomFiscalItGRAVOU_ESTLOCAL_EBS.AsString := 'S';
        DMCupom.cdsCupomFiscalItCONFIRMACAO_EBS.AsString := vConfirmacao_Item_EBS;
        DMCupom.cdsCupomFiscalIt.Post;

        if Length(vConfirmacao_Item_EBS) < 4 then
          vFlagItem := False;

      end;
      DMCupom.cdsCupomFiscalIt.Next;
    end;

    if not vFlagItem then
      vConfirmacao_EBS := vConfirmacao_EBS + 'e'
    else
    if (Length(vConfirmacao_EBS) >= 1) then   //era >= 2, mas foi desabilitada rotina do access
      vConfirmacao_EBS := 'S';
  end; //fim de rotina de gravações EBS

  DMCupom.cdsCupomFiscal.Edit;
  DMCupom.cdsCupomFiscalCONFIRMACAO_EBS.AsString := vConfirmacao_EBS;
  if trim(DMCupom.cdsCupomFiscalAPEL_EBS.AsString) = '' then
    DMCupom.cdsCupomFiscalAPEL_EBS.AsString := DMParametros.cdsParametrosCONSUMIDOR.AsString;
  DMCupom.cdsCupomFiscal.Post;
  DMCupom.cdsCupomFiscal.ApplyUpdates(0);

  if (DMCupom.cdsCupomFiscalIMPRIME_CUPOM.AsString = 'S') then
    Imprime;

{    fCupomFiscalR := TfCupomFiscalR.Create(SElf);
//  fCupomFiscalR.fDmCupom :=
    fCupomFiscalR.RLReport1.Print();
    fCupomFiscalR.RLReport1.Free;}

  //if not fCupomFiscalC.ckTeste.Checked then
  //  prc_Pgto_Cupom_Daruma(RxDBLookupCombo3.Text,RxDBLookupCombo2.Text,dmCupom.cdsCupomFiscalVLRTOTAL.AsCurrency);

  Close;
end;

procedure TfCupomFiscalPgto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //CanClose := (DMCupom.cdsCupomFiscalCODPESSOA.AsInteger > 0);
  //if not CanClose then
  //  ShowMessage('É obrigatório informar o funcionário!');
end;

procedure TfCupomFiscalPgto.BitBtn4Click(Sender: TObject);
begin
  Mostrar_Prazo('V');
  DBEdit1.SetFocus;
end;

procedure TfCupomFiscalPgto.Mostrar_Prazo(Tipo: String);
begin
  DMCupom.cdsCupomFiscalTIPOPGTO.AsString := Tipo;
end;

procedure TfCupomFiscalPgto.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    Calcula_Troco;
    BitBtn1.SetFocus;
  end;
end;

procedure TfCupomFiscalPgto.BitBtn3Click(Sender: TObject);
begin
  Mostrar_Prazo('P');
  DBEdit1.SetFocus;
end;

procedure TfCupomFiscalPgto.Gravar_MovFinanceiro;
begin
end;

procedure TfCupomFiscalPgto.BitBtn5Click(Sender: TObject);
begin
  fCupomFiscalCli := TfCupomFiscalCli.Create(Self);
  fCupomFiscalCli.Tag := 0;
  fCupomFiscalCli.ShowModal;
end;

procedure TfCupomFiscalPgto.DBEdit1Exit(Sender: TObject);
begin
  Calcula_Troco;
end;

procedure TfCupomFiscalPgto.Calcula_Troco;
var
  vVlrRecebidoAux: Real;
begin
  vVlrRecebidoAux := StrToFloat(DBEdit1.Text);
  DMCupom.cdsCupomFiscalVLRTROCO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  if (StrToFloat(FormatFloat('0.00',vVlrRecebidoAux)) > 0) and
     (StrToFloat(FormatFloat('0.00',DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat)) > StrToFloat(FormatFloat('0.00',vVlrRecebidoAux))) then
    Raise Exception.Create('Valor recebido não pode ser menor que valor total!');
  if (StrToFloat(FormatFloat('0.00',vVlrRecebidoAux)) > 0) then
  begin
    DMCupom.cdsCupomFiscalVLRTROCO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrRecebidoAux - DMCupom.cdsCupomFiscalVLRTOTAL.AsFloat));
    Mostrar_Prazo('V');
    BitBtn1.SetFocus;
  end
  else
  if (StrToFloat(FormatFloat('0.00',vVlrRecebidoAux)) <= 0) then
  begin
    Mostrar_Prazo('P');
    BitBtn1.SetFocus;
  end;   
end;

procedure TfCupomFiscalPgto.FormShow(Sender: TObject);
begin
  if DMCupom.cdsCupomFiscalCODTIPOCOBRANCA.AsString = '2' then
  begin
    DBEdit1.Enabled := True;
    DBEdit2.Enabled := True;
    BitBtn1.SetFocus;
  end;
end;

procedure TfCupomFiscalPgto.Imprime_Diebold(vPorta: String);
var
  vTexto: AnsiString;
  vLinha: Integer;
begin
  Printer.BeginDoc;
  Printer.NewPage;
  Printer.Canvas.Font.Name := 'Courier New';

  vLinha := 0;
  vTexto := DMCupom.cdsCupomFiscalFANTASIA.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;
  vTexto := '     CUPOM = ' + DMCupom.cdsCupomFiscalNUMCUPOM.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;
  vTexto := '  DT.VENDA = ' + FormatDateTime('DD/MM/YYYY',DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime);
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;
  vTexto := 'CONSUMIDOR = ' + Copy(DMCupom.cdsCupomFiscalNOME_PESSOA.AsString,1,17);
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;
  vTexto := '  VENDEDOR = ' + DMCupom.cdsCupomFiscalUSUARIO.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;

//          '1234567890123456789012345678901234567890'
{  vTexto := '------------------------------';
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;

  vTexto := 'PRODUTO                       ';
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;}

  vTexto := '------------------------------';
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;

  DMCupom.cdsCupomFiscalIt.First;
  while not DMCupom.cdsCupomFiscalIt.Eof do
  begin
    if DMCupom.cdsCupomFiscalItCANCELADO.AsString = 'S' then
    begin
      DMCupom.cdsCupomFiscalIt.Next;
      Continue;
    end;

    vTexto := Formatar_Campo(Copy(DMCupom.cdsCupomFiscalItlkNomeProduto.AsString,1,30),'E',30);
    Printer.Canvas.TextOut(0,vLinha,vTexto);
    vLinha := vLinha + cAvanco;
    if Trim(DMCupom.cdsCupomFiscalItlkNomeProduto2.AsString) <> '' then
    begin
      vTexto := Formatar_Campo(Copy(DMCupom.cdsCupomFiscalItlkNomeProduto2.AsString,1,30),'E',30);
      Printer.Canvas.TextOut(0,vLinha,vTexto);
      vLinha := vLinha + cAvanco;
    end;
    vTexto := 'QTD ' + Formatar_Campo(FormatFloat('0',DMCupom.cdsCupomFiscalItQTD.AsCurrency),'E',2);
    vTexto := vTexto + ' UNIT. ' + Formatar_Campo(FormatFloat('0.00',DMCupom.cdsCupomFiscalItVLRUNIT.AsCurrency),'E',5);
    vTexto := vTexto + ' TOTAL ' + Formatar_Campo(FormatFloat('0.00',DMCupom.cdsCupomFiscalItVLRTOTAL.AsCurrency),'D',5);
    Printer.Canvas.TextOut(0,vLinha,vTexto);
    vLinha := vLinha + cAvanco;

    Printer.Canvas.TextOut(0,vLinha,'');
    vLinha := vLinha + cAvanco;

    DMCupom.cdsCupomFiscalIt.Next;
  end;

  vTexto := '------------------------------';
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;

  vTexto := 'TOTAL = ' + FormatFloat('0.00',DMCupom.cdsCupomFiscalVLRTOTAL.AsCurrency);
  Printer.Canvas.TextOut(0,vLinha,vTexto);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;

  Printer.EndDoc;
end;

function Centraliza(Texto: AnsiString; NumColunas: Integer): AnsiString;
var
TamTexto, Margem, Resto, i: integer;
begin
  TamTexto := length(Texto);

  if TamTexto > NumColunas then
    Result:= Centraliza(copy(Texto,0,NumColunas),NumColunas) + Centraliza(copy(Texto,NumColunas,TamTexto),NumColunas)
  else
  begin
    Margem := (NumColunas - TamTexto) div 2;
    Resto  := (NumColunas - TamTexto) mod 2;

    if Resto = 1 then
    begin
      i:= 0;
      while copy(Texto, i, 1) <> ' ' do
         i:= i + 1;

      if i < NumColunas then
          Texto:= Copy(Texto, 0, i - 1) + ' ' + Copy(Texto, i, NumColunas - i);
    end;

    while Margem > 0 do
    begin
      Texto  := ' ' + Texto + ' ';
      Margem := Margem - 1;
    end;

    Result:= Texto;
  end;
end;

function TfCupomFiscalPgto.Formatar_Campo(Campo, Lado: String; Tamanho: Integer): String;
var
  i: Integer;
  texto: String;
  vAux: Integer;
begin
  if Tamanho <= 0 then
    vAux := Length(Campo)
  else
    vAux := Tamanho;
  Result := '';
  texto := Campo;

  if Lado = 'E' then
    for i := 1 to vAux - Length(texto) do
      texto := texto + ' '
  else
    for i := 1 to vAux - Length(texto) do
      texto := ' ' + texto;
  Result := Texto;
end;

procedure TfCupomFiscalPgto.Imprime_Daruma(vPorta: String);
var
  vTexto: AnsiString;
  vLinha: Integer;
  f: TextFile;
  arq: String;
begin
  arq := 'COM' + IntToStr(StrToInt(vPorta) + 1);

  AssignFile(f,arq);
  Rewrite(f);

  vTexto := DMCupom.cdsCupomFiscalFANTASIA.AsString;
  WriteLn(f,vTexto);
  vTexto := '     CUPOM = ' + DMCupom.cdsCupomFiscalNUMCUPOM.AsString;
  WriteLn(f,vTexto);
  vTexto := '  DT.VENDA = ' + FormatDateTime('DD/MM/YYYY',DMCupom.cdsCupomFiscalDTEMISSAO.AsDateTime);
  WriteLn(f,vTexto);
  vTexto := 'CONSUMIDOR = ' + Copy(DMCupom.cdsCupomFiscalNOME_PESSOA.AsString,1,17);
  WriteLn(f,vTexto);
  vTexto := '  VENDEDOR = ' + DMCupom.cdsCupomFiscalUSUARIO.AsString;
  WriteLn(f,vTexto);

  vTexto := '------------------------------';
  WriteLn(f,vTexto);

  DMCupom.cdsCupomFiscalIt.First;
  while not DMCupom.cdsCupomFiscalIt.Eof do
  begin
    if DMCupom.cdsCupomFiscalItCANCELADO.AsString = 'S' then
    begin
      DMCupom.cdsCupomFiscalIt.Next;
      Continue;
    end;

    vTexto := Formatar_Campo(Copy(DMCupom.cdsCupomFiscalItlkNomeProduto.AsString,1,30),'E',30);
    WriteLn(f,vTexto);
    if Trim(DMCupom.cdsCupomFiscalItlkNomeProduto2.AsString) <> '' then
    begin
      vTexto := Formatar_Campo(Copy(DMCupom.cdsCupomFiscalItlkNomeProduto2.AsString,1,30),'E',30);
      WriteLn(f,vTexto);
    end;
    vTexto := 'QTD ' + Formatar_Campo(FormatFloat('0',DMCupom.cdsCupomFiscalItQTD.AsCurrency),'E',2);
    vTexto := vTexto + ' UNIT. ' + Formatar_Campo(FormatFloat('0.00',DMCupom.cdsCupomFiscalItVLRUNIT.AsCurrency),'E',5);
    vTexto := vTexto + ' TOTAL ' + Formatar_Campo(FormatFloat('0.00',DMCupom.cdsCupomFiscalItVLRTOTAL.AsCurrency),'D',5);
    WriteLn(f,vTexto);

    WriteLn(f);

    DMCupom.cdsCupomFiscalIt.Next;
  end;

  vTexto := '------------------------------';
  WriteLn(f,vTexto);

  vTexto := 'TOTAL = ' + FormatFloat('0.00',DMCupom.cdsCupomFiscalVLRTOTAL.AsCurrency);
  WriteLn(f,vTexto);

  for vLinha := 0 to 6 do
    WriteLn(f);

  CloseFile(f);
end;

procedure TfCupomFiscalPgto.Imprime;
var
  vImpressora, vPorta: String;
  ini: TIniFile;
begin
  ini := TIniFile.Create('C:\$Servisoft\Impressora.ini');
  try
    vImpressora := ini.ReadString('IMPRESSORA','impressora','');
    vPorta      := ini.ReadString('IMPRESSORA','porta','');
  finally
    ini.Free;
  end;

  case StrToInt(vImpressora) of
    0: Imprime_Diebold(vPorta);
    1: Imprime_Daruma(vPorta);
  end;
end;

end.
