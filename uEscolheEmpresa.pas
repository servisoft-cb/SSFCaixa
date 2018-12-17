unit uEscolheEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, RxLookup, IniFiles;

type
  TfEscolheEmpresa = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Grava_Ini;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEscolheEmpresa: TfEscolheEmpresa;

implementation

uses UDMEmpresa, UDMParametros;

{$R *.dfm}

procedure TfEscolheEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmEmpresa.sdsEmpresa.CommandText := dmEmpresa.ctEmpresa;

  if DmEmpresa.Owner.ClassName = Self.ClassName then
    FreeAndNil(DmEmpresa);

  Action := caFree;
end;

procedure TfEscolheEmpresa.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.KeyValue > 0 then
  begin
    DMParametros.vFilial   := RxDBLookupCombo1.KeyValue;
    DMParametros.vFantasia := RxDBLookupCombo1.Text;
    DMParametros.vImprime  := DMEmpresa.cdsEmpresaIMPRIME_CUPOM.AsString;

    if DMParametros.vBarPadrao = 0 then
    begin
    end;  
    Close;
  end
  else
  begin
    ShowMessage('Empresa / Unidade deve ser selecionada!');
    Exit;
  end;
end;

procedure TfEscolheEmpresa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := False;
  if RxDBLookupCombo1.KeyValue > 0 then
  begin
    dmParametros.vBarPadrao := RxDBLookupCombo1.KeyValue;
    Grava_Ini;
    CanClose := True;
  end;
end;

procedure TfEscolheEmpresa.FormShow(Sender: TObject);
begin
  if not Assigned(DMEmpresa) then
    dmEmpresa := TDMEmpresa.Create(Self);

  if not Assigned(DMParametros) then
    DMParametros := DMParametros.Create(Self);

  DMEmpresa.cdsEmpresa.Close;
  dmEmpresa.sdsEmpresa.CommandText := dmEmpresa.ctEmpresa +
                                      ' WHERE INATIVA = ''N''';
  DMEmpresa.cdsEmpresa.Open;
  DMParametros.cdsParametros.Open;

  if DMParametros.vBarPadrao > 0 then
    RxDBLookupCombo1.KeyValue := DMParametros.vBarPadrao;
end;

procedure TfEscolheEmpresa.Grava_Ini;
var
  vImpressora, vPorta: String;
  ini: TIniFile;
begin
  ini := TIniFile.Create('C:\$Servisoft\Impressora.ini');
  try
    ini.WriteString('IMPRESSORA','BarPadrao',RxDBLookupCombo1.Value);
  finally
    ini.Free;
  end;
end;

end.

