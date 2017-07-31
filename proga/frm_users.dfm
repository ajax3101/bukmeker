object users_form: Tusers_form
  Left = 206
  Top = 103
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  ClientHeight = 124
  ClientWidth = 339
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
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 4
    Width = 321
    Height = 85
    Shape = bsFrame
  end
  object fio: TJvxLabel
    Left = 36
    Top = 11
    Width = 31
    Height = 11
    Caption = #1060'.'#1048'.'#1054'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Serif'
    Font.Style = []
    ParentFont = False
  end
  object rights: TJvxLabel
    Left = 16
    Top = 39
    Width = 77
    Height = 13
    Caption = #1055#1088#1072#1074#1072' '#1076#1086#1089#1090#1091#1087#1072
  end
  object pass: TJvxLabel
    Left = 32
    Top = 67
    Width = 40
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object DBEditEh1: TDBEditEh
    Left = 96
    Top = 64
    Width = 145
    Height = 19
    DataField = 'UPASSWORD'
    DataSource = Form_dictionary.DataSource_users
    EditButtons = <>
    Flat = True
    PasswordChar = '*'
    TabOrder = 2
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 96
    Top = 8
    Width = 217
    Height = 19
    DataField = 'NAME'
    DataSource = Form_dictionary.DataSource_users
    EditButtons = <>
    Flat = True
    TabOrder = 0
    Visible = True
  end
  object cancel: TJvImgBtn
    Left = 240
    Top = 96
    Width = 75
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 5
    Kind = bkCancel
  end
  object add: TJvImgBtn
    Left = 20
    Top = 96
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    ModalResult = 6
    TabOrder = 4
  end
  object ok: TJvImgBtn
    Left = 128
    Top = 96
    Width = 75
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 3
    Kind = bkOK
  end
  object DBComboBoxEh1: TDBComboBoxEh
    Left = 96
    Top = 36
    Width = 121
    Height = 19
    DataField = 'RIGHTS'
    DataSource = Form_dictionary.DataSource_users
    EditButtons = <>
    Flat = True
    Items.Strings = (
      #1040#1044#1052#1048#1053#1048#1057#1058#1056#1040#1058#1054#1056
      #1054#1055#1045#1056#1040#1058#1054#1056)
    TabOrder = 1
    Visible = True
  end
end
