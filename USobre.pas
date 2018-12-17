//14/01/14 1.15.04 - Conexão foi aberta
//20/06/13 1.14.04 - Alteração do dia do vencimento para 19
//24/04/13 1.12.04 - cadastro e venda com senha substituindo a digital
// corrigida venda à vista
// melhoria na leitura da digital (fecha leitor; abre tabela funcionario pela id)
//04/03/13 1.11.04 - separa crachá e valor com espaço no arquivo para folha
//12/12/12 1.10.03 - baixa estoque do locar "3", era CODLOC = '1'
//12/12/12 1.09.03 - fecha tabela de digitais antes de carregar digitais no leitor; pesquisa digital por FindKey na venda
//26/11/12 1.09.02 - variavel vEmpresa e vCodCliente movida para form fCupomFiscalC - evitar nome de cliente na venda a vista

unit USobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Db,
  MemTable, jpeg, Mask, ToolEdit, RXDBCtrl, Variants, ComCtrls, DBClient, CurrEdit, FMTBcd, RXCtrls, SqlExpr;

type
  TfSobre = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    RxLabel1: TRxLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  fSobre: TfSobre;

implementation

uses ComObj, UDMEmpresa;

{$R *.DFM}


procedure TfSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSobre.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSobre.FormShow(Sender: TObject);
begin
  Label2.Caption := DMEmpresa.cdsEmpresaNOME.AsString;
end;

end.
