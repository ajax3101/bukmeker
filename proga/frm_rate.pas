unit frm_rate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DBCtrlsEh, StdCtrls, Mask, JvComponent,
  JvxCtrls, ExtCtrls, JvCtrls, DB, ADODB, DBLookupEh, JvRadioGroup, ImgList,
  ActnList,FR_Class, JvPlacemnt;

type
  Trates_form = class(TForm)
    cancel: TJvImgBtn;
    add: TJvImgBtn;
    ok: TJvImgBtn;
    Panel1: TPanel;
    JvxLabel3: TJvxLabel;
    JvxLabel4: TJvxLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    JvxLabel1: TJvxLabel;
    DBEditEh1: TDBEditEh;
    JvxLabel2: TJvxLabel;
    DBEditEh2: TDBEditEh;
    JvxLabel5: TJvxLabel;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    JvxLabel6: TJvxLabel;
    DBEditEh5: TDBEditEh;
    JvxLabel7: TJvxLabel;
    JvxLabel8: TJvxLabel;
    DBEditEh6: TDBEditEh;
    DBGridEh1: TDBGridEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    events_list: TADOQuery;
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    DBComboBoxEh1: TDBComboBoxEh;
    DataSource1: TDataSource;
    ratelines: TADOQuery;
    ratetypes_tour: TADOQuery;
    DataSource2: TDataSource;
    events_list2: TADOQuery;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    ImageList1: TImageList;
    ActionList1: TActionList;
    add_Action: TAction;
    del_Action: TAction;
    events_listkey_: TAutoIncField;
    events_listEVENTDATE: TDateTimeField;
    events_listEVENTTIME: TDateTimeField;
    events_listTOUR: TIntegerField;
    events_listFP: TIntegerField;
    events_listSP: TIntegerField;
    events_listWF: TFloatField;
    events_listWP: TFloatField;
    events_listWS: TFloatField;
    events_listFFV: TFloatField;
    events_listFFK: TFloatField;
    events_listFSV: TFloatField;
    events_listFSK: TFloatField;
    events_listTV: TFloatField;
    events_listTVM: TFloatField;
    events_listTVL: TFloatField;
    events_listTFV: TFloatField;
    events_listTFL: TFloatField;
    events_listTFM: TFloatField;
    events_listTSV: TFloatField;
    events_listTSL: TFloatField;
    events_listTSM: TFloatField;
    events_listRESULT1: TFloatField;
    events_listRESULT2: TFloatField;
    events_listCANCELED: TBooleanField;
    events_listev_name: TWideStringField;
    events_listtype: TIntegerField;
    ratelineskey_: TAutoIncField;
    ratelinesRATE: TIntegerField;
    ratelinesRATEEVENT: TIntegerField;
    ratelinesRATEMUL: TFloatField;
    ratelinesWIN: TWideStringField;
    ratelinesFV: TFloatField;
    ratelinesTV: TFloatField;
    ratelinesWINRATEMUL: TFloatField;
    ratelinesRATESTATE: TBooleanField;
    ratelinesEVENTNUM: TIntegerField;
    ratelines_event: TStringField;
    JvxLabel9: TJvxLabel;
    JvImgBtn3: TJvImgBtn;
    CheckBox2: TCheckBox;
    event_cnt: TADOQuery;
    JvFormStorage1: TJvFormStorage;
    procedure DBLookupComboboxEh1DropDown(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboboxEh1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBEditEh3Change(Sender: TObject);
    procedure DBEditEh2Change(Sender: TObject);
    procedure DBEditEh6Change(Sender: TObject);
    procedure add_ActionExecute(Sender: TObject);
    procedure add_ActionUpdate(Sender: TObject);
    procedure del_ActionExecute(Sender: TObject);
    procedure del_ActionUpdate(Sender: TObject);
    procedure JvImgBtn3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    isappend:boolean;
    function check_normal_rate():boolean;
    procedure calc_kf();
    procedure printkard(pr:boolean);
  end;

var
  rates_form: Trates_form;

implementation

uses frm_data, frm_dic, main, frm_setup;

{$R *.dfm}

procedure trates_form.printkard(pr:boolean);
begin
  if Data.rates.FieldByName('key_').asstring<>'' then
  with main_form do
  begin
     setfilter(rates,'rates.key_='+Data.rates.FieldByName('key_').asstring,false,true);
//     frReport1.Preview:=frPreview1;
     frReport1.Dictionary.Variables['nazva']:=''''+setup_form.nazva.Text+'''';
     frReport1.Dictionary.Variables['adres']:=''''+setup_form.adres.Text+'''';
     frReport1.Dictionary.Variables['telefon']:=''''+setup_form.telefon.Text+'''';
     frReport1.PrepareReport;
     if pr then
     frReport1.PrintPreparedReport('', 1, True, frAll)
     else
     frReport1.ShowReport;
  end;
end;
procedure trates_form.calc_kf();
var
  r:double;
  i:integer;
begin
     with ratelines do
     begin
          DisableControls;
          First;
          r:=-9999;
          for i:=0 to Recordcount-1 do
          begin
              if r=-9999 then
                r:=fieldbyname('ratemul').AsFloat
              else
                r:=r*fieldbyname('ratemul').AsFloat;
              next;
          end;
          if r<>-9999 then
          begin
              if (Data.rates.State<>dsedit) and (Data.rates.State<>dsinsert) then
                Data.rates.edit;
              Data.rates.FieldByName('RATEMUL').Value:=r;
          end;
          EnableControls;
     end;
end;
procedure Trates_form.DBLookupComboboxEh1DropDown(Sender: TObject);
begin
events_list.Requery;
end;

function Trates_form.check_normal_rate():boolean;
begin
  result:=false;
  if ratelines.RecordCount<1 then exit;
  if DBEditEh2.Text='' then exit;
  if strtofloat(DBEditEh2.Text)<=0 then exit;
  result:=true;
end;

procedure Trates_form.FormShow(Sender: TObject);
begin
     events_list2.Active:=true;
     events_list.Active:=true;
     ratelines.Active:=true;
     if Data.rates.FieldByName('key_').AsString<>'' then
     begin
        setfilter(ratelines,'rate='+Data.rates.FieldByName('key_').AsString,false,true);
        isappend:=false;
     end
     else
     begin
        DBDateTimeEditEh1.Value:=Date;
        DBDateTimeEditEh2.Value:=Time;
        isappend:=true;
     end;
     DBLookupComboboxEh1.OnChange(nil);
end;

procedure Trates_form.DBLookupComboboxEh1Change(Sender: TObject);
var
   i:integer;
begin
     if DBLookupComboboxEh1.text<>'' then
     begin
         setfilter(ratetypes_tour,'ratetypes_tour.ratetypes=ratetypes.descr and tourtypes='+events_list.fieldbyname('type').asstring,false,true);
         for i:=0 to RadioGroup1.ControlCount-1 do
            RadioGroup1.Controls[i].Enabled:=ratetypes_tour.Locate('name',RadioGroup1.items[i],[]);
{         setfilter(event_cnt,'rateevent='+events_list.fieldbyname('key_').asstring,false,true);
         if event_cnt.Fields[0].AsInteger-event_cnt.Fields[1].AsInteger>=strtoint(setup_form.win_compare.Text) then
            RadioGroup1.Controls[0].Enabled:=false
         else
         if event_cnt.Fields[1].AsInteger-event_cnt.Fields[0].AsInteger>=strtoint(setup_form.win_compare.Text) then
            RadioGroup1.Controls[2].Enabled:=false;}
     end
     else
     for i:=0 to RadioGroup1.ControlCount-1 do
         RadioGroup1.Controls[i].Enabled:=false;
end;

procedure Trates_form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
 with Data.rates do
 case ModalResult of
    mrnone : action:=canone;
    mrok  :  begin
                if not check_normal_rate then
                begin
                  showmessage('Необходимо что-нибудь ввести!');
                  action:=canone;
                  exit;
                end;
                try
                if Modified or (State=dsinsert) then Post;
                ratelines.UpdateBatch();
                except
                  showmessage('Проверь правильность ввода информаци!');
                  action:=canone;
                end;
                if CheckBox2.Checked then printkard(true);
             end;
    mrCancel : begin
                if isappend and (Data.rates.FieldByName('Key_').asstring<>'') then
                begin
                     ratelines.CancelBatch();
                     delete;
                end
                else
                begin
                    ratelines.CancelBatch();
                    cancel;
                end;
               end;
    mryes :  begin
                if not check_normal_rate then
                begin
                  showmessage('Необходимо что-нибудь ввести!');
                  action:=canone;
                  exit;
                end;
                try
                if Modified or (State=dsinsert) then Post;
                ratelines.UpdateBatch();
                except
                  showmessage('Проверь правильность ввода информаци!');
                  action:=canone;
                  exit;
                end;
                printkard(true);
                append;
                setfilter(ratelines,'rate=0',false,true);
                ratelines.Requery();
                isappend:=true;
                DBDateTimeEditEh1.Value:=Date;
                DBDateTimeEditEh2.Value:=Time;
                DBLookupComboboxEh1.Value:=null;
                DBLookupComboboxEh1.OnChange(nil);
                action :=canone;
                DBEditEh2.SetFocus;
             end;
    end;
    if action<>canone then ratelines.Active:=false;
end;

procedure Trates_form.RadioGroup1Click(Sender: TObject);
begin
     CheckBox1.Enabled:=(RadioGroup1.ItemIndex=1)or(RadioGroup1.ItemIndex=3);
     DBComboBoxEh1.Enabled:=(RadioGroup1.ItemIndex=1)or(RadioGroup1.ItemIndex=3);
end;

procedure Trates_form.DBEditEh3Change(Sender: TObject);
begin
  if (DBEditEh2.Text<>'')and(DBEditEh3.Text<>'') then
  DBEditEh4.text:=floattostr(strtofloat(DBEditEh2.Text)*strtofloat(DBEditEh3.Text))
  else
  DBEditEh4.text:='';
end;

procedure Trates_form.DBEditEh2Change(Sender: TObject);
begin
  DBEditEh3.OnChange(nil);
  DBEditEh6.OnChange(nil);
end;

procedure Trates_form.DBEditEh6Change(Sender: TObject);
begin
  if (DBEditEh2.Text<>'')and(DBEditEh6.Text<>'') then
  DBEditEh5.text:=floattostr(strtofloat(DBEditEh2.Text)*strtofloat(DBEditEh6.Text))
  else
  DBEditEh5.text:='';
end;

procedure Trates_form.add_ActionExecute(Sender: TObject);
var
  s:string;
  i:integer;
begin
  with ratelines do
  begin
      DisableControls;
      First;
      for i:=0 to RecordCount-1 do
      begin
        if FieldByName('rateevent').Value=DBLookupComboboxEh1.KeyValue then
        begin
           ShowMessage('Нельзя иметь в экспрессе два одинаковых события!');
           EnableControls;
           exit;
        end;
        next;
      end;
      EnableControls;
  end;
  with data.rates do
  if Modified or (State=dsinsert) then Post;
  with ratelines do
  begin
      Append;
      FieldByName('rateevent').Value:=DBLookupComboboxEh1.KeyValue;
      FieldByName('rate').Value:=Data.rates.fieldbyname('key_').Value;
      s:=RadioGroup1.Items[RadioGroup1.itemindex];
      ratetypes_tour.Locate('name',s,[]);
      s:=ratetypes_tour.fieldbyname('descr').asstring;
      FieldByName('win').asstring:=s;
      if s='1' then FieldByName('ratemul').Value:=events_list.fieldbyname('WF').value else
      if s='1F' then
      begin
         FieldByName('ratemul').Value:=events_list.fieldbyname('FFK').value;
         FieldByName('fv').Value:=events_list.fieldbyname('FFV').value;
      end
      else
      if s='2' then FieldByName('ratemul').Value:=events_list.fieldbyname('WS').value else
      if s='2F' then
      begin
         FieldByName('ratemul').Value:=events_list.fieldbyname('FSK').value;
         FieldByName('fv').Value:=events_list.fieldbyname('FSV').value;
      end
      else
      if s='X' then FieldByName('ratemul').Value:=events_list.fieldbyname('WP').value else
      if s='T<' then
      begin
         FieldByName('ratemul').Value:=events_list.fieldbyname('TVL').value;
         FieldByName('tv').Value:=events_list.fieldbyname('TV').value;
      end
      else
      if s='T>' then
      begin
         FieldByName('ratemul').Value:=events_list.fieldbyname('TVM').value;
         FieldByName('tv').Value:=events_list.fieldbyname('TV').value;
      end
      else
      if s='T1<' then
      begin
         FieldByName('ratemul').Value:=events_list.fieldbyname('TFL').value;
         FieldByName('tv').Value:=events_list.fieldbyname('TFV').value;
      end
      else
      if s='T1>' then
      begin
         FieldByName('ratemul').Value:=events_list.fieldbyname('TFM').value;
         FieldByName('tv').Value:=events_list.fieldbyname('TFV').value;
      end
      else
      if s='T2<' then
      begin
         FieldByName('ratemul').Value:=events_list.fieldbyname('TSL').value;
         FieldByName('tv').Value:=events_list.fieldbyname('TSV').value;
      end
      else
      if s='T2>' then
      begin
         FieldByName('ratemul').Value:=events_list.fieldbyname('TSM').value;
         FieldByName('tv').Value:=events_list.fieldbyname('TSV').value;
      end;
      post;
      calc_kf;
  end;
end;

procedure Trates_form.add_ActionUpdate(Sender: TObject);
begin
  TAction(sender).Enabled:=(DBLookupComboboxEh1.Text<>'')and(RadioGroup1.ItemIndex<>-1);
end;

procedure Trates_form.del_ActionExecute(Sender: TObject);
begin
  ratelines.Delete;
  calc_kf;
end;

procedure Trates_form.del_ActionUpdate(Sender: TObject);
begin
  taction(sender).Enabled:=ratelines.RecordCount>0
end;

procedure Trates_form.JvImgBtn3Click(Sender: TObject);
begin
  printkard(false);
end;

procedure Trates_form.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  i:integer;
begin
  if (state=[])or(state=[gdselected]) then
  begin
     if ratelines.FieldByName('winratemul').AsString='' then
     i:=4
     else
     if ratelines.FieldByName('winratemul').AsFloat=0 then
     i:=3
     else
     i:=2;
     if i<>0 then
     begin
        background:=colors[2][i];
        afont.Color:=colors[1][i];
     end;
  end;
end;

end.
