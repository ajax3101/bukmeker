unit frm_tourtypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, JvCtrls, Mask, DBCtrlsEh, JvComponent,
  JvxCtrls, ExtCtrls,db, ADODB, Grids, DBGridEh, ImgList;

type
  Ttourtypes_form = class(TForm)
    Bevel1: TBevel;
    fio: TJvxLabel;
    rights: TJvxLabel;
    DBEditEh2: TDBEditEh;
    cancel: TJvImgBtn;
    add: TJvImgBtn;
    ok: TJvImgBtn;
    CheckListBox1: TCheckListBox;
    JvxLabel1: TJvxLabel;
    JvxLabel2: TJvxLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh3: TDBEditEh;
    ADOQuery1: TADOQuery;
    Bevel3: TBevel;
    GroupBox1: TGroupBox;
    JvxLabel3: TJvxLabel;
    JvxLabel4: TJvxLabel;
    JvxLabel5: TJvxLabel;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBGridEh2: TDBGridEh;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    ImageList1: TImageList;
    fmul: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fill_values();
    procedure save_values();
  end;

var
  tourtypes_form: Ttourtypes_form;
  modif:boolean;

implementation

uses frm_dic, frm_data;

{$R *.dfm}

procedure Ttourtypes_form.fill_values();
var i:integer;
begin
     for i:=0 to CheckListBox1.Count-1 do
         CheckListBox1.Checked[i]:=false;
     if data.tourtypes.FieldByName('key_').Value=null then exit;
     ADOQuery1.SQL.Clear;
     ADOQuery1.SQL.add('select ratetypes.name from ratetypes_tour,ratetypes where ratetypes_tour.ratetypes=ratetypes.descr and ratetypes_tour.tourtypes='+data.tourtypes.FieldByName('key_').asstring);
     ADOQuery1.open;
     ADOQuery1.first;
     for i:=0 to ADOQuery1.RecordCount-1 do
     begin
          CheckListBox1.Checked[CheckListBox1.Items.IndexOf(ADOQuery1.Fields[0].asstring)]:=true;
          ADOQuery1.next;
     end;
     modif:=false;
end;

procedure Ttourtypes_form.save_values();
var
   i:integer;
   s:string;
begin
     if not modif then exit;
     ADOQuery1.SQL.Clear;
     ADOQuery1.SQL.add('delete from ratetypes_tour where tourtypes='+data.tourtypes.FieldByName('key_').asstring);
     ADOQuery1.ExecSQL;
     ADOQuery1.SQL.Clear;
     ADOQuery1.SQL.add('insert into ratetypes_tour (tourtypes,ratetypes) select '+data.tourtypes.FieldByName('key_').asstring+', descr from ratetypes where ');
     s:='';
     for i:=0 to CheckListBox1.Count-1 do
     if CheckListBox1.Checked[i] then
     if s='' then s:='name='''+CheckListBox1.Items[i]+''''
     else s:=s+' or name='''+CheckListBox1.Items[i]+'''';
     ADOQuery1.SQL.add(s);
     ADOQuery1.ExecSQL;
end;

procedure Ttourtypes_form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 with Data.tourtypes do
 case ModalResult of
    mrnone : action:=canone;
    mrok  :  begin
                  if Modified or (State=dsinsert) then Post;
                  save_values;
             end;
    mrCancel : cancel;
    mryes :  begin
               if Modified or (State=dsinsert) then Post;
               save_values;
               append;
               fill_values;
               action :=canone;
             end;
    end;
end;

procedure Ttourtypes_form.CheckListBox1ClickCheck(Sender: TObject);
begin
     modif:=true;
end;

procedure Ttourtypes_form.FormShow(Sender: TObject);
begin
     fmul.active:=true; 
     fill_values;
end;

end.
