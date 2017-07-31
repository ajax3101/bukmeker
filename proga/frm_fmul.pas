unit frm_fmul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBLookupEh, StdCtrls, JvCtrls, Mask, DBCtrlsEh, JvComponent,
  JvxCtrls, ExtCtrls,db;

type
  Tfmul_form = class(TForm)
    Bevel1: TBevel;
    fio: TJvxLabel;
    rights: TJvxLabel;
    DBEditEh2: TDBEditEh;
    cancel: TJvImgBtn;
    add: TJvImgBtn;
    ok: TJvImgBtn;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEditEh1: TDBEditEh;
    DBEditEh3: TDBEditEh;
    JvxLabel1: TJvxLabel;
    JvxLabel2: TJvxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
//  fmul_form: Tfmul_form;

implementation

uses frm_dic, frm_data;

{$R *.dfm}

end.
