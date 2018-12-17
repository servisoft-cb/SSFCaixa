unit uEstoqueDocC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uDmEstoque, NxCollection, Grids,
  DBGrids, SMDBGrid, ExtCtrls, StdCtrls, NxEdit, UCBase;

type
  TfEstoqueDocC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    Panel2: TPanel;
    btnPesquisar: TNxButton;
    NxButton5: TNxButton;
    Label1: TLabel;
    NxDatePicker1: TNxDatePicker;
    Label2: TLabel;
    NxDatePicker2: TNxDatePicker;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
  private
    { Private declarations }
    fDmEstoque: TDmEstoque;
  public
    { Public declarations }
  end;

var
  fEstoqueDocC: TfEstoqueDocC;

implementation

uses UEstoqueDoc, rsDbUtils, uDmUserControl;

{$R *.dfm}

procedure TfEstoqueDocC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDmEstoque.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmEstoque);
  Action := caFree;
end;

procedure TfEstoqueDocC.NxButton1Click(Sender: TObject);
begin
  fEstoqueDoc := TfEstoqueDoc.Create(Self);
  fEstoqueDoc.fDmEstoque := fDmEstoque;
  fDmEstoque.cdsEstoqueDoc.Insert;
  fEstoqueDoc.ShowModal;
  fEstoqueDoc.Free;
end;

procedure TfEstoqueDocC.NxButton3Click(Sender: TObject);
begin
  Panel2.Visible := not Panel2.Visible;
end;

procedure TfEstoqueDocC.NxButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmemte excluir este documento?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmEstoque.posicionar(fDmEstoque.cdsEstoqueDocConsID.AsInteger);
    fDmEstoque.cdsEstoqueDoc.Delete;
    fDmEstoque.cdsEstoqueDoc.ApplyUpdates(0);
  end;
  btnPesquisarClick(Sender);
end;

procedure TfEstoqueDocC.FormShow(Sender: TObject);
begin
  fDmEstoque := TDmEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmEstoque);
end;

procedure TfEstoqueDocC.btnPesquisarClick(Sender: TObject);
begin
  fDmEstoque.cdsEstoqueDocCons.Close;
  fDmEstoque.cdsEstoqueDocCons.Open;
end;

procedure TfEstoqueDocC.SMDBGrid1DblClick(Sender: TObject);
begin
  fEstoqueDoc := TfEstoqueDoc.Create(Self);
  fEstoqueDoc.fDmEstoque := fDmEstoque;
  fDmEstoque.posicionar(fDmEstoque.cdsEstoqueDocConsID.AsInteger);
  fDmEstoque.cdsEstoqueDoc.Edit;
  fEstoqueDoc.ShowModal;
  fEstoqueDoc.Free;
end;

procedure TfEstoqueDocC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmEstoque);
end;

procedure TfEstoqueDocC.NxButton5Click(Sender: TObject);
begin
  Close;
end;

end.
