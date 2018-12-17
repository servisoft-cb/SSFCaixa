unit uCupomFiscalR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCupom;

type
  TfCupomFiscalR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText11: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCupom: TDmCupom;
  end;

var
  fCupomFiscalR: TfCupomFiscalR;

implementation

{$R *.dfm}

end.
