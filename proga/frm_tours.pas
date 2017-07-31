unit frm_tours;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBLookupEh, StdCtrls, JvCtrls, Mask, DBCtrlsEh, JvComponent,
  JvxCtrls, ExtCtrls,db;

type
  Ttours_form = class(TForm)
    Bevel1: TBevel;
    fio: TJvxLabel;
    rights: TJvxLabel;
    DBEditEh2: TDBEditEh;
    cancel: TJvImgBtn;
    add: TJvImgBtn;
    ok: TJvImgBtn;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tours_form: Ttours_form;

implementation

uses frm_data, frm_dic;

{$R *.dfm}

procedure Ttours_form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    with Data.tours do
    case ModalResult of
    mrnone : action:=canone;
    mrok  :  if Modified or (State=dsinsert) then Post;
    mrCancel : cancel;
    mryes :  begin
               if Modified or (State=dsinsert) then Post;
               append;
               action :=canone;
             end;
    end;
end;

end.
