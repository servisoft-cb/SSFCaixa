unit UFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  Mask, DBCtrls,  RxLookup, ToolEdit, RXDBCtrl, RxDBComb, RzDBEdit, RzTabs, FMTBcd, DB, SqlExpr, CurrEdit, ExtDlgs,
  VerificaCPF, ComCtrls, DateUtils, IndexSearchInter, NBioAPI_Type, IndexSearchType, BSPInter, UCBase, ComObj;

const
  DEFAULT_TIME_OUT = 10000;    //10000ms

type
  TfFuncionario = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RzPageControl1: TRzPageControl;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    OpenPictureDialog2: TOpenPictureDialog;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label52: TLabel;
    BitBtn3: TBitBtn;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBDateEdit3: TDBDateEdit;
    TabSheet7: TRzTabSheet;
    Panel4: TPanel;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label5: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    LVUsers: TListView;
    UCControls1: TUCControls;
    BitBtn4: TBitBtn;
    Image1: TImage;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Gravar_Funcionario;
    procedure Gravar_EmpresaEBS;
    procedure gravarDigitais;
  public
    { Public declarations }
  end;

const
  NBioAPIERROR_NONE = 0;
  NBioAPI_FIR_PURPOSE_VERIFY      = 1;
  //Constant for DeviceID
  NBioAPI_DEVICE_ID_NONE          = 0;
  NBioAPI_DEVICE_ID_FDP02_0       = 1;
  NBioAPI_DEVICE_ID_FDU01_0       = 2;
  NBioAPI_DEVICE_ID_AUTO_DETECT   = 255;

var
  fFuncionario: TfFuncionario;
  objNBioBSP    : variant;
  objDevice     : variant;
  objExtraction : variant;
  objIndexSearch: variant;

implementation

uses DmdDatabase, UDMPessoa, UFuncionarioC, UDMParametros;

{$R *.dfm}

procedure TfFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMPessoa.cdsPessoaDigital.Close;
  
  if DMPessoa.cdsPessoa.State in [dsEdit,dsInsert] then
    DMPessoa.cdsPessoa.CancelUpdates;

  if DMPessoa.cdsPessoa.ClassName  = Self.ClassName then
    FreeAndNil(DMPessoa);

  Tag    := 0;

  Action := Cafree;
end;

procedure TfFuncionario.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMPessoa.cdsPessoa.CancelUpdates;
  Close;
end;

procedure TfFuncionario.BitBtn1Click(Sender: TObject);
begin
  if trim(DMPessoa.cdsPessoaNOME.AsString) = '' then
  begin
    ShowMessage('Nome do funcionário não foi informado!');
    Exit;
  end;
  if trim(DMPessoa.cdsPessoaAPEL_EBS.AsString) = '' then
  begin
    ShowMessage('Código EBS não foi informado!');
    Exit;
  end;
  if DMPessoa.cdsPessoa.State in [dsBrowse] then
    DMPessoa.cdsPessoa.Edit;

  Gravar_Funcionario;
  Gravar_EmpresaEBS;

//  gravarDigitais;

  Close;
end;

procedure TfFuncionario.Gravar_Funcionario;
begin
  try
    if DMPessoa.cdsPessoaSITUACAO.AsString = 'D' then
      DMPessoa.cdsPessoaDTDEMISSAO.Clear;

    DMPessoa.cdsPessoaID_PESSOA.AsInteger := DMPessoa.cdsPessoaID.AsInteger;  

    DMPessoa.cdsPessoa.Post;

    DMPessoa.cdsPessoa.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

procedure TfFuncionario.BitBtn3Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  //DMPessoa.cdsPessoaFOTO.AsString := OpenPictureDialog2.FileName;
end;

procedure TfFuncionario.DBEdit24Change(Sender: TObject);
begin
  //if FileExists(DMPessoa.cdsPessoaEND_FOTO.AsString) Then
  //  Image1.Picture.LoadFromFile(DMPessoa.cdsPessoaEND_FOTO.AsString);
end;

