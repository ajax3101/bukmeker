unit frm_users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvCombobox, JvComponent, JvxCtrls, DBCtrlsEh, JvCtrls,
  ExtCtrls, Mask,db;

type
  Tusers_form = class(TForm)
    fio: TJvxLabel;
    DBEditEh1: TDBEditEh;
    rights: TJvxLabel;
    pass: TJvxLabel;
    DBEditEh2: TDBEditEh;
    Bevel1: TBevel;
    cancel: TJvImgBtn;
    add: TJvImgBtn;
    ok: TJvImgBtn;
    DBComboBoxEh1: TDBComboBoxEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  users_form: Tusers_form;

implementation

uses frm_dic, frm_data;

{$R *.dfm}

procedure Tusers_form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    with Data.users do
    case ModalResult of
    mrnone : action:=canone;
    mrok  :  begin
               if Modified or (State=dsinsert) then Post;
               cancel;
             end;
    mrCancel : cancel;
    mryes :  begin
               if Modified or (State=dsinsert) then Post;
               append;
               action :=canone;
             end;
    end;
end;

end.
