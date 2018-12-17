unit uEstoqueDocIt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  DBCtrls, DB, Grids, DBGrids, SMDBGrid, UDMEstoque, Mask, NxCollection, rsDBUtils, RxLookup;

type
  TfEstoqueDocIt = class(TForm)
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Edit1: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmEstoque: TDmEstoque;
  end;

var
  fEstoqueDocIt: TfEstoqueDocIt;

implementation

{$R *.dfm}

procedure TfEstoqueDocIt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfEstoqueDocIt.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmEstoque);
end;

procedure TfEstoqueDocIt.NxButton1Click(Sender: TObject);
begin
//  if fDmEstoque.cdsEstoqueDocES.AsString = 'S' then
//    fDmEstoque.cdsEstoqueDocItQTD2.AsFloat := fDmEstoque.cdsEstoqueDocItQTD.AsFloat * -1
//  else
//    fDmEstoque.cdsEstoqueDocItQTD2.AsFloat := fDmEstoque.cdsEstoqueDocItQTD.AsFloat;
  fDmEstoque.cdsEstoqueDocIt.Post;
  Close;
end;

procedure TfEstoqueDocIt.NxButton2Click(Sender: TObject);
begin
  fDmEstoque.cdsEstoqueDoc.Cancel;
  Close;
end;

end.
