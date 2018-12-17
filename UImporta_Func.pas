unit UImporta_Func;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, CurrEdit, RXCtrls, Buttons, ExtCtrls, Db,
  DBClient, Grids, DBGrids, SMDBGrid;

type
  TfImporta_Func = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FilenameEdit1: TFilenameEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label1: TLabel;
    mAuxiliar: TClientDataSet;
    mAuxiliarApel: TStringField;
    mAuxiliarUnidade: TStringField;
    mAuxiliarNome: TStringField;
    mAuxiliarCargoDepartamento: TStringField;
    mAuxiliarVlrLimiteCredito: TStringField;
    mAuxiliarRG: TStringField;
    mAuxiliarCPF: TStringField;
    mAuxiliarDtAdmissao: TDateField;
    mAuxiliarCentroCustos: TStringField;
    mAuxiliarCidade: TStringField;
    mAuxiliarBairro: TStringField;
    mAuxiliarEndereco: TStringField;
    mAuxiliarEndNum: TStringField;
    mAuxiliarCep: TStringField;
    dsmAuxiliar: TDataSource;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vVlrTotal : Real;
    vDtLote : TDateTime;
    vContador : Integer;
    vRegistro : String;
    vArqImportacao : TextFile;

    procedure Gravar_cdsPessoa;
    procedure Gravar_Empresa_EBS;

    function fnc_Montar_Campo : String;
    function fnc_Montar_Valor(Campo : String) : String;

  public
    { Public declarations }
    procedure Gravar_mAuxiliar;

  end;

var
  fImporta_Func: TfImporta_Func;

implementation

uses StrUtils, DateUtils, UDMPessoa, DmdDatabase;

{$R *.DFM}

procedure TfImporta_Func.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfImporta_Func.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfImporta_Func.BitBtn1Click(Sender: TObject);
var
  vCliLid, vCliGra : Integer;
  vNotaLid, vNotaGra : Integer;
  vSeparador : String;
  vContTeste : Integer;
begin
  if Trim(FileNameEdit1.Text) = '' then
  begin
    ShowMessage('Arquivo para importação não foi informado!');
    exit;
  end;

  try
    mAuxiliar.EmptyDataSet;
    vRegistro  := '';

    AssignFile(vArqImportacao,FileNameEdit1.FileName);
    Reset(vArqImportacao);

    //Arquivo Texto
    while not Eof(vArqImportacao) do
    begin
      ReadLn(vArqImportacao,vRegistro);
      Gravar_mAuxiliar;
    end;

    vContador := 0;
    mAuxiliar.First;
    while not mAuxiliar.Eof do
    begin
      try
        Gravar_cdsPessoa;
        Gravar_Empresa_EBS;
        vContador := vContador + 1;
      except
      end;
      mAuxiliar.Next;
    end;

    CloseFile(vArqImportacao);

    ShowMessage('Arquivo gerado!');
  except
    begin
      ShowMessage('Erro ' + IntToStr(vContTeste));

      CloseFile(vArqImportacao);
    end;
  end;

end;

function TfImporta_Func.fnc_Montar_Campo : String;
var
  i : Integer;
begin
  Result := '';
  i      := pos(';',vRegistro);
  Result := Copy(vRegistro,1,i-1);
  Delete(vRegistro,1,i);
end;

