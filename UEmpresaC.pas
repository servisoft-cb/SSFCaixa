unit UEmpresaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Dialogs, StdCtrls, Buttons, Grids, DBGrids,
  SMDBGrid, ExtCtrls, UDMEmpresa, DB;

type
  TfEmpresaC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDmEmpresa: TDmEmpresa;
  public
    { Public declarations }
  end;

var
  fEmpresaC: TfEmpresaC;

implementation

uses UEmpresa;

{$R *.dfm}

procedure TfEmpresaC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEmpresaC.SMDBGrid1DblClick(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Self);
  fEmpresa.fdmEmpresa := fDmEmpresa;
  fDMEmpresa.cdsEmpresa.Edit;
  fEmpresa.ShowModal;
end;

procedure TfEmpresaC.BitBtn1Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Self);
  fDMEmpresa.cdsEmpresa.Insert;
  fEmpresa.ShowModal;
end;

procedure TfEmpresaC.BitBtn2Click(Sender: TObject);
begin
  fDmEmpresa := TdmEmpresa.Create(Self);
end;

procedure TfEmpresaC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmEmpresa);
end;

procedure TfEmpresaC.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmEmpresa.cdsEmpresaINATIVA.AsString = 'S' then
    AFont.Color := clRed;
end;

end.
