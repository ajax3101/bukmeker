unit about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvCtrls, ExtCtrls, JvVerInf, JvComponent, JvxCtrls;

type
  Tabout_frm = class(TForm)
    ok: TJvImgBtn;
    Label1: TLabel;
    Image1: TImage;
    JvxLabel3: TJvxLabel;
    procedure okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  about_frm: Tabout_frm;

implementation

{$R *.dfm}

procedure Tabout_frm.okClick(Sender: TObject);
begin
close;
end;

procedure Tabout_frm.FormShow(Sender: TObject);
var
ver:TJvVersionInfo;
begin
ver:=TJvVersionInfo.Create(application.ExeName);
jvxlabel3.caption:='вер.'+ver.FileVersion;
end;

end.