procedure TfImporta_Func.Gravar_mAuxiliar;
begin
  if (copy(vRegistro,1,7) = 'UNIDADE')
    or (copy(vRegistro,1,7) = 'Unidade')
    or (copy(vRegistro,1,7) = 'unidade') then
    exit;

  try
    mAuxiliar.Insert;
    mAuxiliarUnidade.AsString            := fnc_Montar_Campo;
    mAuxiliarApel.AsString               := fnc_Montar_Campo;
    mAuxiliarNome.AsString               := fnc_Montar_Campo;
    mAuxiliarCargoDepartamento.AsString  := fnc_Montar_Campo;
    mAuxiliarVlrLimiteCredito.AsString   := fnc_Montar_Campo;
    mAuxiliarRG.AsString                 := fnc_Montar_Campo;
    mAuxiliarCPF.AsString                := fnc_Montar_Campo;
    mAuxiliarDtAdmissao.AsString         := fnc_Montar_Campo;
    mAuxiliarCentroCustos.AsString       := fnc_Montar_Campo;
    mAuxiliarCidade.AsString             := fnc_Montar_Campo;
    mAuxiliarBairro.AsString             := fnc_Montar_Campo;
    mAuxiliarEndereco.AsString           := fnc_Montar_Campo;
    mAuxiliarEndNum.AsString             := fnc_Montar_Campo;
    mAuxiliarCep.AsString                := fnc_Montar_Campo;
    mAuxiliar.Post;
  except
    on e: Exception do
      ShowMessage('erro ao gravar o mAuxiliar, Registro : ' + mAuxiliarApel.AsString + #13 + e.Message);
  end;
end;

procedure TfImporta_Func.FormShow(Sender: TObject);
begin
  DMPessoa.adsEmpresas.Close;
  DMPessoa.adsEmpresas.CommandText := ' select * from empresas ';
  DMPessoa.adsEmpresas.Open;

end;

procedure TfImporta_Func.Gravar_cdsPessoa;
var
  vNumAux : Integer;
begin
  DMPessoa.cdsPessoa.Close;
  DMPessoa.sdsPessoa.CommandText := ctPessoa
                                  + ' WHERE APEL_EBS = ' + QuotedStr(mAuxiliarApel.AsString);
  DMPessoa.cdsPessoa.Open;

  if not DMPessoa.cdsPessoa.IsEmpty then
    DMPessoa.cdsPessoa.Edit
  else
  begin
    vNumAux := dmDatabase.ProximaSequencia('PESSOA',0);
    DMPessoa.cdsPessoa.Insert;
    DMPessoa.cdsPessoaID.AsInteger := vNumAux;
    DMPessoa.cdsPessoaAPEL_EBS.AsString := mAuxiliarApel.AsString;
    DMPessoa.cdsPessoaTIPO.AsString     := 'F';
    DMPessoa.cdsPessoaSITUACAO.AsString := 'A';
    DMPessoa.cdsPessoaDTCADASTRO.AsDateTime := Date;
    DMPessoa.cdsPessoaHRCADASTRO.AsDateTime := Now;
  end;
  DMPessoa.cdsPessoaNOME.AsString         := mAuxiliarNome.AsString;
  DMPessoa.cdsPessoaENDERECO.AsString     := mAuxiliarEndereco.AsString;
  DMPessoa.cdsPessoaENDNUM.AsString       := mAuxiliarEndNum.AsString;
  DMPessoa.cdsPessoaBAIRRO.AsString       := mAuxiliarBairro.AsString;
  DMPessoa.cdsPessoaCIDADE.AsString       := mAuxiliarCidade.AsString;
  DMPessoa.cdsPessoaUF.AsString           := 'RS';
  DMPessoa.cdsPessoaDTADMISSAO.AsDateTime := mAuxiliarDtAdmissao.AsDateTime;
  DMPessoa.cdsPessoaCEP.AsString          := mAuxiliarCep.AsString;

  DMPessoa.cdsPessoaVLRLIMITECREDITO.AsString := fnc_Montar_Valor(mAuxiliarVlrLimiteCredito.AsString);
  DMPessoa.cdsPessoa.Post;
  DMPessoa.cdsPessoa.ApplyUpdates(0);
end;

procedure TfImporta_Func.Gravar_Empresa_EBS;
begin
  DMPessoa.adsEmpresas.Close;
  DMPessoa.adsEmpresas.CommandText := 'SELECT * FROM Empresas '
                                    + ' WHERE Apel = ' + QuotedStr(mAuxiliarApel.AsString);
  DMPessoa.adsEmpresas.Open;
  if not DMPessoa.adsEmpresas.IsEmpty then
    DMPessoa.adsEmpresas.Edit
  else
  begin
    DMPessoa.adsEmpresas.Insert;
    DMPessoa.adsEmpresasApel.AsString       := mAuxiliarApel.AsString;
    DMPessoa.adsEmpresasRazo.AsString       := mAuxiliarNome.AsString;
    DMPessoa.adsEmpresasCadastro.AsDateTime := Date;
    DMPessoa.adsEmpresasTipo.AsString       := 'Ambos';
    DMPessoa.adsEmpresasPessoa.AsString     := 'Física';
  end;
  DMPessoa.adsEmpresasEndereo.AsString    := mAuxiliarEndereco.AsString;
  if Trim(DMPessoa.cdsPessoaENDNUM.AsString) <> '' then
    DMPessoa.adsEmpresasEndereo.AsString    := mAuxiliarEndereco.AsString + ', ' + mAuxiliarEndNum.AsString;
  DMPessoa.adsEmpresasBairro.AsString     := mAuxiliarBairro.AsString;
  DMPessoa.adsEmpresasCEP.AsString        := mAuxiliarCep.AsString;
  DMPessoa.adsEmpresasCidade.AsString     := mAuxiliarCidade.AsString;
  DMPessoa.adsEmpresasEstado.AsString     := 'RS';
  DMPessoa.adsEmpresasPas.AsString        := 'BR';
  DMPessoa.adsEmpresasFone1.AsString      := '';
  DMPessoa.adsEmpresasFone2.AsString      := '';
  DMPessoa.adsEmpresasRamal1.AsString     := '';
  DMPessoa.adsEmpresasRamo.AsString       := '1';
  DMPessoa.adsEmpresasCrdito.AsString     := fnc_Montar_Valor(mAuxiliarVlrLimiteCredito.AsString);
  DMPessoa.adsEmpresas.Post;
  DMPessoa.adsEmpresas.UpdateBatch();
end;

function TfImporta_Func.fnc_Montar_Valor(Campo: String): String;
var
  vTexto : String;
  i : Integer;
begin
  Result := '';
  vTexto := '';
  for i := 1 to Length(Campo) do
  begin
    if (copy(Campo,i,1) = '0')
      or (copy(Campo,i,1) = '1')
      or (copy(Campo,i,1) = '2')
      or (copy(Campo,i,1) = '3')
      or (copy(Campo,i,1) = '4')
      or (copy(Campo,i,1) = '5')
      or (copy(Campo,i,1) = '6')
      or (copy(Campo,i,1) = '7')
      or (copy(Campo,i,1) = '8')
      or (copy(Campo,i,1) = '9')
      or (copy(Campo,i,1) = ',') then
      vTexto := vTexto + copy(Campo,i,1);
  end;
  Result := vTexto;
end;

end.
