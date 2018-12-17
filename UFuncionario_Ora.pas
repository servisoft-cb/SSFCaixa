unit UFuncionario_Ora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  Mask, DBCtrls,  RxLookup, ToolEdit, RXDBCtrl, RxDBComb, RzDBEdit, RzTabs, FMTBcd, DB, SqlExpr, CurrEdit, ExtDlgs,
  rsDBUtils, VerificaCPF, ComCtrls, DateUtils, IndexSearchInter, NBioAPI_Type, IndexSearchType, BSPInter, UCBase, ComObj;

const
  DEFAULT_TIME_OUT = 10000;    //10000ms

type
  TfFuncionario_Ora = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    RzPageControl1: TRzPageControl;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    OpenPictureDialog2: TOpenPictureDialog;
    Label52: TLabel;
    BitBtn3: TBitBtn;
    DBEdit24: TDBEdit;
    TabSheet7: TRzTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    UCControls1: TUCControls;
    BitBtn4: TBitBtn;
    Image1: TImage;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BitBtn5: TBitBtn;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    procedure Gravar_Funcionario;
    procedure Gravar_EmpresaEBS;
    procedure gravarDigitais;
    procedure inserePessoaDigital;
  public
    { Public declarations }
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
  fFuncionario_Ora: TfFuncionario_Ora;
  objNBioBSP: variant;
  objDevice: variant;
  objExtraction: variant;
  objIndexSearch: variant;

implementation

uses DmdDatabase, UDMParametros, uDmOracle, UDMPessoa;

{$R *.dfm}

procedure TfFuncionario_Ora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMPessoa.cdsPessoaDigitalOra.Close;

  Tag    := 0;
  Action := Cafree;
end;

procedure TfFuncionario_Ora.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfFuncionario_Ora.BitBtn1Click(Sender: TObject);
begin
//  gravarDigitais;
  Close;
end;

procedure TfFuncionario_Ora.Gravar_Funcionario;
begin
end;

procedure TfFuncionario_Ora.Gravar_EmpresaEBS;
begin
end;

procedure TfFuncionario_Ora.BitBtn4Click(Sender: TObject);
var
  szFir: wideString;
  nUserID: DWORD;
begin
  if (not DMPessoa.cdsPessoaDigitalOraDIGITAL.IsNull) and
     (MessageDlg('Deseja realamente alterar o cadadtro de impressões digitais?',mtConfirmation,[mbOk, mbNo], 0) = mrNo) then
    Exit;


  if DMPessoa.cdsPessoaDigitalOra.IsEmpty then
  begin
    DMPessoa.cdsPessoaDigitalOra.Insert;
//    DMPessoa.cdsPessoaDigitalOraID.AsInteger     := dmDatabase.ProximaSequencia('PESSOA_DIGITAL_ORA',0);
    DMPessoa.cdsPessoaDigitalOraEMPRESA.AsString := dmOracle.cdsFuncionarioOraEMPRESA.AsString;
    DMPessoa.cdsPessoaDigitalOraUNIDADE.AsString := dmOracle.cdsFuncionarioOraUNIDADE.AsString;
    DMPessoa.cdsPessoaDigitalOraPESSOA.AsString  := dmOracle.cdsFuncionarioOraPESSOA.AsString;
    DMPessoa.cdsPessoaDigitalOraNOME.AsString    := dmOracle.cdsFuncionarioOraNOME.AsString;
  end
  else
    DMPessoa.cdsPessoaDigitalOra.Edit;

  nUserID := DMPessoa.cdsPessoaDigitalOraID.AsInteger;

  // Get FIR data
  objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT) ;

  if objDevice.ErrorCode <> 0 Then
  begin
    ShowMessage('Falha ao abrir o sensor biométrico!');
    Exit;
  end;

  // Registra um novo TEMPLATE
  objExtraction.Enroll(nUserID, 0);
  DMPessoa.cdsPessoaDigitalOraDIGITAL.AsString := objExtraction.TextEncodeFIR;

  if objExtraction.ErrorCode <> NBioAPIERROR_NONE Then
  begin
    ShowMessage('Registro falhou!');
    Exit;
  end;

  objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);

  szFir := objExtraction.TextEncodeFIR;

  //Adciona na memória
  objIndexSearch.AddFIR(szFir, nUserID);

  DMPessoa.cdsPessoaDigitalOra.Post;
  DMPessoa.cdsPessoaDigitalOra.ApplyUpdates(0);

  if (objIndexSearch.ErrorCode = NBioAPIERROR_NONE) then
    ShowMessage('Impressão digital capturada com sucesso!');
