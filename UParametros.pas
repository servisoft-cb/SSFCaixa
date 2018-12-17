unit UParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  DBCtrls, RxLookup, ToolEdit, RXDBCtrl, RxDBComb, FMTBcd, DB, SqlExpr, Mask, IniFiles, UCBase;

type
  TfParametros = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label7: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    UCControls1: TUCControls;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label13: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Parametros;
    procedure Grava_Ini;
    procedure Le_Ini;

  public
    { Public declarations }
  end;

var
  fParametros: TfParametros;

implementation

uses DmdDatabase, UDMParametros, uDmUserControl;

{$R *.dfm}

procedure TfParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMParametros.cdsParametros.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Alterações não foram gravadas!');
    DMParametros.cdsParametros.CancelUpdates;
  end;

  if DMParametros.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMParametros);

  Tag    := 0;

  Action := Cafree;
end;

procedure TfParametros.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMParametros.cdsParametros.CancelUpdates;
  Close;
end;

procedure TfParametros.BitBtn1Click(Sender: TObject);
begin
  if DMParametros.cdsParametros.State in [dsBrowse] then
    DMParametros.cdsParametros.Edit;

  Grava_Parametros;

  Grava_Ini;

  Close;
end;

procedure TfParametros.Grava_Parametros;
begin
  try
    DMParametros.cdsParametros.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

procedure TfParametros.FormShow(Sender: TObject);
begin
  if not Assigned(DMParametros) then
    DMParametros := TDMParametros.Create(Self);

  DMParametros.cdsParametros.Close;
  DMParametros.sdsParametros.CommandText := ctParametros + ' WHERE ID = 1 ';
  DMParametros.cdsParametros.Open;

  if not DMParametros.cdsParametros.IsEmpty then
    DMParametros.cdsParametros.Edit
  else
  begin
    DMParametros.cdsParametros.Insert;
    DMParametros.cdsParametrosID.AsInteger := 1;
  end;

  Le_Ini;

  RxDBLookupCombo1.KeyValue := DMParametros.vBarPadrao;
end;

procedure TfParametros.Grava_Ini;
var
  vImpressora, vPorta: String;
  ini: TIniFile;
begin
  if not DirectoryExists('C:\$Servisoft\') then
    CreateDirectory('C:\$Servisoft\',nil);
  ini := TIniFile.Create('C:\$Servisoft\Impressora.ini');
  try
    ini.WriteString('IMPRESSORA','Impressora',IntToStr(ComboBox1.ItemIndex));
    ini.WriteString('IMPRESSORA','Porta',IntToStr(ComboBox2.ItemIndex));
    ini.WriteString('IMPRESSORA','BarPadrao',RxDBLookupCombo1.Value);
  finally
    ini.Free;
  end;
end;

procedure TfParametros.Le_Ini;
var
  vImpressora, vPorta: String;
  ini: TIniFile;
begin
  ini := TIniFile.Create('C:\$Servisoft\Impressora.ini');
  try
    vImpressora := '';
    vPorta      := '';
    vImpressora := ini.ReadString('IMPRESSORA','Impressora','');
    vPorta      := ini.ReadString('IMPRESSORA','Porta','');
    DmParametros.vBarPadrao := StrToInt(ini.ReadString('IMPRESSORA','BarPadrao',''));
  finally
    ini.Free;
  end;

  ComboBox1.ItemIndex := StrToInt(vImpressora);
  ComboBox2.ItemIndex := StrToInt(vPorta);
end;

end.
