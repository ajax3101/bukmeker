object tours_form: Ttours_form
  Left = 206
  Top = 109
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1057#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1103
  ClientHeight = 101
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 4
    Width = 321
    Height = 61
    Shape = bsFrame
  end
  object fio: TJvxLabel
    Left = 24
    Top = 39
    Width = 52
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object rights: TJvxLabel
    Left = 24
    Top = 15
    Width = 59
    Height = 13
    Caption = #1042#1080#1076' '#1089#1087#1086#1088#1090#1072
  end
  object DBEditEh2: TDBEditEh
    Left = 92
    Top = 36
    Width = 217
    Height = 19
    DataField = 'NAME'
    DataSource = Form_dictionary.DataSource_tours
    EditButtons = <>
    Flat = True
    TabOrder = 1
    Visible = True
  end
  object cancel: TJvImgBtn
    Left = 233
    Top = 72
    Width = 75
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 4
    Kind = bkCancel
  end
  object add: TJvImgBtn
    Left = 17
    Top = 72
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    ModalResult = 6
    TabOrder = 2
  end
  object ok: TJvImgBtn
    Left = 129
    Top = 72
    Width = 75
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 3
    Kind = bkOK
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 92
    Top = 12
    Width = 121
    Height = 21
    DataField = 'TYPE'
    DataSource = Form_dictionary.DataSource_tours
    DropDownBox.Options = []
    EditButtons = <>
    KeyField = 'key_'
    ListField = 'NAME'
    ListSource = Form_dictionary.DataSource_tourtypes
    TabOrder = 0
    Visible = True
  end
end
