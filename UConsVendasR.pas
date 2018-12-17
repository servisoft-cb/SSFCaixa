unit UConsVendasR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport;

type
  TfConsVendasR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand4: TRLBand;
    RLTotal: TRLLabel;
    RLPeriodo: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vTotal: Currency;
  public
    { Public declarations }
  end;

var
  fConsVendasR: TfConsVendasR;

implementation

uses UConsVendas;

{$R *.dfm}

procedure TfConsVendasR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfConsVendasR.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  fConsVendas.Monta_cdsCupomItemR;
end;

procedure TfConsVendasR.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal := vTotal + StrToFloat(FormatFloat('0.00',fConsVendas.cdsCupomItemVLRTOTAL.AsCurrency));
end;

procedure TfConsVendasR.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLTotal.Caption := 'Total: ' + FormatFloat('0.00',vTotal);
  vTotal := 0;
end;

procedure TfConsVendasR.FormCreate(Sender: TObject);
begin
  vTotal := 0;
end;

end.
