unit uProdutoR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDmProduto;

type
  TfProdutoR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vImpar: Byte;
  public
    { Public declarations }
    fDmProduto: TDmProduto;
  end;

var
  fProdutoR: TfProdutoR;

implementation

{$R *.dfm}

procedure TfProdutoR.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vImpar := 1;
end;

procedure TfProdutoR.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vImpar = 1 then
    RLBand1.Color := $00E9E9E9
  else
    RLBand1.Color := clWhite;
  vImpar := vImpar * -1;  
end;

end.
