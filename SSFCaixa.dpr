program SSFCaixa;

uses
  Windows,
  Forms,
  DB,
  Dialogs,
  sysutils,
  UMenuP in 'UMenuP.pas' {fMenuP},
  USobre in 'USobre.pas' {fSobre},
  rsDataSetError in '..\rslib\rsDataSetError.pas',
  LogProvider in '..\Logs\Src\LogProvider.pas',
  LogTypes in '..\Logs\Src\LogTypes.pas',
  arTypes in '..\rslib\arTypes.pas',
  UUtil in 'UUtil.pas',
  DmdDatabase in 'DmdDatabase.pas' {dmDatabase: TDataModule},
  UDMParametros in 'UDMParametros.pas' {DMParametros: TDataModule},
  UDMEmpresa in 'UDMEmpresa.pas' {DMEmpresa: TDataModule},
  UEmpresa in 'UEmpresa.pas' {fEmpresa},
  UParametros in 'UParametros.pas' {fParametros},
  UDMPessoa in 'UDMPessoa.pas' {DMPessoa: TDataModule},
  UDMCupom in 'UDMCupom.pas' {DMCupom: TDataModule},
  UDMProduto in 'UDMProduto.pas' {DMProduto: TDataModule},
  DmdDatabase_EBS in 'DmdDatabase_EBS.pas' {dmDatabase_EBS: TDataModule},
  UCupomFiscalC in 'UCupomFiscalC.pas' {fCupomFiscalC},
  UCupomFiscal in 'UCupomFiscal.pas' {fCupomFiscal},
  UCupomFiscalCli in 'UCupomFiscalCli.pas' {fCupomFiscalCli},
  UCupomFiscalCanc in 'UCupomFiscalCanc.pas' {fCupomFiscalCanc},
  UCupomFiscalPgto in 'UCupomFiscalPgto.pas' {fCupomFiscalPgto},
  UDaruma_iMFLerSerial_ECF in 'UDaruma_iMFLerSerial_ECF.pas' {fDaruma_iMFLerSerial_ECF},
  UDaruma_iMFLer_ECF in 'UDaruma_iMFLer_ECF.pas' {fDaruma_iMFLer_ECF},
  UCupomFiscalOpcoes in 'UCupomFiscalOpcoes.pas' {fCupomFiscalOpcoes},
  uUtilCupomFiscal in 'uUtilCupomFiscal.pas',
  UDMSitTrib_CF in 'UDMSitTrib_CF.pas' {DMSitTrib_CF: TDataModule},
  UProduto in 'UProduto.pas' {fProduto},
  UDMEBS in 'UDMEBS.pas' {DMEBS: TDataModule},
  UConsVendas in 'UConsVendas.pas' {fConsVendas},
  uImpFiscal_Daruma in 'uImpFiscal_Daruma.pas',
  BSPInter in 'BSPInter.pas',
  IndexSearchType in 'IndexSearchType.pas',
  IndexSearchInter in 'IndexSearchInter.pas',
  NBioAPI_Type in 'NBioAPI_Type.pas',
  uDmUserControl in 'uDmUserControl.pas' {dmUserControl: TDataModule},
  UFuncionarioC_Ora in 'UFuncionarioC_Ora.pas' {fFuncionarioC_Ora},
  uDmOracle in 'uDmOracle.pas' {dmOracle: TDataModule},
  UFuncionario_Ora in 'UFuncionario_Ora.pas' {fFuncionario_Ora},
  uEscolheEmpresa in 'uEscolheEmpresa.pas' {fEscolheEmpresa},
  UEmpresaC in 'UEmpresaC.pas' {fEmpresaC},
  UConsVendasR in 'UConsVendasR.pas' {fConsVendasR},
  uConvVendas in 'uConvVendas.pas' {fConvVendas},
  rsExcelExporta in '..\rslib\rsExcelExporta.pas',
  rsDBUtils in '..\rslib\nova\rsDBUtils.pas',
  uCupomFiscalR in 'uCupomFiscalR.pas' {fCupomFiscalR},
  uProdutoC in 'uProdutoC.pas' {fProdutoC},
  uDmEstoque in 'uDmEstoque.pas' {DmEstoque: TDataModule},
  uEstoqueDoc in 'uEstoqueDoc.pas' {fEstoqueDoc},
  uEstoqueDocC in 'uEstoqueDocC.pas' {fEstoqueDocC},
  uEstoqueDocIt in 'uEstoqueDocIt.pas' {fEstoqueDocIt},
  uEstoqueResumido in 'uEstoqueResumido.pas' {fEstoqueResumido},
  uEstoqueResumidoR in 'uEstoqueResumidoR.pas' {fEstoqueResumidoR};

{$R *.RES}
var
  Instancia: THandle;

function PossuiInstanciasAbertas: Boolean;
begin
  // Cria uma instância de um handle com o nome PrimeiraInstancia.
  Instancia := CreateMutex(nil, False, 'PrimeiraInstancia');
  // Verifica se o handle PrimeiraInstancia já está rodando caso esteja retorna TRUE.
  Result := WaitForSingleObject(Instancia, 0) = WAIT_TIMEOUT;
  // Se o Result for igual a TRUE verifica se existe uma segunda instância rodado.
  if Result then
  begin
    // Cria uma instância de um handle com o nome SegundaInstancia.
    Instancia := CreateMutex(nil, False, 'SegundaInstancia');
    // Verifica se o handle SegundaInstancia já está rodando caso esteja retorna TRUE.
    Result := WaitForSingleObject(Instancia, 0) = WAIT_TIMEOUT;
  end;
end;

begin
  try
    // Verifica se tem duas instâncias rodando, caso tenha termina a execução
    // do sistema, caso nenhum ou apenas uma estiver rodando continua a execução.
    if PossuiInstanciasAbertas then
      Exit;

    Application.Initialize;
    Application.Title := 'SSFCaixa';
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TdmDatabase_EBS, dmDatabase_EBS);
  Application.CreateForm(TfMenuP, fMenuP);
  Application.CreateForm(TdmUserControl, dmUserControl);
  Application.Run;
  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao executar: ' + #13 + e.Message);
  end;

  Application.UpdateFormatSettings := True;
  DateSeparator    := '/';
  ShortDateFormat  := 'dd/mm/YYYY';
  DecimalSeparator := ',';
  Application.UpdateFormatSettings := False;
end.

