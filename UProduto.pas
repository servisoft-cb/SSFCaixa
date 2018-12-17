unit UProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  DBCtrls, DB, Grids, DBGrids, SMDBGrid, UDMProduto, Mask, NxCollection, rsDBUtils, ToolEdit, CurrEdit, RxLookup;

type
  TfProduto = class(TForm)
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label8: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmProduto: TDmProduto;
  end;

var
  fProduto: TfProduto;

implementation

{$R *.dfm}

procedure TfProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fDmProduto.cdsEmpresa.Close;
  Action := Cafree;
end;

procedure TfProduto.NxButton2Click(Sender: TObject);
begin
  fDmProduto.cdsProduto.Cancel;
  Close;
end;

procedure TfProduto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmProduto);
  fDmProduto.cdsEmpresa.Open;
end;

procedure TfProduto.NxButton1Click(Sender: TObject);
begin
  fDmProduto.cdsProduto.Post;
  fDmProduto.cdsProduto.ApplyUpdates(0);
  Close;
end;

procedure TfProduto.NxButton3Click(Sender: TObject);
begin
  fDmProduto.cdsProdutoPreco.Insert;
  fDmProduto.cdsProdutoPrecoPRODUTO_ID.AsInteger := fDmProduto.cdsProdutoID.AsInteger;
  fDmProduto.cdsProdutoPrecoEMPRESA_ID.AsInteger := RxDBLookupCombo1.KeyValue;
  fDmProduto.cdsProdutoPrecoPRECO_COMPRA.AsCurrency := CurrencyEdit1.Value;
  fDmProduto.cdsProdutoPrecoPRECO_VENDA.AsCurrency  := CurrencyEdit2.Value;
  fDmProduto.cdsProdutoPreco.Post;
end;

procedure TfProduto.NxButton4Click(Sender: TObject);
begin
  fDmProduto.cdsProdutoPreco.Delete;
end;

end.

