object events_form: Tevents_form
  Left = 227
  Top = 147
  ActiveControl = DBDateTimeEditEh1
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1057#1086#1073#1099#1090#1080#1103
  ClientHeight = 282
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cancel: TJvImgBtn
    Left = 311
    Top = 256
    Width = 75
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 0
    Kind = bkCancel
  end
  object add: TJvImgBtn
    Left = 119
    Top = 256
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    ModalResult = 6
    TabOrder = 1
  end
  object ok: TJvImgBtn
    Left = 215
    Top = 256
    Width = 75
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 2
    Kind = bkOK
  end
  object Panel1: TPanel
    Left = 8
    Top = 4
    Width = 481
    Height = 97
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object JvxLabel3: TJvxLabel
      Left = 24
      Top = 14
      Width = 27
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object JvxLabel4: TJvxLabel
      Left = 156
      Top = 18
      Width = 35
      Height = 13
      Caption = #1042#1088#1077#1084#1103
    end
    object JvxLabel6: TJvxLabel
      Left = 200
      Top = 75
      Width = 75
      Height = 13
      Caption = #1057#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1103
    end
    object JvxLabel15: TJvxLabel
      Left = 16
      Top = 55
      Width = 59
      Height = 13
      Caption = #1042#1080#1076' '#1089#1087#1086#1088#1090#1072
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 72
      Top = 12
      Width = 76
      Height = 21
      DataField = 'EVENTDATE'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 0
      Visible = True
    end
    object DBDateTimeEditEh2: TDBDateTimeEditEh
      Left = 200
      Top = 12
      Width = 77
      Height = 21
      DataField = 'EVENTTIME'
      DataSource = Form_dictionary.DataSource_events
      EditButton.Style = ebsUpDownEh
      EditButtons = <>
      Kind = dtkTimeEh
      TabOrder = 1
      Visible = True
    end
    object sorevnovanie: TDBLookupComboboxEh
      Left = 284
      Top = 72
      Width = 189
      Height = 21
      DataField = 'TOUR'
      DataSource = Form_dictionary.DataSource_events
      DropDownBox.Sizable = True
      EditButtons = <>
      KeyField = 'tour_key'
      ListField = 'type_;name'
      ListFieldIndex = 1
      ListSource = DataSource2
      TabOrder = 2
      Visible = True
      OnChange = sorevnovanieChange
      OnClick = sorevnovanieClick
    end
    object vid_sporta: TDBLookupComboboxEh
      Left = 12
      Top = 72
      Width = 133
      Height = 21
      DropDownBox.Sizable = True
      EditButtons = <>
      KeyField = 'key_'
      ListField = 'NAME'
      ListSource = Form_dictionary.DataSource_tourtypes
      TabOrder = 3
      Visible = True
      OnChange = vid_sportaChange
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 104
    Width = 493
    Height = 149
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 4
    OnEnter = Panel2Enter
    object igrok: TJvxLabel
      Left = 76
      Top = 7
      Width = 87
      Height = 13
      Caption = #1050#1086#1084#1072#1085#1076#1072' / '#1080#1075#1088#1086#1082
    end
    object perviy: TJvxLabel
      Left = 12
      Top = 31
      Width = 8
      Height = 13
      Caption = '1'
    end
    object schet: TJvxLabel
      Left = 391
      Top = 7
      Width = 25
      Height = 13
      Caption = #1057#1095#1077#1090
    end
    object Bevel2: TBevel
      Left = 4
      Top = 4
      Width = 201
      Height = 81
      Shape = bsFrame
    end
    object fora: TJvxLabel
      Left = 247
      Top = 7
      Width = 31
      Height = 13
      Caption = #1060#1086#1088#1072
    end
    object JvxLabel1: TJvxLabel
      Left = 428
      Top = 32
      Width = 8
      Height = 13
      Caption = '>'
    end
    object JvxLabel2: TJvxLabel
      Left = 372
      Top = 32
      Width = 8
      Height = 13
      Caption = '<'
    end
    object JvxLabel8: TJvxLabel
      Left = 12
      Top = 59
      Width = 8
      Height = 13
      Caption = '2'
    end
    object JvxLabel9: TJvxLabel
      Left = 428
      Top = 60
      Width = 8
      Height = 13
      Caption = '>'
    end
    object JvxLabel10: TJvxLabel
      Left = 372
      Top = 60
      Width = 8
      Height = 13
      Caption = '<'
    end
    object Bevel3: TBevel
      Left = 208
      Top = 4
      Width = 105
      Height = 81
      Shape = bsFrame
    end
    object Bevel4: TBevel
      Left = 316
      Top = 4
      Width = 169
      Height = 81
      Shape = bsFrame
    end
    object JvxLabel11: TJvxLabel
      Left = 103
      Top = 95
      Width = 32
      Height = 13
      Caption = #1058#1086#1090#1072#1083
    end
    object JvxLabel12: TJvxLabel
      Left = 160
      Top = 120
      Width = 8
      Height = 13
      Caption = '>'
    end
    object JvxLabel13: TJvxLabel
      Left = 76
      Top = 120
      Width = 8
      Height = 13
      Caption = '<'
    end
    object Bevel5: TBevel
      Left = 4
      Top = 92
      Width = 233
      Height = 53
      Shape = bsFrame
    end
    object JvxLabel14: TJvxLabel
      Left = 303
      Top = 95
      Width = 8
      Height = 13
      Caption = '1'
    end
    object Bevel6: TBevel
      Left = 260
      Top = 92
      Width = 225
      Height = 53
      Shape = bsFrame
    end
    object JvxLabel17: TJvxLabel
      Left = 371
      Top = 95
      Width = 9
      Height = 13
      Caption = #1061
    end
    object JvxLabel18: TJvxLabel
      Left = 435
      Top = 95
      Width = 8
      Height = 13
      Caption = '2'
    end
    object igrok1: TDBLookupComboboxEh
      Left = 36
      Top = 28
      Width = 157
      Height = 21
      DataField = 'FP'
      DataSource = Form_dictionary.DataSource_events
      DropDownBox.Options = []
      DropDownBox.Sizable = True
      EditButtons = <>
      KeyField = 'code'
      ListField = 'NAME'
      ListSource = DataSource1
      TabOrder = 0
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 264
      Top = 28
      Width = 40
      Height = 21
      DataField = 'FFV'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object DBEditEh5: TDBEditEh
      Left = 328
      Top = 28
      Width = 40
      Height = 21
      DataField = 'TFL'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
    object DBEditEh6: TDBEditEh
      Left = 440
      Top = 28
      Width = 40
      Height = 21
      DataField = 'TFM'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
    object DBLookupComboboxEh4: TDBComboBoxEh
      Left = 216
      Top = 28
      Width = 40
      Height = 21
      AutoSelect = False
      DataField = 'FFK'
      DataSource = Form_dictionary.DataSource_events
      DropDownBox.Sizable = True
      EditButtons = <>
      TabOrder = 4
      Visible = True
      OnNotInList = DBLookupComboboxEh4NotInList
    end
    object DBLookupComboboxEh5: TDBComboBoxEh
      Left = 384
      Top = 28
      Width = 40
      Height = 21
      DataField = 'TFV'
      DataSource = Form_dictionary.DataSource_events
      DropDownBox.Sizable = True
      EditButtons = <>
      TabOrder = 5
      Visible = True
      OnNotInList = DBLookupComboboxEh5NotInList
    end
    object igrok2: TDBLookupComboboxEh
      Left = 36
      Top = 56
      Width = 157
      Height = 21
      DataField = 'SP'
      DataSource = Form_dictionary.DataSource_events
      DropDownBox.Options = []
      DropDownBox.Sizable = True
      EditButtons = <>
      KeyField = 'code'
      ListField = 'NAME'
      ListSource = DataSource1
      TabOrder = 6
      Visible = True
    end
    object DBEditEh1: TDBEditEh
      Left = 264
      Top = 56
      Width = 40
      Height = 21
      DataField = 'FSV'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 7
      Visible = True
    end
    object DBEditEh7: TDBEditEh
      Left = 328
      Top = 56
      Width = 40
      Height = 21
      DataField = 'TSL'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 8
      Visible = True
    end
    object DBEditEh8: TDBEditEh
      Left = 440
      Top = 56
      Width = 40
      Height = 21
      DataField = 'TSM'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 9
      Visible = True
    end
    object DBLookupComboboxEh7: TDBComboBoxEh
      Left = 216
      Top = 56
      Width = 40
      Height = 21
      DataField = 'FSK'
      DataSource = Form_dictionary.DataSource_events
      DropDownBox.Sizable = True
      EditButtons = <>
      TabOrder = 10
      Visible = True
      OnNotInList = DBLookupComboboxEh4NotInList
    end
    object DBLookupComboboxEh8: TDBComboBoxEh
      Left = 384
      Top = 56
      Width = 40
      Height = 21
      DataField = 'TSV'
      DataSource = Form_dictionary.DataSource_events
      DropDownBox.Sizable = True
      EditButtons = <>
      TabOrder = 11
      Visible = True
      OnNotInList = DBLookupComboboxEh5NotInList
    end
    object DBEditEh9: TDBEditEh
      Left = 12
      Top = 116
      Width = 60
      Height = 21
      DataField = 'TVL'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 12
      Visible = True
    end
    object DBEditEh10: TDBEditEh
      Left = 172
      Top = 116
      Width = 59
      Height = 21
      DataField = 'TVM'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 13
      Visible = True
    end
    object DBLookupComboboxEh9: TDBComboBoxEh
      Left = 92
      Top = 116
      Width = 60
      Height = 21
      DataField = 'TV'
      DataSource = Form_dictionary.DataSource_events
      DropDownBox.Sizable = True
      EditButtons = <>
      TabOrder = 14
      Visible = True
      OnNotInList = DBLookupComboboxEh5NotInList
    end
    object DBEditEh11: TDBEditEh
      Left = 276
      Top = 115
      Width = 60
      Height = 21
      DataField = 'WF'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 15
      Visible = True
    end
    object DBEditEh12: TDBEditEh
      Left = 412
      Top = 115
      Width = 60
      Height = 21
      DataField = 'WS'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 16
      Visible = True
    end
    object DBEditEh13: TDBEditEh
      Left = 344
      Top = 115
      Width = 60
      Height = 21
      DataField = 'WP'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      TabOrder = 17
      Visible = True
    end
  end
  object Panel3: TPanel
    Left = 316
    Top = 12
    Width = 165
    Height = 57
    BevelInner = bvLowered
    Enabled = False
    TabOrder = 5
    object JvxLabel7: TJvxLabel
      Left = 108
      Top = 6
      Width = 5
      Height = 16
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object JvxLabel5: TJvxLabel
      Left = 4
      Top = 6
      Width = 54
      Height = 13
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    end
    object DBCheckBox1: TDBCheckBox
      Left = 80
      Top = 32
      Width = 77
      Height = 17
      Alignment = taLeftJustify
      Caption = #1054#1090#1084#1077#1085#1077#1085#1086
      DataField = 'CANCELED'
      DataSource = Form_dictionary.DataSource_events
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEditEh4: TDBEditEh
      Left = 116
      Top = 4
      Width = 40
      Height = 19
      DataField = 'RESULT2'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      Flat = True
      TabOrder = 1
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 64
      Top = 4
      Width = 39
      Height = 19
      DataField = 'RESULT1'
      DataSource = Form_dictionary.DataSource_events
      EditButtons = <>
      Flat = True
      TabOrder = 2
      Visible = True
    end
  end
  object Tour_Types: TADOQuery
    Connection = Data.baza
    CursorType = ctStatic
    DataSource = Form_dictionary.DataSource_tourtypes
    Parameters = <>
    SQL.Strings = (
      'select  tours.key_ as tour_key,'
      'tourtypes.name+'#39' | '#39'+ tours.name as descr,'
      'tourtypes.name as type_,'
      'tourtypes.key_ as type_key,'
      'tours.name'
      'from tours,tourtypes'
      'where tourtypes.key_=tours.type'
      'order by 3')
    Left = 60
    Top = 372
  end
  object DataSource2: TDataSource
    DataSet = Tour_Types
    Left = 96
    Top = 372
  end
  object players: TADOQuery
    Connection = Data.baza
    CursorType = ctStatic
    DataSource = DataSource2
    Parameters = <>
    SQL.Strings = (
      'select  key_ as code,'
      'name from players '
      '   '
      '   ')
    Left = 408
    Top = 372
  end
  object DataSource1: TDataSource
    DataSet = players
    Left = 444
    Top = 372
  end
  object totals: TADOQuery
    Connection = Data.baza
    CursorType = ctStatic
    BeforePost = totalsBeforePost
    DataSource = DataSource2
    Parameters = <
      item
        Name = 'type_key'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Value = 0
      end>
    SQL.Strings = (
      'select  *'
      'from totals'
      'where tourtypes=:type_key')
    Left = 272
    Top = 448
  end
  object DataSource3: TDataSource
    DataSet = totals
    Left = 308
    Top = 448
  end
  object fores: TADOQuery
    Connection = Data.baza
    CursorType = ctStatic
    BeforePost = foresBeforePost
    DataSource = DataSource2
    Parameters = <
      item
        Name = 'type_key'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 0
      end>
    SQL.Strings = (
      'select  *'
      'from fores'
      'where tourtypes=:type_key')
    Left = 184
    Top = 448
  end
  object DataSource4: TDataSource
    DataSet = fores
    Left = 220
    Top = 448
  end
  object set_rates: TADOQuery
    Connection = Data.baza
    Parameters = <>
    Left = 340
    Top = 372
  end
end
