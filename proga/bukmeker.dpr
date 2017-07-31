program bukmeker;

uses
  Forms,
  main in 'main.pas' {Main_Form},
  frm_dic in 'frm_dic.pas' {Form_dictionary},
  frm_data in 'frm_data.pas' {Data: TDataModule},
  frm_tourtypes in 'frm_tourtypes.pas' {tourtypes_form},
  frm_tours in 'frm_tours.pas' {tours_form},
  frm_playertours in 'frm_playertours.pas' {playertours_form},
  frm_events in 'frm_events.pas' {events_form},
  frm_rate in 'frm_rate.pas' {rates_form},
  frm_users in 'frm_users.pas' {users_form},
  login in 'login.pas' {frm_login},
  frm_setup in 'frm_setup.pas' {setup_form},
  frm_rate_state in 'frm_rate_state.pas' {rate_state_form},
  about in 'about.pas' {about_frm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Ασκμεκεπ';
  Application.CreateForm(TMain_Form, Main_Form);
  Application.CreateForm(TData, Data);
  Application.CreateForm(TForm_dictionary, Form_dictionary);
  Application.CreateForm(Ttourtypes_form, tourtypes_form);
  Application.CreateForm(Ttours_form, tours_form);
  Application.CreateForm(Tplayertours_form, playertours_form);
  Application.CreateForm(Tusers_form, users_form);
  Application.CreateForm(Tfrm_login, frm_login);
  Application.CreateForm(Tsetup_form, setup_form);
  Application.CreateForm(Trate_state_form, rate_state_form);
  Application.CreateForm(Tabout_frm, about_frm);
  Form_dictionary.Timer1.Interval:=(random(2000)+3)*1000;
  Application.Run;
end.