procedure TfFuncionario.Gravar_EmpresaEBS;
begin
  DMPessoa.adsEmpresas.Close;
  DMPessoa.adsEmpresas.CommandText := 'SELECT * FROM Empresas '
                                    + ' WHERE Apel = ' + QuotedStr(DMPessoa.cdsPessoaAPEL_EBS.AsString);
  DMPessoa.adsEmpresas.Open;
  if not DMPessoa.adsEmpresas.IsEmpty then
    DMPessoa.adsEmpresas.Edit
  else
  begin
    DMPessoa.adsEmpresas.Insert;
    DMPessoa.adsEmpresasApel.AsString := DMPessoa.cdsPessoaAPEL_EBS.AsString;
  end;
  DMPessoa.adsEmpresasRazo.AsString := DMPessoa.cdsPessoaNOME.AsString;
  DMPessoa.adsEmpresasTipo.AsString := 'Ambos';
  DMPessoa.adsEmpresasCadastro.AsDateTime := DMPessoa.cdsPessoaDTCADASTRO.AsDateTime;
  DMPessoa.adsEmpresasPessoa.AsString     := 'Física';
  DMPessoa.adsEmpresasEndereo.AsString    := DMPessoa.cdsPessoaENDERECO.AsString;
  if Trim(DMPessoa.cdsPessoaENDNUM.AsString) <> '' then
    DMPessoa.adsEmpresasEndereo.AsString  := DMPessoa.cdsPessoaENDERECO.AsString + ', ' + DMPessoa.cdsPessoaENDNUM.AsString;
  DMPessoa.adsEmpresasBairro.AsString     := DMPessoa.cdsPessoaBAIRRO.AsString;
  DMPessoa.adsEmpresasCEP.AsString        := DMPessoa.cdsPessoaCEP.AsString;
  DMPessoa.adsEmpresasCidade.AsString     := DMPessoa.cdsPessoaCIDADE.AsString;
  DMPessoa.adsEmpresasEstado.AsString     := DMPessoa.cdsPessoaUF.AsString;
  DMPessoa.adsEmpresasPas.AsString        := 'BR';
  DMPessoa.adsEmpresasFone1.AsString      := '';
  DMPessoa.adsEmpresasFone2.AsString      := '';
  DMPessoa.adsEmpresasRamal1.AsString     := '';
  DMPessoa.adsEmpresasRamo.AsString       := '1';
  DMPessoa.adsEmpresasCrdito.AsFloat      := DMPessoa.cdsPessoaVLRLIMITECREDITO.AsFloat;
  DMPessoa.adsEmpresas.Post;
  DMPessoa.adsEmpresas.UpdateBatch();
end;

procedure TfFuncionario.FormCreate(Sender: TObject);
begin
  DMPessoa.cdsPessoaDigital.Open;
end;

procedure TfFuncionario.BitBtn4Click(Sender: TObject);
var
  szFir: wideString;
  nUserID: DWORD;
//  ret             : DWORD;
//  nCnt, nSampleCnt: Integer;
//  input_fir       : NBioAPI_INPUT_FIR;
//  infoSample      : NBioAPI_INDEXSEARCH_SAMPLE_INFO;
begin
  nUserID := DMPessoa.cdsPessoaID.AsInteger;

  // Get FIR data
  objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT) ;

  if objDevice.ErrorCode <> 0 Then
  begin
    ShowMessage('Falha ao abrir o sensor biométrico!');
    Exit;
  end;

  // Registra um novo TEMPLATE
  objExtraction.Enroll(nUserID, 0);
  DMPessoa.cdsPessoaDEDO_D1.AsString := objExtraction.TextEncodeFIR;

  if objExtraction.ErrorCode <> NBioAPIERROR_NONE Then
  begin
    ShowMessage('Registro falhou!');
    Exit;
  end;

  objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);

  szFir := objExtraction.TextEncodeFIR;

  //Adciona na memória
  objIndexSearch.AddFIR(szFir, nUserID);

  if (objIndexSearch.ErrorCode = NBioAPIERROR_NONE) Then
    ShowMessage('Impressão digital capturada com sucesso!');



{  if fFuncionarioC.m_hFIR <> 0 then
  begin
    FreeFIRHandle(fFuncionarioC.m_hFIR);
    fFuncionarioC.m_hFIR := 0;
  end;

  FillChar(infoSample, SizeOf(infoSample), 0);

  if (OpenDevice(NBioAPI_DEVICE_ID_AUTO_DETECT) <> NBioAPIERROR_NONE) then
  begin
    ShowMessage('Falha ao abrir dispositivo!');
    Exit;
  end;

  ret := Enroll(@fFuncionarioC.m_hFIR, nil, DEFAULT_TIME_OUT, nil);

  if(ret = NBioAPIERROR_NONE) Then
  begin
    input_fir.Form              := NBioAPI_FIR_FORM_HANDLE;
    input_fir.InputFir.FIRinBSP := @fFuncionarioC.m_hFIR;

    if DMPessoa.cdsPessoaID.AsInteger > 0 then
    begin
      FillChar(infoSample, SizeOf(infoSample), 0);

      nUserID := DMPessoa.cdsPessoaID.AsInteger;

      ret := AddFIRToIndexSearchDB(@input_fir, nUserID, @infoSample);

      if(ret = NBioAPIERROR_NONE) then
      begin
        for nCnt := 0 To 10 do
        begin
          if(infoSample.SampleCount[nCnt] <> 0) Then
          begin
            for nSampleCnt := 0 to (infoSample.SampleCount[nCnt] - 1) do
            begin
              with LVUsers.Items.Add do
              begin
                Caption := IntToStr(infoSample.ID);
                SubItems.Add(IntToStr(nCnt));
                SubItems.Add(IntToStr(nSampleCnt));
              end;
            end; //end..for
          end; //end..if
        end; //end..for

        ShowMessage('Adicionado com sucesso!');
      end else
        ShowMessage('Falha ao adicionar digital!');
    end else
      ShowMessage('Please, input user id...');
  end else
    ShowMessage('Falha na identificação!');

  if (CloseDevice(NBioAPI_DEVICE_ID_AUTO_DETECT) <> NBioAPIERROR_NONE) then
    ShowMessage('Falha ao fechar dispositivo!');}
