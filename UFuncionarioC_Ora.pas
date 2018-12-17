unit UFuncionarioC_Ora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids,
  DBGrids, SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd, Provider, SqlExpr, ADODB, DateUtils, UCBase, ComCtrls,
  IndexSearchInter, NBioAPI_Type, IndexSearchType, BSPInter, uDmPessoa;

type
  TfFuncionarioC_Ora = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    ComboBox3: TComboBox;
    Edit2: TEdit;
    StatusBar1: TStatusBar;
    Edit3: TEdit;
    BitBtn3: TBitBtn;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    ct: String;
    procedure Abrir_sqlFuncionario(Tipo: String; ID: Integer); //P=Com Parametros   N=Sem Parametros
    procedure encerrarLeitor;
    procedure carregaLeitor;
  public
    m_hFIR: DWORD;
  end;

var
  fFuncionarioC_Ora: TfFuncionarioC_Ora;

implementation

uses DmdDatabase, UUtil, uDmUserControl, uDmParametros, uDmOracle, UFuncionario_Ora;

{$R *.dfm}

procedure TfFuncionarioC_Ora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dmOracle.Owner.ClassName = Self.ClassName then
    FreeAndNil(dmOracle);
  if DMParametros.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMParametros);
  encerrarLeitor;
  Action := Cafree;
end;

procedure TfFuncionarioC_Ora.BitBtn3Click(Sender: TObject);
begin
  Abrir_sqlFuncionario('P',0);
  case ComboBox3.ItemIndex of
    0: dmOracle.cdsFuncionarioOra.IndexFieldNames := 'PESSOA';
    1: dmOracle.cdsFuncionarioOra.IndexFieldNames := 'NOME';
    2: dmOracle.cdsFuncionarioOra.IndexFieldNames := 'EMPRESA;PESSOA';
    3: dmOracle.cdsFuncionarioOra.IndexFieldNames := 'EMPRESA;NOME';
  end;
end;

procedure TfFuncionarioC_Ora.Abrir_sqlFuncionario(Tipo: String; ID: Integer); //P=Com Parametros   N=Sem Parametros
begin
  dmOracle.sdsFuncionarioOra.CommandText := ct;

  dmOracle.cdsFuncionarioOra.Close;
  dmOracle.sdsFuncionarioOra.CommandText := dmOracle.sdsFuncionarioOra.CommandText + ' WHERE 1 = 1';
  if Edit1.Text <> '' then
    dmOracle.sdsFuncionarioOra.CommandText := dmOracle.sdsFuncionarioOra.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + Edit1.Text + '%');
  if (Edit3.Text <> '' ) then
    dmOracle.sdsFuncionarioOra.CommandText := dmOracle.sdsFuncionarioOra.CommandText + ' AND EMPRESA = ' + QuotedStr(Edit3.Text);
  if (Edit4.Text <> '' ) then
    dmOracle.sdsFuncionarioOra.CommandText := dmOracle.sdsFuncionarioOra.CommandText + ' AND UNIDADE = ' + QuotedStr(Edit4.Text);
  if (Edit2.Text <> '') then
    dmOracle.sdsFuncionarioOra.CommandText := dmOracle.sdsFuncionarioOra.CommandText + ' AND PESSOA = ' + QuotedStr(Edit2.Text);
  dmOracle.cdsFuncionarioOra.Open;
end;

procedure TfFuncionarioC_Ora.FormShow(Sender: TObject);
begin
  if not Assigned(dmOracle) then
    dmOracle := TdmOracle.Create(Self);

  if not Assigned(DMParametros) then
    DMParametros := TDMParametros.Create(Self);

  if not Assigned(DmPessoa) then
    DmPessoa := TDMPessoa.Create(Self);

  dmParametros.cdsParametros.Close;
  dmParametros.cdsParametros.Open;

  ct := dmOracle.sdsFuncionarioOra.CommandText;
  carregaLeitor;
end;

procedure TfFuncionarioC_Ora.SMDBGrid1DblClick(Sender: TObject);
begin
  if dmOracle.cdsFuncionarioOra.IsEmpty then
    Exit;

  fFuncionario_Ora := TfFuncionario_Ora.Create(Self);
  fFuncionario_Ora.Tag := 0;
  fFuncionario_Ora.ShowModal;
end;

procedure TfFuncionarioC_Ora.encerrarLeitor;
begin
  if m_hFIR <> 0 then
          FreeFIRHandle(m_hFIR);

  TerminateIndexSearchEngin;
  TerminateNBioAPI;

  //FreeLibrary - 'NBioBSP.dll'
  if (g_hwnd > 0) Then
    FreeLibrary(g_hwnd);
end;

procedure TfFuncionarioC_Ora.carregaLeitor;
begin
end;

procedure TfFuncionarioC_Ora.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(Edit2.Text) <> '') then
    Abrir_sqlFuncionario('P', 0);
end;

procedure TfFuncionarioC_Ora.BitBtn1Click(Sender: TObject);
begin
  dmOracle.ConexaoOra.Open;
  DmPessoa.cdsPessoaDigitalOra.Open;
  DmPessoa.cdsPessoaDigitalOra.IndexFieldNames := 'EMPRESA;PESSOA';

  dmOracle.cdsFuncionarioOra.Open;
  while not dmOracle.cdsFuncionarioOra.Eof do
  begin
    if DMPessoa.cdsPessoaDigitalOra.FindKey([dmOracle.cdsFuncionarioOraEMPRESA.AsString,
                                             dmOracle.cdsFuncionarioOraPESSOA.AsInteger]) then
    begin
      DmPessoa.cdsPessoaDigitalOra.Edit;
      DmPessoa.cdsPessoaDigitalOraUNIDADE.AsString := dmOracle.cdsFuncionarioOraUNIDADE.AsString;
      DmPessoa.cdsPessoaDigitalOra.Post;
    end;
    dmOracle.cdsFuncionarioOra.Next;
  end;
  DmPessoa.cdsPessoaDigitalOra.ApplyUpdates(0);
end;

procedure TfFuncionarioC_Ora.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 74) then //(ctrl + J)
  begin
    BitBtn1.Visible := True;
  end;
end;

procedure TfFuncionarioC_Ora.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DmPessoa);
end;

end.
