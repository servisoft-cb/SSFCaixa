unit uProdutoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uDmProduto, NxCollection, Grids,
  DBGrids, SMDBGrid, ExtCtrls, StdCtrls, UCBase;

type
  TfProdutoC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    Panel2: TPanel;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    Edit1: TEdit;
    NxButton6: TNxButton;
    ckInativo: TCheckBox;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure NxButton6Click(Sender: TObject);
  private
    { Private declarations }
    fDmProduto: TDmProduto;
    ctProdutoCons: String;
  public
    { Public declarations }
  end;

var
  fProdutoC: TfProdutoC;

implementation

uses UProduto, rsDbUtils, uProdutoR, uDmUserControl;

{$R *.dfm}

procedure TfProdutoC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDmProduto.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmProduto);
  Action := caFree;
end;

procedure TfProdutoC.NxButton1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.fDmProduto := fDmProduto;
  fDmProduto.posicionarProduto(0);
  fDmProduto.cdsProduto.Insert;
  fProduto.ShowModal;
  fProduto.Free;
end;

procedure TfProdutoC.NxButton3Click(Sender: TObject);
begin
  Panel2.Visible := not Panel2.Visible;
end;

procedure TfProdutoC.NxButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmemte excluir este prodto?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmProduto.posicionarProduto(fDmProduto.cdsProdutoConsID.AsInteger);
    fDmProduto.cdsProduto.Delete;
    fDmProduto.cdsProduto.ApplyUpdates(0);
  end;
end;

procedure TfProdutoC.FormShow(Sender: TObject);
begin
  fDmProduto := TDMProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmProduto);
  ctProdutoCons := fDMProduto.sdsProdutoCons.CommandText;
end;

procedure TfProdutoC.NxButton4Click(Sender: TObject);
begin
  fDmProduto.cdsProdutoCons.Close;
  if Edit1.Text <> '' then
    fDmProduto.sdsProdutoCons.CommandText := ctProdutoCons + ' AND NOME LIKE ''%' + Edit1.Text + '%''';
  if ckInativo.Checked then
    fDmProduto.sdsProdutoCons.CommandText := ctProdutoCons + ' AND INATIVO = ''N''';
  fDmProduto.cdsProdutoCons.Open;
end;

procedure TfProdutoC.SMDBGrid1DblClick(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.fDmProduto := fDmProduto;
  fDmProduto.posicionarProduto(fDmProduto.cdsProdutoConsID.AsInteger);
  fDmProduto.cdsProduto.Edit;
  fProduto.ShowModal;
  fProduto.Free;
end;

procedure TfProdutoC.NxButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoC.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDmProduto.cdsProdutoCons.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfProdutoC.NxButton6Click(Sender: TObject);
begin
  fProdutoR := TfProdutoR.Create(Self);
  fProdutoR.fDmProduto := fDmProduto;
  fProdutoR.RLReport1.Preview;
end;

end.
