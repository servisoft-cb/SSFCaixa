unit UCupomFiscalCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, StdCtrls, Buttons, DB,
  ExtCtrls, NBioAPI_Type, IndexSearchType, IndexSearchInter, DBCtrls, ComCtrls, BSPInter, FMTBcd, DBClient, Provider,
  SqlExpr, RXSpin, iniFiles;

type
  TfCupomFiscalCli = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    lbVlrLimite: TLabel;
    Label4: TLabel;
    lbVlrAberto: TLabel;
    Label6: TLabel;
    lbVlrDisponivel: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    Edit1: TEdit;
    DBText2: TDBText;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    Edit2: TEdit;
    Image1: TImage;
    Shape1: TShape;
    Label8: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBText4: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    RxSpinEdit1: TRxSpinEdit;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxSpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
    ct: String;
    liberaConsumidor: Boolean;
    vGravarUnPadrao: Boolean;
    procedure identificar;
    procedure prc_Senha(vLibera: Boolean);
    procedure prc_Pesquisa;
    procedure Grava_Ini;
  public
    { Public declarations }
    procedure calcLimites;
  end;

const
  NBioAPIERROR_NONE = 0;
  NBioAPI_FIR_PURPOSE_VERIFY    = 1;
  //Constant for DeviceID
  NBioAPI_DEVICE_ID_NONE        = 0;
  NBioAPI_DEVICE_ID_FDP02_0     = 1;
  NBioAPI_DEVICE_ID_FDU01_0     = 2;
  NBioAPI_DEVICE_ID_AUTO_DETECT = 255;

var
  fCupomFiscalCli: TfCupomFiscalCli;
  vCredito: Real;

implementation

uses UDMPessoa, UDmOracle, UCupomFiscalPgto, UDMEBS, UCupomFiscalC, UDMParametros;

{$R *.dfm}

procedure TfCupomFiscalCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Grava_Ini;
  dmOracle.sdsFuncionarioOra.CommandText := ct;
  Action := Cafree;
end;

procedure TfCupomFiscalCli.FormShow(Sender: TObject);
begin
  liberaConsumidor := False;
  Label8.Visible   := False;
  Image1.Picture   := Nil;
  ct := dmOracle.sdsFuncionarioOra.CommandText;

  BitBtn3.Enabled := (Tag = 1);

  if DMParametros.vUnPadrao <> '' then
  begin
    Edit2.Text      := DMParametros.vUnPadrao;
    vGravarUnPadrao := False;
  end;

//  Panel2.Visible  := (Tag = 1);
end;

procedure TfCupomFiscalCli.BitBtn2Click(Sender: TObject);
begin
  fCupomFiscalC.vCodCliente := 0;
  fCupomFiscalC.vEmpresa    := '';
  fCupomFiscalC.vUnidade    := '';
  dmOracle.cdsFuncionarioOra.Close;
  fCupomFiscalC.vDigital := False;
  Close;
end;

procedure TfCupomFiscalCli.BitBtn1Click(Sender: TObject);
begin
  if vGravarUnPadrao then
  begin
  end;

  if not fCupomFiscalC.vDigital then
    Exit;

  if vCredito < 0.10 then
  begin
    ShowMessage('Crédito insuficiente para comprar!');
    Exit;
  end
  else
  if vCredito < 10 then
    ShowMessage('Crédito inferior a R$ 10,00!');
  Close;
end;

procedure TfCupomFiscalCli.BitBtn3Click(Sender: TObject);
var
  vVlrAux: Real;
begin
  if (Trim(Edit1.Text) <> '') or (fCupomFiscalC.vCodCliente > 0) then
  begin
    DMEBS.Abrir_LimiteCredito(fCupomFiscalC.vEmpresa + '_' + IntToStr(fCupomFiscalC.vCodCliente));
    vVlrAux := StrToFloat(FormatFloat('0.00',dmOracle.cdsFuncionarioOraLIMITE.AsFloat - DMEBS.adsLimiteCreditoVlrOriginal.AsFloat));

    lbVlrLimite.Caption     := FormatFloat('###,###,##0.00',dmOracle.cdsFuncionarioOraLIMITE.AsFloat);
    lbVlrAberto.Caption     := FormatFloat('###,###,##0.00',DMEBS.adsLimiteCreditoVlrOriginal.AsFloat);
    lbVlrDisponivel.Caption := FormatFloat('###,###,##0.00',vVlrAux);
  end;
