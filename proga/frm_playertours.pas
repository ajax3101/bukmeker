unit frm_playertours;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, JvCtrls, Mask, DBCtrlsEh,
  JvComponent, JvxCtrls, ExtCtrls, DB, ADODB, DBCtrls, Buttons, DBLookupEh,
  ImgList, ActnList;

type
  Tplayertours_form = class(TForm)
    Bevel1: TBevel;
    fio: TJvxLabel;
    rights: TJvxLabel;
    DBEditEh2: TDBEditEh;
    cancel: TJvImgBtn;
    add: TJvImgBtn;
    ok: TJvImgBtn;
    DBGridEh2: TDBGridEh;
    PlayerTours: TADOQuery;
    DataSource1: TDataSource;
    PlayerToursPLAYER: TIntegerField;
    PlayerToursTOUR: TIntegerField;
    PlayerTourscode: TAutoIncField;
    PlayerTours_tour: TStringField;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    ActionList1: TActionList;
    add_rec: TAction;
    del_rec: TAction;
    ImageList1: TImageList;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PlayerToursBeforePost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure add_recExecute(Sender: TObject);
    procedure del_recExecute(Sender: TObject);
    procedure del_recUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  playertours_form: Tplayertours_form;

implementation

uses frm_dic, frm_data;

{$R *.dfm}

procedure Tplayertours_form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 with Data.players do
 case ModalResult of
    mrnone : action:=canone;
    mrok  :  begin
                if Modified or (State=dsinsert) then Post;
                PlayerTours.UpdateBatch();
             end;
    mrCancel : begin
                cancel;
                PlayerTours.CancelBatch();
               end;
    mryes :  begin
                if Modified or (State=dsinsert) then Post;
                PlayerTours.UpdateBatch();
                append;
                action :=canone;
             end;
    end;
    if action<>canone then PlayerTours.Active:=false;
end;

procedure Tplayertours_form.FormShow(Sender: TObject);
begin
     PlayerTours.Active:=true;
     data.Tour_Types.Refresh
end;

procedure Tplayertours_form.PlayerToursBeforePost(DataSet: TDataSet);
begin
     PlayerTours.FieldByName('player').value:=PlayerTours.Parameters.parambyname('key_').Value;
end;

procedure Tplayertours_form.SpeedButton2Click(Sender: TObject);
begin
    if PlayerTours.FieldByName('code').asstring<>'' then
       PlayerTours.delete;
end;

procedure Tplayertours_form.add_recExecute(Sender: TObject);
begin
    if Data.players.modified or (Data.players.State=dsinsert) then Data.players.Post;
    if PlayerTours.Parameters.parambyname('key_').value=null then
    begin
        PlayerTours.cancel;
        exit;
    end;
    PlayerTours.Append;
    PlayerTours.FieldByName('tour').Value:=DBLookupComboboxEh1.Value;
    PlayerTours.Post;
end;

procedure Tplayertours_form.del_recExecute(Sender: TObject);
begin
    if PlayerTours.Parameters.parambyname('key_').value=null then exit;
    if PlayerTours.FieldByName('code').asstring<>'' then
       PlayerTours.delete;
end;

procedure Tplayertours_form.del_recUpdate(Sender: TObject);
begin
     taction(sender).Enabled:=not PlayerTours.IsEmpty;
end;

end.
