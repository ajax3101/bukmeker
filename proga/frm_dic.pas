unit frm_dic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, Grids, DBGridEh, JvComCtrls,EhLibADO, DBCtrlsEh,
  JvComponent, JvxCtrls, StdCtrls, Mask, ExtCtrls, Menus, DBLookupEh,
  JvToolEdit, JvDBCtrl, DBSumLst, DBCtrls, JvCtrls, ADODB,JclFileUtils,JclDateTime;

type
  TForm_dictionary = class(TForm)
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGridEh1: TDBGridEh;
    DataSource_users: TDataSource;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DataSource_players: TDataSource;
    DataSource_tourtypes: TDataSource;
    TabSheet4: TTabSheet;
    DataSource_tours: TDataSource;
    DBGridEh4: TDBGridEh;
    Panel1: TPanel;
    rights: TJvxLabel;
    DBCheckBoxEh1: TDBCheckBoxEh;
    Panel2: TPanel;
    JvxLabel1: TJvxLabel;
    DBCheckBoxEh2: TDBCheckBoxEh;
    PopupMenu1: TPopupMenu;
    appendrec1: TMenuItem;
    deleterec1: TMenuItem;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DataSource_events: TDataSource;
    DataSource_rates: TDataSource;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    Panel4: TPanel;
    JvxLabel6: TJvxLabel;
    JvxLabel3: TJvxLabel;
    Panel3: TPanel;
    JvxLabel2: TJvxLabel;
    JvxLabel4: TJvxLabel;
    JvxLabel5: TJvxLabel;
    JvxLabel10: TJvxLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBCheckBoxEh3: TDBCheckBoxEh;
    DBEditEh1: TDBEditEh;
    DBComboBoxEh1: TDBComboBoxEh;
    DBSumList1: TDBSumList;
    Panel5: TPanel;
    JvxLabel9: TJvxLabel;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    DBCheckBox1: TDBCheckBoxEh;
    DBCheckBox2: TDBCheckBoxEh;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    DataSource_Tour_Types: TDataSource;
    DataSource_tour_events: TDataSource;
    ADOQuery1: TADOQuery;
    Timer1: TTimer;
    Rezult1: TMenuItem;
    Edit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBCheckBoxEh2Click(Sender: TObject);
    procedure DBLookupComboboxEh1Change(Sender: TObject);
    procedure DBCheckBoxEh1Click(Sender: TObject);
    procedure DBLookupComboboxEh2Change(Sender: TObject);
    procedure DBGridEh4DblClick(Sender: TObject);
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
//    procedure DBGridEh7DblClick(Sender: TObject);
    procedure DBGridEh6DblClick(Sender: TObject);
    procedure DBGridEh5DblClick(Sender: TObject);
    procedure DBSumList1SumListChanged(Sender: TObject);
    procedure JvPageControl1Change(Sender: TObject);
    procedure TabSheet5Enter(Sender: TObject);
    procedure DBDateTimeEditEh3Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure TabSheet6Enter(Sender: TObject);
    procedure DBGridEh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure DBDateTimeEditEh1Change(Sender: TObject);
    procedure DBComboBoxEh1NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBCheckBoxEh3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_dictionary: TForm_dictionary;
  colors:array [1..2] of array of integer;
implementation

uses main, frm_data, frm_users, frm_tours, frm_tourtypes, frm_playertours,
   frm_rate, frm_events, frm_rate_state;

{$R *.dfm}

procedure TForm_dictionary.DBGridEh1DblClick(Sender: TObject);
begin
  if mode_work<>0 then exit;
  with DBGridEh1.DataSource.DataSet do
  if IsEmpty then append;
  users_form.ShowModal;
end;

procedure TForm_dictionary.DBCheckBoxEh2Click(Sender: TObject);
begin
    if not Data.baza.Connected then exit;
    JvxLabel1.Enabled:=DBCheckBoxEh2.Checked;
    DBLookupComboboxEh1.Enabled:=DBCheckBoxEh2.Checked;
    if DBCheckBoxEh2.Checked then
    begin
        if DBLookupComboboxEh1.keyvalue <> null then
          setfilter(Data.players,'key_ in (select player from playertours where tour=(select top 1 key_ from tours where type='+string(DBLookupComboboxEh1.keyvalue)+'))',false,true);
    end
    else
        setfilter(Data.players,'',false,true);
end;

procedure TForm_dictionary.DBLookupComboboxEh1Change(Sender: TObject);
begin
    if not Data.baza.Connected then exit;
    if DBLookupComboboxEh1.keyvalue <> null then
      setfilter(Data.players,'key_ in (select player from playertours where tour=(select top 1 key_ from tours where type='+string(DBLookupComboboxEh1.keyvalue)+'))',false,true);
