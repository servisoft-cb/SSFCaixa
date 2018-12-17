unit UMenuP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Menus, StdCtrls, jpeg, UCBase, ImgList,
  ComCtrls, ToolWin, ActnList, ExtCtrls, RLConsts;

type
  TfMenuP = class(TForm)
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Image2: TImage;
    ToolBar1: TToolBar;
    btParametros: TToolButton;
    btVendas: TToolButton;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    Usurios1: TMenuItem;
    Cadastro1: TMenuItem;
    Logoff1: TMenuItem;
    ToolButton4: TToolButton;
    AlterarSenha1: TMenuItem;
    N2: TMenuItem;
    Mantueno1: TMenuItem;
    Vendas1: TMenuItem;
    Funcionrios2: TMenuItem;
    N4: TMenuItem;
    EmpresasBares1: TMenuItem;
    Parmetros1: TMenuItem;
    Produtos1: TMenuItem;
    Estoque2: TMenuItem;
    N5: TMenuItem;
    Vendas2: TMenuItem;
    ConsultaVenas1: TMenuItem;
    EstoqueResumidoMensal2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ConversordeVendas2: TMenuItem;
    btFuncionarios: TToolButton;
    btProdutos: TToolButton;
    Relatrios1: TMenuItem;
    ListadePreosporBar1: TMenuItem;
    DocumentodeEstoque1: TMenuItem;
    RelatriodeEstoque1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sobre1Click(Sender: TObject);
    procedure Logoff1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FuncionariosExecute(Sender: TObject);
    procedure Funcionrios2Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure EmpresasBares1Click(Sender: TObject);
    procedure ConversordeVendas2Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);
    procedure ConsultaVenas1Click(Sender: TObject);
    procedure ListadePreosporBar1Click(Sender: TObject);
    procedure DocumentodeEstoque1Click(Sender: TObject);
    procedure RelatriodeEstoque1Click(Sender: TObject);
  private
    { Private declarations }
    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: String = '');
  public
    { Public declarations }
    procedure prc_Habilita_Menu;
  end;

var
  fMenuP: TfMenuP;
  Auto: string[15];

implementation

uses USobre, UParametros, UEmpresa, UProdutoC, UCupomFiscalC, UConsVendas, DmdDatabase, uDmUserControl, uEscolheEmpresa,
  UFuncionarioC_Ora, UDMParametros, UEmpresaC, uConvVendas, uEstoqueDocC, UDMCupom, uListaPrecos,
  uEstoqueResumido;

{$R *.DFM}

procedure TfMenuP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfMenuP.Sobre1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Self);
  fSobre.ShowModal;
end;

procedure TfMenuP.Logoff1Click(Sender: TObject);
begin
  DmUserControl.UserControl1.Logoff;
end;

procedure TfMenuP.ToolButton3Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfMenuP.FormCreate(Sender: TObject);
begin
  if not Assigned(DMParametros) then
    DMParametros := TDMParametros.Create(Self);
end;

procedure TfMenuP.OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: String);
var
  existe: TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];
  end;

  if not (existe = nil) then
  begin
    existe.BringToFront;
    existe.SetFocus;
  end
  else
  begin
    Application.CreateForm(FClass,existe);
    existe.FormStyle := fsMDIChild;
    existe.Show;
  end;
  existe.WindowState := vEstado;
end;

procedure TfMenuP.FuncionariosExecute(Sender: TObject);
begin
  //  if dmUserControl.vUsuario = 'bar' then
//    Exit;
end;

procedure TfMenuP.Funcionrios2Click(Sender: TObject);
begin
  fFuncionarioC_Ora := TfFuncionarioC_Ora.Create(Self);
  fFuncionarioC_Ora.ShowModal;
end;

procedure TfMenuP.Parmetros1Click(Sender: TObject);
begin
  fParametros := TfParametros.Create(Self);
  fParametros.ShowModal;
end;

procedure TfMenuP.EmpresasBares1Click(Sender: TObject);
begin
  fEmpresaC := TfEmpresaC.Create(Self);
  fEmpresaC.ShowModal;
end;

procedure TfMenuP.ConversordeVendas2Click(Sender: TObject);
begin
  fConvVendas := TfConvVendas.Create(Self);
  fConvVendas.ShowModal;
end;

procedure TfMenuP.Produtos1Click(Sender: TObject);
begin
  OpenForm(TfProdutoC,wsMaximized);
end;

procedure TfMenuP.Vendas2Click(Sender: TObject);
begin
  if not Assigned(DMCupom) then
    DMCupom := TDMCupom.Create(Self);

  DMCupom.cdsEmpresa.Open;

  fEscolheEmpresa := TfEscolheEmpresa.Create(Self);
  fEscolheEmpresa.ShowModal;

  fCupomFiscalC := TfCupomFiscalC.Create(Self);
  fCupomFiscalC.ShowModal;

  if DMCupom.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMCupom);
end;

procedure TfMenuP.ConsultaVenas1Click(Sender: TObject);
begin
  if dmUserControl.vUsuario = 'bar' then
    Exit;
  fConsVendas := TfConsVendas.Create(Self);
  fConsVendas.ShowModal;
end;

procedure TfMenuP.prc_Habilita_Menu;
var
  i: Integer;
begin
  for i := 0 to self.Menu.Items.Count - 1  do
    Self.Menu.Items.Items[i].Visible := Self.Menu.Items.Items[i].Enabled;

  for i := 0 to self.Menu.Items.Count - 1  do
    Self.Menu.Items.Items[i].Visible := Self.Menu.Items.Items[i].Enabled;

  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if Components[i] is TMenuItem then
      TMenuItem(Self.Components[i]).Visible := TMenuItem(Self.Components[i]).Enabled;
  end;
  btParametros.Enabled   := Parmetros1.Visible;
  btFuncionarios.Enabled := Funcionrios2.Visible;
  btProdutos.Enabled     := Produtos1.Visible;
  btVendas.Enabled       := Vendas2.Visible;
end;

procedure TfMenuP.ListadePreosporBar1Click(Sender: TObject);
begin
  fListaPrecos := TfListaPrecos.Create(Self);
  fListaPrecos.ShowModal;
end;

procedure TfMenuP.DocumentodeEstoque1Click(Sender: TObject);
begin
  OpenForm(TfEstoqueDocC,wsMaximized);
end;

procedure TfMenuP.RelatriodeEstoque1Click(Sender: TObject);
begin
  fEstoqueResumido := TfEstoqueResumido.Create(Self);
  fEstoqueResumido.ShowModal;
end;

initialization
  RLConsts.SetVersion(3,72,'B');

end.


