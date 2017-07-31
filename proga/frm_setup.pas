unit frm_setup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponent, JvxCtrls, StdCtrls, Mask, DBCtrlsEh, ComCtrls,
  JvComCtrls, ImgList, ExtCtrls, JvCtrls, JvToolEdit, JvGroupBox,
  JvPlacemnt;

type
  Tsetup_form = class(TForm)
    ok: TJvImgBtn;
    ImageList1: TImageList;
    JvGroupBox1: TJvGroupBox;
    nazva: TDBEditEh;
    nazvanie: TJvxLabel;
    adres1: TJvxLabel;
    adres: TDBEditEh;
    tel: TJvxLabel;
    telefon: TDBEditEh;
    JvGroupBox2: TJvGroupBox;
    JvxLabel1: TJvxLabel;
    JvDirectoryEdit1: TJvDirectoryEdit;
    JvFormStorage1: TJvFormStorage;
    cancel: TJvImgBtn;
    win_compare: TEdit;
    procedure cancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setup_form: Tsetup_form;

implementation

{$R *.dfm}

procedure Tsetup_form.cancelClick(Sender: TObject);
begin
  JvFormStorage1.RestoreFormPlacement;
end;

end.