end;

procedure TfFuncionario_Ora.gravarDigitais;
begin
end;

procedure TfFuncionario_Ora.FormShow(Sender: TObject);
var
  vTexto: String;
begin
  DMPessoa.cdsPessoaDigitalOra.Close;
  DMPessoa.sdsPessoaDigitalOra.CommandText := 'SELECT PDO.* FROM PESSOA_DIGITAL_ORA PDO ' +
                                              'WHERE UNIDADE = ' + QuotedStr(dmOracle.cdsFuncionarioOraUNIDADE.AsString) +
                                              ' AND PESSOA = ' + dmOracle.cdsFuncionarioOraPESSOA.AsString;
  DMPessoa.cdsPessoaDigitalOra.Open;
  //////

  Label9.Visible := DBEdit8.Visible;
  Image1.Picture := Nil;
  if DMParametros.cdsParametrosUSARSTRETCH.AsString = 'S' then
    Image1.Stretch := True
  else
    Image1.Stretch := False;
  vTexto := DMParametros.cdsParametrosENDERECO_FOTOS.AsString+DMParametros.cdsParametrosSEPARADORDAFOTO.AsString+
            dmOracle.cdsFuncionarioOraFOTO.AsString+'.'+DMParametros.cdsParametrosEXTENSAOFOTO.AsString;
  if FileExists(vTexto) Then
    Image1.Picture.LoadFromFile(vTexto);

  //Create NBioBSP object
  objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
  objDevice      := objNBioBSP.Device;
  objExtraction  := objNBioBSP.Extraction;
  objIndexSearch := objNBioBSP.IndexSearch;
  // Pop Up em Português.
  objNBioBSP.SetSkinResource('.\NBSP2Por.dll');
end;

procedure TfFuncionario_Ora.inserePessoaDigital;
begin
end;

procedure TfFuncionario_Ora.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir as digitais regitradas neste cadastro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  DMPessoa.cdsPessoaDigitalOra.Edit;
  DMPessoa.cdsPessoaDigitalOraDIGITAL.Clear;
  DMPessoa.cdsPessoaDigitalOra.Post;
  DMPessoa.cdsPessoaDigitalOra.ApplyUpdates(0);
end;

procedure TfFuncionario_Ora.BitBtn6Click(Sender: TObject);
begin
  if DBEDit4.Text <> Edit1.Text then
  begin
    ShowMessage('Senha digitada não confere!');
    Exit;
  end
  else
  begin
    DMPessoa.cdsPessoaDigitalOra.Edit;
    DMPessoa.cdsPessoaDigitalOraEMPRESA.AsString := dmOracle.cdsFuncionarioOraEMPRESA.AsString;
    DMPessoa.cdsPessoaDigitalOraUNIDADE.AsString := dmOracle.cdsFuncionarioOraUNIDADE.AsString;
    DMPessoa.cdsPessoaDigitalOraPESSOA.AsString  := dmOracle.cdsFuncionarioOraPESSOA.AsString;
    DMPessoa.cdsPessoaDigitalOraNOME.AsString    := dmOracle.cdsFuncionarioOraNOME.AsString;
    DMPessoa.cdsPessoaDigitalOraSENHA.AsString   := DBEdit4.Text;
    DMPessoa.cdsPessoaDigitalOra.Post;
    DMPessoa.cdsPessoaDigitalOra.ApplyUpdates(0);
  end;
end;

end.
