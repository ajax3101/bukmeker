unit frm_events;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DBCtrlsEh, DBLookupEh, JvCtrls, Mask,
  JvComponent, JvxCtrls, ExtCtrls, DB, ADODB;

type
  Tevents_form = class(TForm)
    cancel: TJvImgBtn;
    add: TJvImgBtn;
    ok: TJvImgBtn;
    Tour_Types: TADOQuery;
    DataSource2: TDataSource;
    players: TADOQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    JvxLabel3: TJvxLabel;
    JvxLabel4: TJvxLabel;
    JvxLabel6: TJvxLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    sorevnovanie: TDBLookupComboboxEh;
    totals: TADOQuery;
    DataSource3: TDataSource;
    fores: TADOQuery;
    DataSource4: TDataSource;
    Panel2: TPanel;
    igrok: TJvxLabel;
    perviy: TJvxLabel;
    schet: TJvxLabel;
    Bevel2: TBevel;
    fora: TJvxLabel;
    JvxLabel1: TJvxLabel;
    JvxLabel2: TJvxLabel;
    JvxLabel8: TJvxLabel;
    JvxLabel9: TJvxLabel;
    JvxLabel10: TJvxLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    JvxLabel11: TJvxLabel;
    JvxLabel12: TJvxLabel;
    JvxLabel13: TJvxLabel;
    Bevel5: TBevel;
    JvxLabel14: TJvxLabel;
    Bevel6: TBevel;
    JvxLabel17: TJvxLabel;
    JvxLabel18: TJvxLabel;
    igrok1: TDBLookupComboboxEh;
    DBEditEh3: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBLookupComboboxEh4: TDBComboboxEh;
    DBLookupComboboxEh5: TDBComboboxEh;
    igrok2: TDBLookupComboboxEh;
    DBEditEh1: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBLookupComboboxEh7: TDBComboboxEh;
    DBLookupComboboxEh8: TDBComboboxEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    DBLookupComboboxEh9: TDBComboboxEh;
    DBEditEh11: TDBEditEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    vid_sporta: TDBLookupComboboxEh;
    JvxLabel15: TJvxLabel;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBEditEh4: TDBEditEh;
    JvxLabel7: TJvxLabel;
    DBEditEh2: TDBEditEh;
    JvxLabel5: TJvxLabel;
    set_rates: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure foresBeforePost(DataSet: TDataSet);
    procedure totalsBeforePost(DataSet: TDataSet);
    procedure sorevnovanieClick(Sender: TObject);
    procedure DBLookupComboboxEh4NotInList(Sender: TObject;
      NewText: String; var RecheckInList: Boolean);
    procedure DBLookupComboboxEh5NotInList(Sender: TObject;
      NewText: String; var RecheckInList: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sorevnovanieChange(Sender: TObject);
    procedure vid_sportaChange(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
  private
    { Private declarations }
  public
     enter_rez:boolean;
     procedure fill_items();
    { Public declarations }
  end;

var
  events_form: Tevents_form;

implementation

uses frm_dic, frm_data;

{$R *.dfm}

procedure Tevents_form.fill_items();
var
   i:integer;
begin
     totals.First;
     DBLookupComboboxEh5.Items.Clear;
     for i:=0 to totals.RecordCount-1 do
     begin
        DBLookupComboboxEh5.Items.Add(totals.fieldbyname('totals').asstring);
        totals.next;
     end;
     DBLookupComboboxEh8.Items.Assign(DBLookupComboboxEh5.Items);
     DBLookupComboboxEh9.Items.Assign(DBLookupComboboxEh5.Items);
     fores.First;
     DBLookupComboboxEh4.Items.Clear;
     for i:=0 to fores.RecordCount-1 do
     begin
        DBLookupComboboxEh4.Items.Add(fores.fieldbyname('fores').asstring);
        fores.next;
     end;
     DBLookupComboboxEh7.Items.Assign(DBLookupComboboxEh4.Items);
end;

procedure Tevents_form.FormCreate(Sender: TObject);
begin
  DBDateTimeEditEh2.EditMask:='!90:00;1; ';
end;

procedure Tevents_form.FormShow(Sender: TObject);
begin
     if Tour_Types.active then Tour_Types.Refresh else Tour_Types.Active:=true;
     if players.active then players.Refresh else players.Active:=true;
     if fores.active then fores.Refresh else fores.Active:=true;
     if totals.active then totals.Refresh else totals.Active:=true;
     Panel2.Enabled:=(sorevnovanie.KeyValue<>null) and (enter_rez=false);
     if data.events.FieldByName('tour').asstring<>'' then
        vid_sporta.KeyValue:=Tour_Types.fieldbyname('type_key').Value
     else
        vid_sporta.KeyValue:=null;
     vid_sporta.OnChange(nil);
     sorevnovanie.OnChange(nil);
end;

procedure Tevents_form.foresBeforePost(DataSet: TDataSet);
begin
   fores.FieldByName('tourtypes').Value:=fores.Parameters.parambyname('type_key').Value;
end;

procedure Tevents_form.totalsBeforePost(DataSet: TDataSet);
begin
   totals.FieldByName('tourtypes').Value:=totals.Parameters.parambyname('type_key').Value;
end;

procedure Tevents_form.sorevnovanieClick(Sender: TObject);
begin
     Panel2.Enabled:=(sorevnovanie.text<>'') and (enter_rez=false);
end;

procedure Tevents_form.DBLookupComboboxEh4NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
     if NewText='' then exit;
     if not fores.locate('fores',NewText,[]) then
     begin
        fores.append;
        fores.FieldByName('fores').value:=NewText;
        fores.Post;
        fill_items;
     end;
     RecheckInList:=true;
end;

procedure Tevents_form.DBLookupComboboxEh5NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
     if NewText='' then exit;
     if not totals.locate('totals',NewText,[]) then
     begin
         totals.append;
         totals.FieldByName('totals').value:=NewText;
         totals.Post;
         fill_items;
     end;
     RecheckInList:=true;
end;

procedure Tevents_form.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i:integer;
  RESULT1,RESULT2:double;
  s:string;
begin
    action:=cafree;
    with Data.events do
    case ModalResult of
    mrnone : action:=canone;
    mrok  :  begin
                if Modified or (State=dsinsert) then Post;
                if enter_rez then
                with set_rates do
                begin
///////////////////////////////
                     Close;
                     SQL.Clear;
                     SQL.add('select * from ratelines');
                     SQL.add('where rateevent='+Data.events.fieldbyname('key_').asstring);
                     open;
                     First;
                     RESULT1:=Data.events.fieldbyname('RESULT1').AsFloat;
                     RESULT2:=Data.events.fieldbyname('RESULT2').AsFloat;
                     for i:=0 to RecordCount-1 do
                     begin
                        s:=fieldbyname('win').AsString;
  /////////////
                        if Data.events.fieldbyname('CANCELED').AsBoolean then
                        begin
                           edit;
                           FieldByName('winratemul').Value:=1;
                           post;
                        end
                        else
                        if s='1' then
                        begin
                           edit;
                           if result1>result2 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='1F' then
                        begin
                           edit;
                           if result1+FieldByName('FV').AsFloat>result2 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                           if result1+FieldByName('FV').AsFloat=result2 then
                              FieldByName('winratemul').Value:=1
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='2' then
                        begin
                           edit;
                           if result1<result2 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='2F' then
                        begin
                           edit;
                           if result2+FieldByName('FV').AsFloat>result1 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                           if result2+FieldByName('FV').AsFloat=result1 then
                              FieldByName('winratemul').Value:=1
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='X' then
                        begin
                           edit;
                           if result1=result2 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='T<' then
                        begin
                           edit;
                           if FieldByName('TV').AsFloat>result1+result2 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                           if FieldByName('TV').AsFloat=result1+result2 then
                              FieldByName('winratemul').Value:=1
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='T>' then
                        begin
                           edit;
                           if FieldByName('TV').AsFloat<result1+result2 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                           if FieldByName('TV').AsFloat=result1+result2 then
                              FieldByName('winratemul').Value:=1
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='T1<' then
                        begin
                           edit;
                           if FieldByName('TV').AsFloat>result1 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                           if FieldByName('TV').AsFloat=result1 then
                              FieldByName('winratemul').Value:=1
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='T1>' then
                        begin
                           edit;
                           if FieldByName('TV').AsFloat<result1 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                           if FieldByName('TV').AsFloat=result1 then
                              FieldByName('winratemul').Value:=1
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='T2<' then
                        begin
                           edit;
                           if FieldByName('TV').AsFloat>result2 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                           if FieldByName('TV').AsFloat=result2 then
                              FieldByName('winratemul').Value:=1
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end
                        else
                        if s='T2>' then
                        begin
                           edit;
                           if FieldByName('TV').AsFloat<result2 then
                              FieldByName('winratemul').Value:=FieldByName('ratemul').Value
                           else
                           if FieldByName('TV').AsFloat=result2 then
                              FieldByName('winratemul').Value:=1
                           else
                              FieldByName('winratemul').Value:=0;
                           post;
                        end;
                        next;
                     end;
                     Close;
                     SQL.Clear;
                     SQL.add('update rates');
                     SQL.add('set state=3,winratemul=0');
//                     SQL.add('where state=4 and key_ in (select rate from ratelines where winratemul=0 and rateevent='+Data.events.fieldbyname('key_').asstring+')');
                     SQL.add('where key_ in (select rate from ratelines where winratemul=0 and rateevent='+Data.events.fieldbyname('key_').asstring+')');
//                     SQL.add('and not exists (select key_ from ratelines where rate=rates.key_ and winratemul is null)');
                     ExecSQL;
                     Close;
                     SQL.Clear;
                     SQL.add('update rates');
                     SQL.add('set state=2,winratemul=ratemul');
//                     SQL.add('where state=4 and key_ in (select rate from ratelines where winratemul>0 and rateevent='+Data.events.fieldbyname('key_').asstring+')');
                     SQL.add('where key_ in (select rate from ratelines where winratemul>0 and rateevent='+Data.events.fieldbyname('key_').asstring+')');
                     SQL.add('and not exists (select key_ from ratelines where rate=rates.key_ and winratemul is null and winratemul=0)');
                     ExecSQL;
                     Data.rates.Refresh;
                end;
             end;
    mrCancel : cancel;
    mryes :  begin
               if Modified or (State=dsinsert) then Post;
               append;
               if data.events.FieldByName('tour').asstring<>'' then
                  vid_sporta.KeyValue:=Tour_Types.fieldbyname('type_key').Value
               else
                  vid_sporta.KeyValue:=null;
               action :=canone;
             end;
    end;
end;

procedure Tevents_form.sorevnovanieChange(Sender: TObject);
begin
     sorevnovanie.OnClick(nil);
     if sorevnovanie.Text<>'' then
     setfilter(players,'key_ in (select player from playertours where tour='+string(sorevnovanie.KeyValue)+')',false,true);
     if vid_sporta.Text='' then
     if sorevnovanie.Text<>'' then
        vid_sporta.KeyValue:=Tour_Types.fieldbyname('type_key').Value;
end;

procedure Tevents_form.vid_sportaChange(Sender: TObject);
begin
     if vid_sporta.Text<>'' then
        setfilter(Tour_Types,'tourtypes.key_=tours.type and type='+string(vid_sporta.keyvalue),false,true)
     else
        setfilter(Tour_Types,'tourtypes.key_=tours.type',false,true);
     Panel2.Enabled:=(sorevnovanie.text<>'') and (enter_rez=false);
end;

procedure Tevents_form.Panel2Enter(Sender: TObject);
begin
     fill_items;
end;

end.
