unit frm_data;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TData = class(TDataModule)
    baza: TADOConnection;
    tours: TADOQuery;
    tourtypes: TADOQuery;
    players: TADOQuery;
    users: TADOQuery;
    events: TADOQuery;
    rates: TADOQuery;
    eventskey_: TAutoIncField;
    eventsEVENTDATE: TDateTimeField;
    eventsEVENTTIME: TDateTimeField;
    eventsTOUR: TIntegerField;
    eventsFP: TIntegerField;
    eventsSP: TIntegerField;
    eventsWF: TFloatField;
    eventsWP: TFloatField;
    eventsWS: TFloatField;
    eventsFFV: TFloatField;
    eventsFFK: TFloatField;
    eventsFSV: TFloatField;
    eventsFSK: TFloatField;
    eventsTV: TFloatField;
    eventsTVM: TFloatField;
    eventsTVL: TFloatField;
    eventsTFV: TFloatField;
    eventsTFL: TFloatField;
    eventsTFM: TFloatField;
    eventsTSV: TFloatField;
    eventsTSL: TFloatField;
    eventsTSM: TFloatField;
    eventsRESULT1: TFloatField;
    eventsRESULT2: TFloatField;
    eventsCANCELED: TBooleanField;
    events_fp: TStringField;
    events_sp: TStringField;
    playerskey_: TAutoIncField;
    playersNAME: TWideStringField;
    tourskey_: TAutoIncField;
    toursTYPE: TIntegerField;
    toursNAME: TWideStringField;
    tours_type: TStringField;
    ratetypes: TADOQuery;
    userskey_: TAutoIncField;
    usersNAME: TWideStringField;
    usersRIGHTS: TWideStringField;
    usersUPASSWORD: TWideStringField;
    rateskey_: TAutoIncField;
    ratesCODE: TWideStringField;
    ratesRDATE: TDateTimeField;
    ratesRTIME: TDateTimeField;
    ratesRATESUMM: TFloatField;
    ratesRATEMUL: TFloatField;
    ratesWINRATEMUL: TFloatField;
    ratesSTATE: TIntegerField;
    tourtypeskey_: TAutoIncField;
    tourtypesNAME: TWideStringField;
    tourtypesMAXFDPOINT: TFloatField;
    tourtypesFDPOINT: TFloatField;
    rate_state: TADOQuery;
    rate_statekey_: TAutoIncField;
    rate_statename: TWideStringField;
    rate_statetextcolor: TIntegerField;
    rate_statebackground: TIntegerField;
    Tour_Types: TADOQuery;
    tour_events: TADOQuery;
    events_tour: TStringField;
    eventsrez: TStringField;
    procedure eventsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function setfilter(d:tdataset;f:string;checkempty:boolean=false;setactive:boolean=true):boolean;

var
  Data: TData;

implementation

{$R *.dfm}
function setfilter(d:tdataset;f:string;checkempty:boolean=false;setactive:boolean=true):boolean;
begin
     result:=false;
     if d is tadoquery then
     with d as tadoquery do
     begin
         if (((f='') or (f='   ')) and (SQL.Strings[SQL.Count-2]='   ')) or
            (SQL.Strings[SQL.Count-2]='where '+f)or(SQL.Strings[SQL.Count-2]=f) then
            begin
                 result:=true;
                 exit;
            end;
         close;
         filter:='';
         filtered:=false;
         if (f='') or (f='   ') then
            SQL.Strings[SQL.Count-2]:='   '
         else
            if ansilowercase(copy(f,1,6))<>'where ' then
               SQL.Strings[SQL.Count-2]:='where '+f
            else
               SQL.Strings[SQL.Count-2]:=f;
         if setactive then
         try
            open;
            if checkempty then
               if recordcount<1 then
                  raise Exception.Create('Error!!!');
            result:=true;
         except
            close;
            SQL.Strings[SQL.Count-2]:='   ';
            try
            open;
            except
            halt(1);
            end
         end;
     end;
end;
procedure TData.eventsCalcFields(DataSet: TDataSet);
begin
     if DataSet.FieldByName('result1').asstring<>'' then
     if DataSet.FieldByName('result2').asstring<>'' then
     DataSet.FieldByName('rez').asstring:=DataSet.FieldByName('result1').asstring+':'+DataSet.FieldByName('result2').asstring;
end;

end.
