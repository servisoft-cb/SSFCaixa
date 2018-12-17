unit uDmUserControl;

interface

uses
  SysUtils, Classes, ActnList, UCBase, UCDBXConn;

type
  TdmUserControl = class(TDataModule)
    UserControl1: TUserControl;
    UCDBXConn1: TUCDBXConn;
    UCSettings1: TUCSettings;
    procedure UserControl1AfterLogin(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vUsuario: String;
  end;

var
  dmUserControl: TdmUserControl;

implementation

uses UMenuP;

{$R *.dfm}

procedure TdmUserControl.UserControl1AfterLogin(Sender: TObject);
begin
  fMenuP.prc_Habilita_Menu;
  vUsuario := UserControl1.CurrentUser.LoginName;
end;

end.
