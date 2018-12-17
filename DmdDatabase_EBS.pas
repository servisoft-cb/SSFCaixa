unit DmdDatabase_EBS;

interface

uses
  SysUtils, Classes, IniFiles,
  IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME, FMTBcd, ADODB, DB;

type
  TdmDatabase_EBS = class(TDataModule)
    adoEBS: TADOConnection;
  private                                        
    { Private declarations }
  public
  
  end;

var
  dmDatabase_EBS: TdmDatabase_EBS;

implementation

{$R *.dfm}

end.