end;

procedure TfCupomFiscalCli.identificar;
var
  userId, vCampo: string;
  szFir: wideString;
  str: wideString;
begin
  vCampo := 'codigo';
// Abre o sensor
  objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT);
  if objDevice.ErrorCode <> NBioAPIERROR_NONE then
  begin
    str := objDevice.ErrorDescription;
    ShowMessage('Falha ao fazer a captura!');
    Exit;
  end;

  // Faz a captura
  objExtraction.Capture(NBioAPI_FIR_PURPOSE_VERIFY);
  if objExtraction.ErrorCode = NBioAPIERROR_NONE then
  begin
    // Fecha o sensor
    objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
    // szFir recebe o TEMPLATE
    szFir := objExtraction.TextEncodeFIR;

    //Faz a busca no IndexSearch com nível de segurança 5
    objIndexSearch.IdentifyUser(szFir, 5);

    if objIndexSearch.ErrorCode <> NBioAPIERROR_NONE then
    begin
      objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT); // Fecha o sensor
      fCupomFiscalC.vDigital := False;
      ShowMessage('Usuário não identificado!');
      Exit;
    end;
    // Retorna o Id do usuário identificado
    userId := intTostr(objIndexSearch.UserID);
  end
  else
  begin
    objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT); // Fecha o sensor
    fCupomFiscalC.vDigital := False;
    ShowMessage('Extraction failed!');
  end;

  // Fecha o sensor
  objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);

  DMPessoa.cdsPessoaDigitalOra.IndexFieldNames := 'ID';
  DMPessoa.cdsPessoaDigitalOra.Close;
  DMPessoa.sdsPessoaDigitalOra.CommandText := 'SELECT PDO.* FROM PESSOA_DIGITAL_ORA PDO WHERE ID = ' + userID;
  DMPessoa.cdsPessoaDigitalOra.Open;

//  if DMPessoa.cdsPessoaDigitalOra.FindKey([userId]) then
  if DMPessoa.cdsPessoaDigitalOra.RecordCount > 0 then
  begin
    fCupomFiscalC.vCodCliente := DMPessoa.cdsPessoaDigitalOraPESSOA.AsInteger;
    fCupomFiscalC.vEmpresa    := DMPessoa.cdsPessoaDigitalOraEMPRESA.AsString;
    fCupomFiscalC.vUnidade    := DMPessoa.cdsPessoaDigitalOraUNIDADE.AsString;
    dmOracle.cdsFuncionarioOra.Close;
    dmOracle.sdsFuncionarioOra.CommandText := ct + ' WHERE EMPRESA = ' + fCupomFiscalC.vEmpresa +
                                                   ' AND PESSOA = ' + IntToStr(fCupomFiscalC.vCodCliente);
    dmOracle.cdsFuncionarioOra.Open;

    if dmOracle.cdsFuncionarioOra.IsEmpty then
    begin
      ShowMessage(fCupomFiscalC.vEmpresa + '/' + IntToStr(fCupomFiscalC.vCodCliente) + ' está demitido ou não cadastrado no BEE!');
      fCupomFiscalC.vDigital := False;
      Exit;
    end;

    fCupomFiscalC.vDigital := False;
    if fCupomFiscalC.vCodCliente > 0 then
      fCupomFiscalC.vDigital := True;
    Label8.Visible := False;
  end
  else
  begin
    Application.MessageBox('Impressão digital não cadastrada!','Resultado da pesquisa ',+mb_iconerror);
  end;
end;

procedure TfCupomFiscalCli.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Image1.Picture := Nil;
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    prc_Senha(True);
  end;
  if (Key = Vk_Return) then
  begin
    prc_Pesquisa;
  end;
end;

procedure TfCupomFiscalCli.Edit1Change(Sender: TObject);
begin
  Label8.Visible  := False;
  DBText1.Visible := False;
  DBText2.Visible := False;
  DBText3.Visible := False;
  BitBtn1.Enabled := False;
