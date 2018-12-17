unit uEstoqueResumidoR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDmEstoque, rsDBUtils;

type
  TfEstoqueResumidoR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText4: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    i: Integer;
  public
    { Public declarations }
    fDmEstoque: TDmEstoque;
  end;

var
  fEstoqueResumidoR: TfEstoqueResumidoR;

implementation

{$R *.dfm}

procedure TfEstoqueResumidoR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEstoqueResumidoR.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmEstoque);
  i := 1;
end;

procedure TfEstoqueResumidoR.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  case i of
    1: RLBand1.Color := $00E9E9E9;
   -1: RLBand1.Color := clWhite;
  end;
  i := i * -1;
end;

end.
