unit uEstoqueDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  DBCtrls, DB, Grids, DBGrids, SMDBGrid, UDMEstoque, Mask, NxCollection, rsDBUtils, RxLookup, RxDBComb, ToolEdit,
  RXDBCtrl;

type
  TfEstoqueDoc = class(TForm)
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    Panel3: TPanel;
    SMDBGrid1: TSMDBGrid;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
  private
    { Private declarations }
    vMsg: String;
    function fnc_Gravar: String;
  public
    { Public declarations }
    fDmEstoque: TDmEstoque;
  end;

var
  fEstoqueDoc: TfEstoqueDoc;

implementation

uses uEstoqueDocIt;

{$R *.dfm}

procedure TfEstoqueDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfEstoqueDoc.NxButton2Click(Sender: TObject);
begin
  fDmEstoque.cdsEstoqueDoc.Cancel;
  Close;
end;

procedure TfEstoqueDoc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmEstoque);
end;

procedure TfEstoqueDoc.NxButton1Click(Sender: TObject);
begin
  if fnc_Gravar <> '' then
  begin
    ShowMessage(vMsg);
    Exit;
  end;
  fDmEstoque.cdsEstoqueDocPDV.AsInteger := fDmEstoque.cdsEstoqueDocEMPRESA_ID.AsInteger;
  fDmEstoque.cdsEstoqueDoc.Post;
  fDmEstoque.cdsEstoqueDoc.ApplyUpdates(0);
  Close;
end;

procedure TfEstoqueDoc.NxButton3Click(Sender: TObject);
begin
  fEstoqueDocIt := TfEstoqueDocIt.Create(Self);
  fEstoqueDocIt.fDmEstoque := fDmEstoque;
  fDmEstoque.cdsEstoqueDocIt.Last;
  fDmEstoque.vItem := fDmEstoque.cdsEstoqueDocItITEM.AsInteger;
  fDmEstoque.cdsEstoqueDocIt.Insert;
  fEstoqueDocIt.ShowModal;
  fEstoqueDocIt.Free;
end;

procedure TfEstoqueDoc.SMDBGrid1DblClick(Sender: TObject);
begin
  fEstoqueDocIt := TfEstoqueDocIt.Create(Self);
  fEstoqueDocIt.fDmEstoque := fDmEstoque;
  fDmEstoque.posicionarIt(fDmEstoque.cdsEstoqueDocID.AsInteger,fDmEstoque.cdsEstoqueDocItITEM.AsInteger);
  fDmEstoque.cdsEstoqueDocIt.Edit;
  fEstoqueDocIt.ShowModal;
  fEstoqueDocIt.Free;
end;

procedure TfEstoqueDoc.NxButton4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir esse item?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    fDmEstoque.cdsEstoqueDocIt.Delete; 
end;

function TfEstoqueDoc.fnc_Gravar: String;
begin
  vMsg := '';
  if fDmEstoque.cdsEstoqueDocDATA.IsNull then
    vMsg := ('Data do movimento deve ser informada!');
  if fDmEstoque.cdsEstoqueDocES.IsNull then
    vMsg := vMsg + (#13 + 'Entrada ou Saída deve ser informada!');
  if fDmEstoque.cdsEstoqueDocEMPRESA_ID.IsNull then
    vMsg := vMsg + (#13 + 'PDV não informado!');
  Result := vMsg;
end;

end.
