unit uConvVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, DB, DBClient, Grids, DBGrids,
  SMDBGrid, FMTBcd, Provider, SqlExpr;

type
  TfConvVendas = class(TForm)
    BitBtn1: TBitBtn;
    Label3: TLabel;
    FilenameEdit1: TFilenameEdit;
    cdsFuncionarios: TClientDataSet;
    cdsFuncionariosEmpresa: TStringField;
    cdsFuncionariosCracha: TIntegerField;
    cdsFuncionariosNome: TStringField;
    SMDBGrid1: TSMDBGrid;
    dsFuncionarios: TDataSource;
    sdsCupomFiscal: TSQLDataSet;
    dspCupomFiscal: TDataSetProvider;
    cdsCupomFiscal: TClientDataSet;
    dsCupomFiscal: TDataSource;
    sdsCupomFiscalDTEMISSAO: TDateField;
    sdsCupomFiscalFILIAL: TIntegerField;
    sdsCupomFiscalNOMEPESSOA: TStringField;
    cdsCupomFiscalDTEMISSAO: TDateField;
    cdsCupomFiscalFILIAL: TIntegerField;
    cdsCupomFiscalNOMEPESSOA: TStringField;
    sdsCupomFiscalID_CUPOM: TIntegerField;
    cdsCupomFiscalID_CUPOM: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConvVendas: TfConvVendas;

implementation

{$R *.dfm}

procedure TfConvVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfConvVendas.BitBtn1Click(Sender: TObject);
var
  F: TextFile;
  Texto : string;
begin
  cdsFuncionarios.EmptyDataSet;
  if FileExists(FilenameEdit1.Text) then
  begin
    AssignFile(F,FilenameEdit1.Text);
    Reset(F);
    while not EOF(F) do
    begin
      Readln(F,Texto);
      if copy(Texto,1,1) = '*' then
        Continue;
      cdsFuncionarios.Insert;
      cdsFuncionariosNome.AsString    := Trim(copy(Texto,15,80));
      cdsFuncionariosEmpresa.AsString := Trim(copy(Texto,1,4));
      cdsFuncionariosCracha.AsString  := Trim(copy(Texto,6,8 ));
      cdsFuncionarios.Post;
    end;
    CloseFile(F);
  end;

  cdsCupomFiscal.Open;
  cdsCupomFiscal.First;
  while not cdsCupomFiscal.Eof do
  begin
    if cdsFuncionarios.Locate('NOME',cdsCupomFiscalNOMEPESSOA.AsString,[loCaseInsensitive]) then
    begin
      cdsCupomFiscal.Edit;
      case cdsFuncionariosEmpresa.AsInteger of
        6666: cdsCupomFiscalFILIAL.AsInteger := 1;// – SOUTH SÃO LEOPOLDO
        6661: cdsCupomFiscalFILIAL.AsInteger := 3;// - SOUTH MALCON
        6662: cdsCupomFiscalFILIAL.AsInteger := 2;// – SOUTH CHAVES
          14: cdsCupomFiscalFILIAL.AsInteger := 3;// - ATB POA
          16: cdsCupomFiscalFILIAL.AsInteger := 1;// – ATB SÃO LEOPOLDO
      end;
      cdsCupomFiscal.Post;
      cdsCupomFiscal.ApplyUpdates(0);
    end;
    cdsCupomFiscal.Next;
  end;
  ShowMessage('Conversão concluída!');
end;

end.