end;

procedure TForm_dictionary.DBCheckBoxEh1Click(Sender: TObject);
begin
    if not Data.baza.Connected then exit;
    rights.Enabled:=DBCheckBoxEh1.Checked;
    DBLookupComboboxEh2.Enabled:=DBCheckBoxEh1.Checked;
    if DBCheckBoxEh1.Checked then
    begin
        if  DBLookupComboboxEh2.keyvalue <> null then
          setfilter(Data.tours,'type='+string(DBLookupComboboxEh2.keyvalue),false,true);
    end
    else
        setfilter(Data.tours,'',false,true);
end;

procedure TForm_dictionary.DBLookupComboboxEh2Change(Sender: TObject);
begin
    if not Data.baza.Connected then exit;
    if  DBLookupComboboxEh2.keyvalue <> null then
      setfilter(Data.tours,'type='+string(DBLookupComboboxEh2.keyvalue),false,true);
end;

procedure TForm_dictionary.DBGridEh4DblClick(Sender: TObject);
begin
  if mode_work<>0 then exit;
  with DBGridEh4.DataSource.DataSet do
  if IsEmpty then append;
  tours_form.ShowModal;
end;

procedure TForm_dictionary.DBGridEh3DblClick(Sender: TObject);
begin
if mode_work<>0 then exit;
with DBGridEh3.DataSource.DataSet do
  if IsEmpty then append;
  tourtypes_form.ShowModal;
end;

procedure TForm_dictionary.DBGridEh2DblClick(Sender: TObject);
begin
  if mode_work<>0 then exit;
  with DBGridEh2.DataSource.DataSet do
  if IsEmpty then append;
  playertours_form.ShowModal;
end;

//procedure TForm_dictionary.DBGridEh7DblClick(Sender: TObject);
//begin
//  if mode_work<>0 then exit;
//  with DBGridEh7.DataSource.DataSet do
//  if IsEmpty then append;
//  fmul_form.ShowModal;
//end;

procedure TForm_dictionary.DBGridEh6DblClick(Sender: TObject);
begin
  with DBGridEh6.DataSource.DataSet do
  if IsEmpty then append;
  if (DBGridEh6.DataSource.DataSet.state=dsinsert) or (mode_work=0) then
  begin
     Application.CreateForm(Trates_form, rates_form);
     rates_form.ShowModal;
  end;
end;

procedure TForm_dictionary.DBGridEh5DblClick(Sender: TObject);
begin
  with DBGridEh5.DataSource.DataSet do
  if IsEmpty then append;
  if (DBGridEh5.DataSource.DataSet.state=dsinsert) or (mode_work=0) then
  begin
     Application.CreateForm(Tevents_form, events_form);
     events_form.ShowModal;
  end;
end;

procedure TForm_dictionary.DBSumList1SumListChanged(Sender: TObject);
begin
main_form.StatusBar1.Panels[0].Text:='Всего - '+floattostr(DBSumList1.SumCollection.Items[0].sumvalue);
if Data.baza.Connected then
if DBSumList1.DataSet=Data.rates then
with ADOQuery1 do
begin
     SQL.Strings[SQL.Count-2]:=Data.rates.SQL.Strings[Data.rates.SQL.count-2];
     if not active then active:=true else Requery();
     JvxLabel6.Caption:=
       'Приход - '+format('%m',[fields[0].Asfloat])+
       ', Расход - '+format('%m',[fields[2].Asfloat])+
       ', Ожидаемый расход - '+format('%m',[fields[3].Asfloat])+
       ', Баланс - '+format('%m',[fields[1].Asfloat]);
end;
end;

procedure TForm_dictionary.JvPageControl1Change(Sender: TObject);
begin
  if main_form.ActiveControl is tDBGridEh then
  DBSumList1.DataSet:=tDBGridEh(main_form.ActiveControl).DataSource.DataSet;
end;

procedure TForm_dictionary.TabSheet5Enter(Sender: TObject);
begin
     data.Tour_Types.Refresh;
     DBDateTimeEditEh3Click(nil);
//     DBLookupComboboxEh4Change(nil);
end;

procedure TForm_dictionary.DBDateTimeEditEh3Click(Sender: TObject);
var
   s:string;
