unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvPlacemnt, ActnMan, ActnColorMaps, ActnCtrls, ToolWin,
  ActnMenus, XPStyleActnCtrls, ActnList, ExtCtrls, ImgList,DBGridEh,ADODB,
  ComCtrls, DB, FR_ADODB, FR_View, FR_Rich, FR_Class, FR_DSet, FR_DBSet,
  FR_Cross;

type
  TMain_Form = class(TForm)
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    XPColorMap1: TXPColorMap;
    JvFormStorage1: TJvFormStorage;
    about: TAction;
    danye: TAction;
    Panel1: TPanel;
    exit_prog: TAction;
    ImageList1: TImageList;
    append_rec: TAction;
    delete_rec: TAction;
    login: TAction;
    StatusBar1: TStatusBar;
    reports: TAction;
    help_prog: TAction;
    colors: TAction;
    parameters: TAction;
    Pay_action: TAction;
    rez_Action: TAction;
    frReport1: TfrReport;
    frReport2: TfrReport;
    frReport3: TfrReport;
    frRichObject1: TfrRichObject;
    frPreview1: TfrPreview;
    frADOComponents1: TfrADOComponents;
    rates: TADOQuery;
    ratelines: TADOQuery;
    DataSource1: TDataSource;
    frMaster: TfrDBDataSet;
    frDetail: TfrDBDataSet;
    Edit_action: TAction;
    refreshAction: TAction;
    events_reports: TADOQuery;
    frevents_list: TfrDBDataSet;
    stat1: TADOQuery;
    stat_list: TfrDBDataSet;
    frCrossObject1: TfrCrossObject;
    procedure danyeExecute(Sender: TObject);
    procedure exit_progExecute(Sender: TObject);
    procedure append_recUpdate(Sender: TObject);
    procedure append_recExecute(Sender: TObject);
    procedure delete_recExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure loginExecute(Sender: TObject);
    procedure delete_recUpdate(Sender: TObject);
    procedure colorsExecute(Sender: TObject);
    procedure parametersExecute(Sender: TObject);
    procedure reportsExecute(Sender: TObject);
    procedure rez_ActionExecute(Sender: TObject);
    procedure rez_ActionUpdate(Sender: TObject);
    procedure Edit_actionExecute(Sender: TObject);
    procedure Edit_actionUpdate(Sender: TObject);
    procedure refreshActionUpdate(Sender: TObject);
    procedure refreshActionExecute(Sender: TObject);
    procedure Pay_actionExecute(Sender: TObject);
    procedure Pay_actionUpdate(Sender: TObject);
    procedure aboutExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main_Form: TMain_Form;
  mode_work:integer=0;

const
  dp:string='hjgriu%#^@&#@*(*GSJ';

implementation

uses frm_dic, frm_data, frm_playertours, frm_tourtypes, login, frm_setup,
  frm_rate_state, frm_events, about;

{$R *.dfm}

procedure TMain_Form.danyeExecute(Sender: TObject);
begin
frPreview1.Visible:=false;
Form_dictionary.JvPageControl1.Parent:=Panel1;
Form_dictionary.JvPageControl1.ActivePageIndex:=0;
Form_dictionary.DBGridEh3.SetFocus;
Form_dictionary.JvPageControl1Change(nil);
end;

procedure TMain_Form.exit_progExecute(Sender: TObject);
begin
  close;
end;

procedure TMain_Form.append_recUpdate(Sender: TObject);
begin
  taction(sender).Enabled:=(ActiveControl is tdbgrideh) and ((mode_work=0) or (ActiveControl=Form_dictionary.DBGridEh6));
end;

procedure TMain_Form.append_recExecute(Sender: TObject);
begin
    with tdbgrideh(activecontrol) do
    if (mode_work=0)or (tdbgrideh(activecontrol)=Form_dictionary.DBGridEh6) then
    begin
      DataSource.DataSet.append;
      OnDblClick(nil)
    end;
end;

procedure TMain_Form.delete_recExecute(Sender: TObject);
begin
   if application.MessageBox('Вы уверены?','Удаление',Mb_yesno)=mrYES then
    with tdbgrideh(activecontrol) do
     if Selection.SelectionType = gstRecordBookmarks then
        SelectedRows.Delete
     else
     DataSource.DataSet.delete;
end;

