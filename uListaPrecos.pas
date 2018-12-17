unit uListaPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid,
  StdCtrls, Buttons, RxLookup, ExtCtrls, UDMProduto;

type
  TfListaPrecos = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    fDmProduto: TdmProduto;
  public
    { Public declarations }
  end;

var
  fListaPrecos: TfListaPrecos;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfListaPrecos.BitBtn1Click(Sender: TObject);
begin
  fDmProduto.cdsListaPreco.Close;
  fDmProduto.sdsListaPreco.ParamByName('E').AsInteger := RxDBLookupCombo2.KeyValue;
  fDmProduto.cdsListaPreco.Open;
end;

procedure TfListaPrecos.FormShow(Sender: TObject);
begin
  fDmProduto := TDMProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmProduto);
  fDmProduto.cdsEmpresa.Open;
end;

procedure TfListaPrecos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfListaPrecos.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmProduto);
end;

procedure TfListaPrecos.BitBtn3Click(Sender: TObject);
begin
  fDmProduto.frxReport1.ShowReport;
end;

end.
