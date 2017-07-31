object frm_login: Tfrm_login
  Left = 210
  Top = 110
  Hint = #1044#1083#1103' '#1074#1093#1086#1076#1072' '#1089#1080#1089#1090#1077#1084#1091' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074#1074#1077#1089#1090#1080' '#1080#1084#1103' '#1080' '#1087#1072#1088#1086#1083#1100
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1042#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1091
  ClientHeight = 129
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    244
    129)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 36
    Width = 229
    Height = 57
    Shape = bsFrame
  end
  object rights: TJvxLabel
    Left = 28
    Top = 47
    Width = 24
    Height = 13
    Caption = #1048#1084#1103
  end
  object pass: TJvxLabel
    Left = 20
    Top = 71
    Width = 40
    Height = 13
    Hint = #1055#1072#1088#1086#1083#1100
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object JvxLabel1: TJvxLabel
    Left = 8
    Top = 2
    Width = 227
    Height = 32
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1048#1084#1103' '#1080' '#1055#1072#1088#1086#1083#1100' '#13#10#1076#1083#1103' '#1074#1093#1086#1076#1072' '#1074' '#1089#1080#1089#1090#1077#1084#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
  end
  object DBEditEh1: TDBEditEh
    Left = 84
    Top = 68
    Width = 145
    Height = 21
    EditButtons = <>
    PasswordChar = '*'
    TabOrder = 1
    Visible = True
  end
  object ok: TJvImgBtn
    Left = 16
    Top = 100
    Width = 97
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 2
    Kind = bkOK
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 84
    Top = 44
    Width = 145
    Height = 19
    AutoSize = False
    DropDownBox.ColumnDefValues.EndEllipsis = True
    DropDownBox.Sizable = True
    EditButtons = <>
    Flat = True
    KeyField = 'key_'
    ListField = 'NAME'
    ListSource = Form_dictionary.DataSource_users
    TabOrder = 0
    Visible = True
    OnExit = DBLookupComboboxEh1Exit
  end
  object cancel: TJvImgBtn
    Left = 132
    Top = 100
    Width = 88
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 3
    Kind = bkCancel
  end
  object Edit1: TEdit
    Left = 312
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object JvFormStorage1: TJvFormStorage
    Options = [fpPosition]
    StoredProps.Strings = (
      'Edit1.Text')
    StoredValues = <>
    Left = 36
    Top = 24
  end
end