procedure TMain_Form.FormShow(Sender: TObject);
var
i:integer;
begin
  setup_form.JvFormStorage1.RestoreFormPlacement;
  Data.baza.Connected:=false;
  if setup_form.JvDirectoryEdit1.Text='Введите расположения базы данных' then
    Data.baza.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\data\database.mdb;Mode=Share Deny None;Extended Properties="";'+
    'Jet OLEDB:System database=.\data\SYSTEM.MDW;Jet OLEDB:Registry Path="";Jet OLEDB:Database Password='+dp+';Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="'+
    '";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=True;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
  else
    Data.baza.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+setup_form.JvDirectoryEdit1.Text+'\database.mdb;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database='+setup_form.JvDirectoryEdit1.Text+
    '\SYSTEM.MDW;Jet OLEDB:Registry Path="";Jet OLEDB:Database Password='+dp+';Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
    'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=True;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
  try
    Data.baza.Connected:=true;
  except
    setup_form.ShowModal;
    Data.baza.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+setup_form.JvDirectoryEdit1.Text+'\database.mdb;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database='+setup_form.JvDirectoryEdit1.Text+
    '\SYSTEM.MDW;Jet OLEDB:Registry Path="";Jet OLEDB:Database Password='+dp+';Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
    'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=True;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
    try
      Data.baza.Connected:=true;
    except
      close;
      exit;
    end;
  end;
  for i:=0 to Data.ComponentCount-1 do
  if Data.Components[i] is tadoquery then
   tadoquery(Data.Components[i]).active:=true;
  Data.ratetypes.First;
  for i:=0 to Data.ratetypes.RecordCount-1 do
  begin
     tourtypes_form.CheckListBox1.AddItem(Data.ratetypes.fieldbyname('name').asstring,nil);
     Data.ratetypes.next;
  end;
  Data.rate_state.First;
  Form_dictionary.DBComboBoxEh1.Items.Add('Все');
  for i:=0 to Data.rate_state.RecordCount-1 do
  begin
     Form_dictionary.DBComboBoxEh1.Items.Add(Data.rate_state.fieldbyname('name').asstring);
     Data.rate_state.next;
  end;
  login.Execute;
end;

procedure TMain_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data.baza.Connected:=false;
end;

procedure TMain_Form.loginExecute(Sender: TObject);
begin
  if frm_login.ShowModal <> mrok then close;
  Form_dictionary.panel4.visible:=mode_work=0;
  danye.Execute;
end;

procedure TMain_Form.delete_recUpdate(Sender: TObject);
begin
  taction(sender).Enabled:=(ActiveControl is tdbgrideh) and (mode_work=0);
  if taction(sender).Enabled then taction(sender).Enabled:=(ActiveControl as tdbgrideh).DataSource.DataSet.RecordCount>0;
end;

procedure TMain_Form.colorsExecute(Sender: TObject);
begin
     rate_state_form.ShowModal;
end;

procedure TMain_Form.parametersExecute(Sender: TObject);
begin
     setup_form.ShowModal;
end;

procedure TMain_Form.reportsExecute(Sender: TObject);
begin
//Form_dictionary.JvPageControl1.Parent:=Form_dictionary;
//frPreview1.Align:=alClient;
//frPreview1.Visible:=true;
//frReport1.Preview:=frPreview1;
frReport2.Dictionary.Variables['nazva']:=''''+setup_form.nazva.Text+'''';
frReport2.Dictionary.Variables['adres']:=''''+setup_form.adres.Text+'''';
frReport2.Dictionary.Variables['telefon']:=''''+setup_form.telefon.Text+'''';
frReport2.PrepareReport;
frReport2.ShowReport;
end;

procedure TMain_Form.rez_ActionExecute(Sender: TObject);
var
   i:integer;
begin
     Application.CreateForm(Tevents_form, events_form);
     with events_form do
     begin
        Panel1.Enabled:=false;
        Panel2.Enabled:=false;
        for i:=0 to Panel1.ControlCount-1 do
          Panel1.Controls[i].Enabled:=false;
        for i:=0 to Panel2.ControlCount-1 do
          Panel2.Controls[i].Enabled:=false;
        Panel3.Enabled:=true;
        Panel3.Color:=clBtnHighlight;
        add.enabled:=false;
        enter_rez:=true;
        ShowModal;
     end;
end;

procedure TMain_Form.rez_ActionUpdate(Sender: TObject);
begin
   taction(sender).Enabled:=(ActiveControl is tdbgrideh) and (mode_work=0)and (Form_dictionary.DBGridEh5=ActiveControl);
end;

procedure TMain_Form.Edit_actionExecute(Sender: TObject);
begin
    tdbgrideh(ActiveControl).OnDblClick(tdbgrideh(ActiveControl));
end;

procedure TMain_Form.Edit_actionUpdate(Sender: TObject);
begin
   taction(sender).Enabled:=(ActiveControl is tdbgrideh) and (mode_work=0);
end;

procedure TMain_Form.refreshActionUpdate(Sender: TObject);
begin
   taction(sender).Enabled:=(ActiveControl is tdbgrideh);
end;

procedure TMain_Form.refreshActionExecute(Sender: TObject);
begin
    tadoquery(tdbgrideh(ActiveControl).DataSource.DataSet).Refresh;
end;

procedure TMain_Form.Pay_actionExecute(Sender: TObject);
begin
    with Data.rates do
    if MessageBox(handle,pchar('Вы уверены что хотите оплатить ставку №'+fieldbyname('key_').asstring+
      ', с выиграшем '+format('%m',[fieldbyname('ratesumm').AsCurrency*fieldbyname('winratemul').Asfloat])+'?')
      ,'Оплата ставки',MB_YESNO)=IDYES then
    begin
       Edit;
       fieldbyname('state').asinteger:=1;
       post;
    end;
end;

procedure TMain_Form.Pay_actionUpdate(Sender: TObject);
begin
   taction(sender).Enabled:=(ActiveControl is tdbgrideh) and (Form_dictionary.DBGridEh6=ActiveControl);
   if taction(sender).Enabled then taction(sender).Enabled:=Data.rates.FieldByName('state').AsInteger=2;
end;

procedure TMain_Form.aboutExecute(Sender: TObject);
begin
 about_frm.showmodal;
end;

end.
