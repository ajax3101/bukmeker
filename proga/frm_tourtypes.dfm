object tourtypes_form: Ttourtypes_form
  Left = 208
  Top = 120
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1042#1080#1076#1099' '#1089#1087#1086#1088#1090#1072
  ClientHeight = 206
  ClientWidth = 390
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
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 4
    Top = 64
    Width = 381
    Height = 113
    Shape = bsFrame
  end
  object Bevel1: TBevel
    Left = 4
    Top = 4
    Width = 381
    Height = 57
    Shape = bsFrame
  end
  object fio: TJvxLabel
    Left = 8
    Top = 15
    Width = 52
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object rights: TJvxLabel
    Left = 8
    Top = 39
    Width = 154
    Height = 13
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1087#1086#1082#1091#1087#1082#1072' '#1092#1086#1088#1099
    Enabled = False
  end
  object JvxLabel1: TJvxLabel
    Left = 8
    Top = 67
    Width = 129
    Height = 13
    Caption = #1058#1080#1087#1099' '#1074#1086#1079#1084#1086#1078#1085#1099#1093' '#1089#1090#1072#1074#1086#1082
  end
  object JvxLabel2: TJvxLabel
    Left = 252
    Top = 39
    Width = 66
    Height = 13
    Caption = #1064#1072#1075' '#1087#1086#1082#1091#1087#1082#1080
    Enabled = False
  end
  object DBEditEh2: TDBEditEh
    Left = 76
    Top = 12
    Width = 285
    Height = 19
    DataField = 'NAME'
    DataSource = Form_dictionary.DataSource_tourtypes
    EditButtons = <>
    Flat = True
    TabOrder = 0
    Visible = True
  end
  object cancel: TJvImgBtn
    Left = 280
    Top = 180
    Width = 75
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 6
    Kind = bkCancel
  end
  object add: TJvImgBtn
    Left = 36
    Top = 180
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    ModalResult = 6
    TabOrder = 4
  end
  object ok: TJvImgBtn
    Left = 160
    Top = 180
    Width = 75
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 5
    Kind = bkOK
  end
  object CheckListBox1: TCheckListBox
    Left = 8
    Top = 80
    Width = 365
    Height = 89
    OnClickCheck = CheckListBox1ClickCheck
    Columns = 2
    ItemHeight = 13
    TabOrder = 3
  end
  object DBEditEh1: TDBEditEh
    Left = 324
    Top = 36
    Width = 40
    Height = 19
    DataField = 'FDPOINT'
    DataSource = Form_dictionary.DataSource_tourtypes
    EditButtons = <>
    Enabled = False
    Flat = True
    TabOrder = 2
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 172
    Top = 36
    Width = 40
    Height = 19
    DataField = 'MAXFDPOINT'
    DataSource = Form_dictionary.DataSource_tourtypes
    EditButtons = <>
    Enabled = False
    Flat = True
    TabOrder = 1
    Visible = True
  end
  object GroupBox1: TGroupBox
    Left = 28
    Top = 376
    Width = 381
    Height = 101
    Caption = #1050#1086#1101#1092#1092'. '#1087#1088#1080' '#1087#1086#1082#1091#1087#1082#1077' '#1092#1086#1088#1099
    TabOrder = 7
    Visible = False
    object JvxLabel3: TJvxLabel
      Left = 7
      Top = 75
      Width = 43
      Height = 13
      Caption = #1064#1072#1075' '#1050#1092'.'
    end
    object JvxLabel4: TJvxLabel
      Left = 8
      Top = 47
      Width = 42
      Height = 13
      Caption = 'max '#1050#1092'.'
    end
    object JvxLabel5: TJvxLabel
      Left = 8
      Top = 19
      Width = 39
      Height = 13
      Caption = 'min '#1050#1092'.'
    end
    object DBEditEh4: TDBEditEh
      Left = 52
      Top = 72
      Width = 40
      Height = 19
      EditButtons = <>
      Flat = True
      TabOrder = 0
      Visible = True
    end
    object DBEditEh5: TDBEditEh
      Left = 52
      Top = 44
      Width = 40
      Height = 19
      EditButtons = <>
      Flat = True
      TabOrder = 1
      Visible = True
    end
    object DBEditEh6: TDBEditEh
      Left = 52
      Top = 16
      Width = 40
      Height = 19
      EditButtons = <>
      Flat = True
      TabOrder = 2
      Visible = True
    end
    object DBGridEh2: TDBGridEh
      Left = 124
      Top = 16
      Width = 249
      Height = 81
      Align = alCustom
      AllowedOperations = []
      AutoFitColWidths = True
      Ctl3D = True
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch]
      ParentCtl3D = False
      SortLocal = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
    end
    object JvImgBtn1: TJvImgBtn
      Left = 100
      Top = 32
      Width = 20
      Height = 20
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 4
      Images = ImageList1
      ImageIndex = 0
    end
    object JvImgBtn2: TJvImgBtn
      Left = 100
      Top = 52
      Width = 20
      Height = 20
      Hint = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 5
      Images = ImageList1
      ImageIndex = 1
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Data.baza
    Parameters = <>
    Left = 76
    Top = 264
  end
  object ImageList1: TImageList
    Left = 132
    Top = 264
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      E003E003E0031042104210421042000000000000000010421042104210421042
      1042104210421042104210420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E003E003E003E003E003
      E003E003E003E003E003E003E0031042000000000000005C005C005C005C005C
      005C005C005C005C005C005C1042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E003E003E003E003E003
      E003E003E003E003E003E003E0031042000000000000005C005C005C005C005C
      005C005C005C005C005C005C1042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      E003E003E003FF7FFF7FFF7FFF7F0000000000000000007C007C007C007C007C
      007C007C007C007C007C007C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FC3FFFFF00000000FC3FFFFF00000000FC3FFFFF00000000FC3FFFFF00000000
      C003C00700000000C001C00300000000C001C00300000000C003C00700000000
      FC3FFFFF00000000FC3FFFFF00000000FC3FFFFF00000000FC3FFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object fmul: TADOQuery
    Connection = Data.baza
    DataSource = Form_dictionary.DataSource_tourtypes
    Parameters = <
      item
        Name = 'key_'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select key_ as code,type,minmul,maxmul,dmul '
      'from fmul'
      'where type=:key_ '
      '   ')
    Left = 216
    Top = 128
  end
end