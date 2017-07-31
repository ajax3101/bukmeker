unit frm_rate_state;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DB, StdCtrls, ExtCtrls, JvCtrls, JvComponent,
  JvxCtrls;

type
  Trate_state_form = class(TForm)
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    rights: TJvxLabel;
    JvxLabel1: TJvxLabel;
    ok: TJvImgBtn;
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rate_state_form: Trate_state_form;

implementation

uses frm_data;

{$R *.dfm}

procedure Trate_state_form.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if state=[] then
  begin
     background:=Data.rate_state.fieldbyname('background').AsInteger;
     afont.Color:=Data.rate_state.fieldbyname('textcolor').AsInteger;
  end;
end;

procedure Trate_state_form.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
     ColorBox2.Selected:=Data.rate_state.fieldbyname('background').AsInteger;
     ColorBox1.Selected:=Data.rate_state.fieldbyname('textcolor').AsInteger;
end;

procedure Trate_state_form.ColorBox1Change(Sender: TObject);
begin
     data.rate_state.DisableControls;
     Data.rate_state.edit;
     Data.rate_state.fieldbyname('textcolor').AsInteger:=ColorBox1.Selected;
     Data.rate_state.post;
     data.rate_state.EnableControls;
end;

procedure Trate_state_form.ColorBox2Change(Sender: TObject);
begin
     data.rate_state.DisableControls;
     Data.rate_state.edit;
     Data.rate_state.fieldbyname('background').AsInteger:=ColorBox2.Selected;
     Data.rate_state.post;
     data.rate_state.EnableControls;
end;

end.