end;

procedure TfCupomFiscalCli.calcLimites;
var
  vData: TDateTime;
  ano, mes, dia: Word;
begin
  DecodeDate(Date,ano,mes,dia);
  if Dia > 19 then
    vData := EncodeDate(ano,mes,19)
  else
  begin
    if mes = 1 then
    begin
      mes := 12;
      ano := ano - 1;
      vData := EncodeDate(ano,mes,19);
    end
    else
    begin
      mes := mes - 1;
      vData := EncodeDate(ano,mes,19);
    end;
  end;

  lbVlrLimite.Caption := FormatFloat('0.00',dmOracle.cdsFuncionarioOraLIMITE.AsCurrency);
  if Edit1.Text = DMParametros.cdsParametrosCONSUMIDOR.AsString then
  begin
    vCredito := 100;
    lbVlrAberto.Caption     := '0.00';
    lbVlrDisponivel.Caption := '0.00';
  end
  else
  begin
//    ShowMessage('Vai calcular crédito!');
    DMParametros.cdsCupomFiscal_Cons.Close;
    DMParametros.sdsCupomFiscal_Cons.ParamByName('E1').AsString  := fCupomFiscalC.vEmpresa;
    DMParametros.sdsCupomFiscal_Cons.ParamByName('U1').AsString  := fCupomFiscalC.vUnidade;
    DMParametros.sdsCupomFiscal_Cons.ParamByName('P1').AsInteger := fCupomFiscalC.vCodCliente;
    DMParametros.sdsCupomFiscal_Cons.ParamByName('D1').AsDate    := vData;
    DMParametros.cdsCupomFiscal_Cons.Open;
//    ShowMessage('Tabela de consulta de crédito aberta!');
    lbVlrAberto.Caption     := FormatFloat('0.00',DMParametros.cdsCupomFiscal_ConsSOMA.AsCurrency);
    lbVlrDisponivel.Caption := FormatFloat('0.00',dmOracle.cdsFuncionarioOraLIMITE.AsCurrency -
                                                  DMParametros.cdsCupomFiscal_ConsSOMA.AsCurrency);
//    ShowMessage('Crédito calculado!');
    vCredito := dmOracle.cdsFuncionarioOraLIMITE.AsCurrency - DMParametros.cdsCupomFiscal_ConsSOMA.AsCurrency;
  end;
end;

