unit uEstoqueResumido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls, Mask,
  ToolEdit, Buttons, Grids, DBGrids, SMDBGrid, rsDBUtils, uDmEstoque;

type
  TfEstoqueResumido = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDmEstoque: TDmEstoque;
  public
    { Public declarations }
  end;

var
  fEstoqueResumido: TfEstoqueResumido;

implementation

uses uEstoqueResumidoR;

{$R *.dfm}

procedure TfEstoqueResumido.FormShow(Sender: TObject);
begin
  fDmEstoque := TDmEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmEstoque);
  fDmEstoque.cdsEmpresa.Open;
end;

procedure TfEstoqueResumido.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmEstoque);
end;

procedure TfEstoqueResumido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfEstoqueResumido.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fEstoqueResumidoR := TfEstoqueResumidoR.Create(Self);
  fEstoqueResumidoR.fDmEstoque := fDmEstoque;
  fEstoqueResumidoR.RLReport1.Preview;
  fEstoqueResumidoR.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfEstoqueResumido.BitBtn1Click(Sender: TObject);
begin
  fDmEstoque.cdsEstoqueAtual.Close;
  fDmEstoque.sdsEstoqueAtual.ParamByName('ID').AsInteger := RxDBLookupCombo2.KeyValue;
  fDmEstoque.cdsEstoqueAtual.Open;
  fDmEstoque.cdsEstoqueAtual.IndexFieldNames := 'NOME';
end;

end.
