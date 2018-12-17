unit UEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Mask,
  ExtDlgs, VerificaCGC, VerificaCPF, RxDBComb, DBCtrls, db, uDmEmpresa;

type
  TfEmpresa = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    VerificaCPF1: TVerificaCPF;
    VerificaCGC1: TVerificaCGC;
    RxDBComboBox1: TRxDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Empresa;
  public
    { Public declarations }
    fdmEmpresa: TDmEmpresa;
  end;

var
  fEmpresa: TfEmpresa;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMEmpresa.cdsEmpresa.State in [dsEdit,dsInsert] then
    fDMEmpresa.cdsEmpresa.CancelUpdates;

  Tag    := 0;

  Action := Cafree;
end;

procedure TfEmpresa.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMEmpresa.cdsEmpresa.CancelUpdates;
  Close;
end;

procedure TfEmpresa.BitBtn1Click(Sender: TObject);
begin
  if trim(fDMEmpresa.cdsEmpresaNOME.AsString) = '' then
  begin
    ShowMessage('Nome do empresa não foi informado!');
    exit;
  end;

  if fDMEmpresa.cdsEmpresa.State in [dsBrowse] then
    fDMEmpresa.cdsEmpresa.Edit;

  Grava_Empresa;

  Close;
end;

procedure TfEmpresa.Grava_Empresa;
var
  vVlrAux: Real;
begin
  try
    fDMEmpresa.cdsEmpresa.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

procedure TfEmpresa.DBEdit5Enter(Sender: TObject);
begin
  if RxDBComboBox1.ItemIndex = 0 then
    fDMEmpresa.cdsEmpresaCPF_CNPJ.EditMask := '999.999.999-99'
  else
  if RxDBComboBox1.ItemIndex = 1 then
    fDMEmpresa.cdsEmpresaCPF_CNPJ.EditMask:='99.999.999/9999-99';
end;

procedure TfEmpresa.DBEdit5Exit(Sender: TObject);
begin
  if (RxDBComboBox1.ItemIndex = 0) and (DBEdit5.Text <> '   .   .   -  ') then
  begin
    VerificaCPF1.Entrada := DBEdit5.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit5.SetFocus;
    end;
  end
  else
  if (RxDBComboBox1.ItemIndex = 1) and (DBEdit5.Text <> '  .   .   /    -  ') then
  begin
    VerificaCGC1.Entrada := DBEdit5.Text;
    if not VerificaCGC1.Resultado then
    begin
      ShowMessage('Número de CNPJ inválido!');
      DBEdit5.SetFocus;
    end;
  end;
end;

end.