procedure TfCupomFiscalCli.Edit2Exit(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TfCupomFiscalCli.BitBtn4Click(Sender: TObject);
begin
  prc_Senha(True);
end;

procedure TfCupomFiscalCli.prc_Senha(vLibera: Boolean);
begin
  liberaConsumidor := vLibera;
  Label9.Visible   := vLibera;
  Edit3.Visible    := vLibera;
  BitBtn5.Visible  := vLibera;
end;

procedure TfCupomFiscalCli.prc_Pesquisa;
var
  vTexto: String;
begin
  fCupomFiscalC.vDigital := False;
  if Trim(Edit1.Text) = '' then
  begin
    Edit1Change(Edit1);
    identificar;
  end
  else
  begin
    if liberaConsumidor then
    begin
//    ShowMessage('vai abrir dmOracle.cdsFuncionarioOra');
      dmOracle.cdsFuncionarioOra.Close;
      dmOracle.sdsFuncionarioOra.CommandText := ct + ' WHERE EMPRESA = ' + Edit2.Text + ' AND PESSOA = ' + Edit1.Text;   //17/07/14
      dmOracle.sdsFuncionarioOra.CommandText := ct + ' WHERE UNIDADE = ' + QuotedStr(Edit2.Text) + ' AND PESSOA = ' + Edit1.Text;
      dmOracle.cdsFuncionarioOra.Open;
//    ShowMessage('abriu dmOracle.cdsFuncionarioOra');
//    ShowMessage('vai abrir dmPessoa.cdsPessoaDigitalOra');
      DMPessoa.cdsPessoaDigitalOra.Close;
      DMPessoa.sdsPessoaDigitalOra.CommandText := 'SELECT PDO.* FROM PESSOA_DIGITAL_ORA PDO ' +
                                                  'WHERE UNIDADE = ' + QuotedStr(Edit2.Text) +
                                                  ' AND PESSOA = ' + Edit1.Text;
      DMPessoa.cdsPessoaDigitalOra.Open;
//    ShowMessage('abriu dmPessoa.cdsPessoaDigitalOra');

      if (DMPessoa.cdsPessoaDigitalOra.IsEmpty) then
      begin
        ShowMessage('Crachá incorreto!');
        DMPessoa.cdsPessoaDigitalOra.Close;
        Exit;
      end;
      if (Edit3.Text <> DMPessoa.cdsPessoaDigitalOraSENHA.AsString) then
      begin
        ShowMessage('Senha incorreta!');
        DMPessoa.cdsPessoaDigitalOra.Close;
        Edit3.SetFocus;
        Exit;
      end;
      DMPessoa.cdsPessoaDigitalOra.Close;
    end;
    if (liberaConsumidor) or (Edit1.Text = DMParametros.cdsParametrosCONSUMIDOR.AsString) then
    begin
      fCupomFiscalC.vDigital    := True;
      Label8.Visible            := (Edit1.Text = DMParametros.cdsParametrosCONSUMIDOR.AsString);
      fCupomFiscalC.vUnidade    := Edit2.Text;
      fCupomFiscalC.vEmpresa    := Edit2.Text;
      fCupomFiscalC.vCodCliente := StrToInt(Edit1.Text);
      prc_Senha(False);
    end
    else
    begin
      ShowMessage('Código inválido para pagamento de consumidor!');
      prc_Senha(False);
      Edit1.Clear;
      Edit1.SetFocus;
      fCupomFiscalC.vDigital := False;
    end;
  end;

  if fCupomFiscalC.vDigital then
  begin
//////////carrega limite e saldo
    calcLimites;

    BitBtn1.Enabled := (Tag = 0);
    DBText1.Visible := True;
    DBText2.Visible := True;
    DBText3.Visible := True;

//////////carrega foto
    if DMParametros.cdsParametrosUSARSTRETCH.AsString = 'S' then
      Image1.Stretch := True
    else
      Image1.Stretch := False;
    vTexto := DMParametros.cdsParametrosENDERECO_FOTOS.AsString+DMParametros.cdsParametrosSEPARADORDAFOTO.AsString+
              dmOracle.cdsFuncionarioOraFOTO.AsString+'.'+DMParametros.cdsParametrosEXTENSAOFOTO.AsString;
    if FileExists(vTexto) Then
      Image1.Picture.LoadFromFile(vTexto);
  end;

  if BitBtn1.Enabled then
    BitBtn1.SetFocus
  else
    Edit1.SetFocus;
end;

procedure TfCupomFiscalCli.BitBtn5Click(Sender: TObject);
begin
  prc_Pesquisa;
end;

procedure TfCupomFiscalCli.RxSpinEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    case RxSpinEdit1.AsInteger of
      1: begin
           Edit1.Visible   := True;
           Edit2.Visible   := True;
           Label3.Visible  := True;
           BitBtn4.Visible := True;
           Edit1.SetFocus;
         end;
      2,3: begin
             Edit1.Visible   := False;
             Edit1.Text      := '0';
             Edit2.Visible   := False;
             Label3.Visible  := False;
             BitBtn4.Visible := False;
             prc_Pesquisa;
           end;
    end;
    fCupomFiscalC.vFormaPgto := RxSpinEdit1.AsInteger;
  end;
end;

procedure TfCupomFiscalCli.Grava_Ini;
var
  ini: TIniFile;
begin
  if not DirectoryExists('C:\$Servisoft\') then
    CreateDirectory('C:\$Servisoft\',nil);
  ini := TIniFile.Create('C:\$Servisoft\Impressora.ini');
  try
    ini.WriteString('IMPRESSORA','UnPadrao',Edit2.Text);
  finally
    ini.Free;
  end;
end;

procedure TfCupomFiscalCli.Edit3Change(Sender: TObject);
begin
  BitBtn1.Enabled := False;
end;

end.
