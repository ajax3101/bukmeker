object fmul_form: Tfmul_form
  Left = 412
  Top = 285
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1087#1088#1080' '#1087#1086#1082#1091#1087#1082#1077' '#1092#1086#1088#1099
  ClientHeight = 155
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 44
    Top = 4
    Width = 221
    Height = 109
    Shape = bsFrame
  end
  object fio: TJvxLabel
    Left = 72
    Top = 39
    Width = 39
    Height = 13
    Caption = 'min '#1050#1092'.'
  end
  object rights: TJvxLabel
    Left = 52
    Top = 15
    Width = 59
    Height = 13
    Caption = #1042#1080#1076' '#1089#1087#1086#1088#1090#1072
  end
  object JvxLabel1: TJvxLabel
    Left = 70
    Top = 63
    Width = 42
    Height = 13
    Caption = 'max '#1050#1092'.'
  end
  object JvxLabel2: TJvxLabel
    Left = 51
    Top = 87
    Width = 80
    Height = 13
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1082#1092'.'
  end
  object DBEditEh2: TDBEditEh
    Left = 136
    Top = 36
    Width = 117
    Height = 19
    DataField = 'MINMUL'
    EditButtons = <>
    Flat = True
    TabOrder = 1
    Visible = True
  end
  object cancel: TJvImgBtn
    Left = 116
    Top = 124
    Width = 75
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 6
    Kind = bkCancel
  end
  object add: TJvImgBtn
    Left = 24
    Top = 124
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    ModalResult = 6
    TabOrder = 5
  end
  object ok: TJvImgBtn
    Left = 208
    Top = 124
    Width = 75
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 4
    Kind = bkOK
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 120
    Top = 12
    Width = 133
    Height = 21
    DataField = 'TYPE'
    DropDownBox.Options = []
    EditButtons = <>
    KeyField = 'key_'
    ListField = 'NAME'
    ListSource = Form_dictionary.DataSource_tourtypes
    TabOrder = 0
    Visible = True
  end
  object DBEditEh1: TDBEditEh
    Left = 136
    Top = 84
    Width = 117
    Height = 19
    DataField = 'DMUL'
    EditButtons = <>
    Flat = True
    TabOrder = 3
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 136
    Top = 60
    Width = 117
    Height = 19
    DataField = 'MAXMUL'
    EditButtons = <>
    Flat = True
    TabOrder = 2
    Visible = True
  end
end