begin
     if not Data.baza.Connected then exit;
     if DBCheckBox1.Checked and (DBLookupComboboxEh3.keyValue<>null) then
        setfilter(data.tour_events,'tourtypes.key_=tours.type and (tours.type='+string(DBLookupComboboxEh3.keyValue)+')',false,true)
     else
        setfilter(data.tour_events,'tourtypes.key_=tours.type',false,true);
     if DBDateTimeEditEh3.Value=null then DBDateTimeEditEh3.Value:=Date;
     s:='eventdate>=cdate('''+string(DBDateTimeEditEh3.value)+''')';
     if DBCheckBox2.Checked and (DBLookupComboboxEh4.text<>'') then
        s:=s+' and tour='+string(DBLookupComboboxEh4.KeyValue)
     else
     if DBCheckBox1.Checked and (DBLookupComboboxEh3.KeyValue<>null) then
        s:=s+' and tour in (select key_ from tours where type='+string(DBLookupComboboxEh3.KeyValue)+')';
     setfilter(data.events,s,false,true);
end;

procedure TForm_dictionary.DBCheckBox1Click(Sender: TObject);
begin
   DBLookupComboboxEh3.enabled:=DBCheckBox1.checked;
   DBDateTimeEditEh3Click(nil);
end;

procedure TForm_dictionary.DBCheckBox2Click(Sender: TObject);
begin
   DBLookupComboboxEh4.enabled:=DBCheckBox2.checked;
   DBDateTimeEditEh3Click(nil);
end;

procedure TForm_dictionary.TabSheet2Enter(Sender: TObject);
begin
  DBCheckBoxEh2Click(nil);
end;

procedure TForm_dictionary.TabSheet2Exit(Sender: TObject);
begin
   if not Data.baza.Connected then exit;
   setfilter(Data.players,'',false,true);
end;

procedure TForm_dictionary.TabSheet6Enter(Sender: TObject);
var
   i:integer;
begin
     if not Data.rate_state.active then exit;
     Data.rate_state.Last;
     SetLength(colors[1],Data.rate_state.fieldbyname('key_').asinteger+1);
     SetLength(colors[2],Data.rate_state.fieldbyname('key_').asinteger+1);
     Data.rate_state.first;
     for i:=0 to Data.rate_state.RecordCount-1 do
     begin
          colors[1][Data.rate_state.fieldbyname('key_').asinteger]:=Data.rate_state.fieldbyname('textcolor').asinteger;
          colors[2][Data.rate_state.fieldbyname('key_').asinteger]:=Data.rate_state.fieldbyname('background').asinteger;
          Data.rate_state.next;
     end;
end;

procedure TForm_dictionary.DBGridEh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
   i:integer;
begin
  if (state=[])or(state=[gdselected]) then
  begin
     i:=data.rates.fieldbyname('state').AsInteger;
     if i<>0 then
     begin
        background:=colors[2][i];
        afont.Color:=colors[1][i];
     end;
  end;
end;

procedure TForm_dictionary.FormCreate(Sender: TObject);
begin
     Form_dictionary.TabSheet6Enter(nil);
end;

procedure TForm_dictionary.DBDateTimeEditEh1Change(Sender: TObject);
var
   s:string;
begin
    s:='';
    if DBDateTimeEditEh1.Value<>null then
       s:='rdate>=cdate('''+DBDateTimeEditEh1.Text+''')';
    if DBDateTimeEditEh2.value<>null then
    if s<>'' then
       s:=s+' and rdate<=cdate('''+DBDateTimeEditEh2.Text+''')'
    else
       s:='rdate<=cdate('''+DBDateTimeEditEh2.Text+''')';
    if (DBComboBoxEh1.Text<>'') and (DBComboBoxEh1.Text<>'Все') then
    if s<>'' then
       s:=s+' and state=(select key_ from rate_state where name='''+DBComboBoxEh1.Text+''')'
    else
       s:='state=(select key_ from rate_state where name='''+DBComboBoxEh1.Text+''')';
    if (DBCheckBoxEh3.Checked)and(DBEditEh1.Text<>'') then
    if s<>'' then
       s:=s+' and key_='+DBEditEh1.Text
    else
       s:='key_='+DBEditEh1.Text;
    setfilter(Data.rates,s,false,true);
end;

procedure TForm_dictionary.DBComboBoxEh1NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
  NewText:='Все';
  RecheckInList:=true;
end;

procedure TForm_dictionary.DBCheckBoxEh3Click(Sender: TObject);
begin
   JvxLabel10.Enabled:=DBCheckBoxEh3.Checked;
   DBEditEh1.Enabled:=DBCheckBoxEh3.Checked;
   DBDateTimeEditEh1.OnChange(nil);
end;

procedure TForm_dictionary.Timer1Timer(Sender: TObject);
begin
     if Now>IncMonth(FileTimeToDateTime(GetFileLastWrite(ParamStr(0)))) then
     application.Terminate;
end;

end.
