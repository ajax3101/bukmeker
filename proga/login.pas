unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvLabel, JvBlinkingLabel, ExtCtrls, JvPanel,
  DBCtrlsEh, JvCtrls, Mask, JvComponent, JvxCtrls, JvAppearingLabel,
  JvBouncingLabel, JvAngleLabel, JvSpecialLabel, JvRealLabel,
  JvReversedLabel, JvScrollingLabel, DBLookupEh, JvPlacemnt;

type
  Tfrm_login = class(TForm)
    Bevel1: TBevel;
    rights: TJvxLabel;
    pass: TJvxLabel;
    DBEditEh1: TDBEditEh;
    ok: TJvImgBtn;
    JvxLabel1: TJvxLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    cancel: TJvImgBtn;
    JvFormStorage1: TJvFormStorage;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboboxEh1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

uses frm_dic, frm_data, main;

{$R *.dfm}

procedure Tfrm_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if modalresult=mrok then
    if DBEditEh1.Text<>data.users.FieldByName('upassword').asstring then
    begin
      showmessage('Введен неверный пароль!');
      action:=canone;
    end
    else
       if data.users.FieldByName('rights').asstring='АДМИНИСТРАТОР' then mode_work:=0 else mode_work:=1;
end;

procedure Tfrm_login.FormShow(Sender: TObject);
begin
     try
        DBLookupComboboxEh1.KeyValue:=edit1.Text;
     except
     end;
end;

procedure Tfrm_login.DBLookupComboboxEh1Exit(Sender: TObject);
begin
    Edit1.Text:=data.users.FieldByName('key_').asstring;
end;

end.