end;

procedure TfFuncionario.gravarDigitais;
var
  ret        : DWORD;
  i          : Integer;
  szFileName : String;
  szInputData: String;
begin
{  SaveDialog1.Filter  := 'ISDB Files|*.ISDB';
  SaveDialog1.Options := [ofOverwritePrompt, ofHideReadOnly];

  if SaveDialog1.Execute then
  begin
    szFileName := SaveDialog1.FileName;

    if szFileName <> '' then
    begin
      ret := SaveIndexSearchDBToFile(PChar(szFileName));

      if (ret = NBioAPIERROR_NONE) then
      begin
        //Save list to file
        szFileName1 := Copy(szFileName, 1, Length(szFileName) - 5);

        AssignFile(fh1, szFileName1 + '.FID');
        ReWrite(fh1);

        for i := 0 to LVUsers.Items.Count-1 do
        begin
          nUserID         := StrToInt(LVUsers.Items[i].Caption);
          nFingerID       := StrToInt(LVUsers.Items[i].SubItems[0]);
          nSampleNumber   := StrToInt(LVUsers.Items[i].SubItems[1]);
          szInputData     := IntToStr(nUserID) + char(9) + IntToStr(nFingerID) + char(9) + IntToStr(nSampleNumber);
          Writeln(fh1, szInputData);
        end;

        CloseFile(fh1);
        ShowMessage('Save IndexSearchDB to file success !!');
      end else
        ShowMessage('Save db failed!');

    end else
      ShowMessage('Please, input file name...');
  end;}

  dmParametros.cdsParametros.Open;
//  szFileName :=  'SSFCaixa.ISDB';
  if DMParametros.cdsParametrosARQUIVO_DIGITAIS.IsNull then
    ShowMessage('Arquivo de impressões digitais não definido em Parâmetros!')
  else
    szFileName := DMParametros.cdsParametrosARQUIVO_DIGITAIS.AsString;
  //dmParametros.cdsParametros.Close;

  ret := SaveIndexSearchDBToFile(PChar(szFileName));

  if (ret = NBioAPIERROR_NONE) then
  begin
    for i := 0 to LVUsers.Items.Count-1 do
    begin
      DMPessoa.cdsPessoaDigital.Insert;
      DMPessoa.cdsPessoaDigitalID_PESSOA.AsInteger := DMPessoa.cdsPessoaID.AsInteger;
      DMPessoa.cdsPessoaDigitalDEDO.AsInteger      := StrToInt(LVUsers.Items[i].SubItems[0]);
      DMPessoa.cdsPessoaDigitalAMOSTRA.AsInteger   := StrToInt(LVUsers.Items[i].SubItems[1]);
      DMPessoa.cdsPessoaDigital.Post;
    end;
    DMPessoa.cdsPessoaDigital.ApplyUpdates(0);
  end
  else
    ShowMessage('Falha ao salvar digitais!');
end;

procedure TfFuncionario.FormShow(Sender: TObject);
var
  vTexto: String;
begin
  Label9.Visible  := DBEdit8.Visible;
  Label26.Visible := DBDateEdit3.Visible;
  Image1.Picture := Nil;
  if DMParametros.cdsParametrosUSARSTRETCH.AsString = 'S' then
    Image1.Stretch := True
  else
    Image1.Stretch := False;
  vTexto := DMParametros.cdsParametrosENDERECO_FOTOS.AsString+DMParametros.cdsParametrosSEPARADORDAFOTO.AsString+
            DMPessoa.cdsPessoaAPEL_EBS.AsString+'.'+DMParametros.cdsParametrosEXTENSAOFOTO.AsString;
  if FileExists(vTexto) Then
    Image1.Picture.LoadFromFile(vTexto);

  //Create NBioBSP object
  objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
  objDevice      := objNBioBSP.Device;
  objExtraction  := objNBioBSP.Extraction;
  objIndexSearch := objNBioBSP.IndexSearch;
//  Caption := Caption + ' - BSP Version : v' + objNBioBSP.MajorVersion + '.' + objNBioBSP.MinorVersion;
end;

end.
