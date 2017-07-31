object rates_form: Trates_form
  Left = 204
  Top = 104
  ActiveControl = DBEditEh2
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1057#1090#1072#1074#1082#1072
  ClientHeight = 361
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvxLabel9: TJvxLabel
    Left = 12
    Top = 82
    Width = 46
    Height = 13
    Caption = #1057#1086#1073#1099#1090#1080#1077
  end
  object DBGridEh1: TDBGridEh
    Left = 4
    Top = 236
    Width = 453
    Height = 97
    AllowedOperations = []
    AllowedSelections = []
    AutoFitColWidths = True
    DataSource = DataSource2
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 77
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object JvxLabel3: TJvxLabel
      Left = 164
      Top = 12
      Width = 28
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object JvxLabel4: TJvxLabel
      Left = 296
      Top = 12
      Width = 35
      Height = 13
      Caption = #1042#1088#1077#1084#1103
    end
    object JvxLabel1: TJvxLabel
      Left = 4
      Top = 12
      Width = 21
      Height = 13
      Caption = #1050#1086#1076
    end
    object JvxLabel2: TJvxLabel
      Left = 4
      Top = 34
      Width = 74
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1089#1090#1072#1074#1082#1080
    end
    object JvxLabel5: TJvxLabel
      Left = 168
      Top = 34
      Width = 19
      Height = 13
      Caption = #1082#1092'.'
    end
    object JvxLabel6: TJvxLabel
      Left = 228
      Top = 34
      Width = 109
      Height = 13
      Caption = #1054#1078#1080#1076#1072#1077#1084#1099#1081' '#1074#1099#1080#1088#1099#1096
    end
    object JvxLabel7: TJvxLabel
      Left = 276
      Top = 58
      Width = 45
      Height = 13
      Caption = #1042#1099#1080#1088#1099#1096
    end
    object JvxLabel8: TJvxLabel
      Left = 168
      Top = 58
      Width = 19
      Height = 13
      Caption = #1082#1092'.'
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 212
      Top = 8
      Width = 76
      Height = 21
      TabStop = False
      DataField = 'RDATE'
      DataSource = Form_dictionary.DataSource_rates
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 0
      Visible = True
    end
    object DBDateTimeEditEh2: TDBDateTimeEditEh
      Left = 340
      Top = 8
      Width = 77
      Height = 21
      TabStop = False
      DataField = 'RTIME'
      DataSource = Form_dictionary.DataSource_rates
      EditButton.Style = ebsUpDownEh
      EditButtons = <>
      Kind = dtkTimeEh
      TabOrder = 1
      Visible = True
    end
    object DBEditEh1: TDBEditEh
      Left = 36
      Top = 8
      Width = 73
      Height = 21
      TabStop = False
      DataField = 'key_'
      DataSource = Form_dictionary.DataSource_rates
      EditButtons = <>
      Enabled = False
      ReadOnly = True
      TabOrder = 2
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 88
      Top = 30
      Width = 73
      Height = 21
      DataField = 'RATESUMM'
      DataSource = Form_dictionary.DataSource_rates
      EditButtons = <>
      TabOrder = 3
      Visible = True
      OnChange = DBEditEh2Change
    end
    object DBEditEh3: TDBEditEh
      Left = 192
      Top = 30
      Width = 29
      Height = 21
      TabStop = False
      DataField = 'RATEMUL'
      DataSource = Form_dictionary.DataSource_rates
      EditButtons = <>
      Enabled = False
      ReadOnly = True
      TabOrder = 4
      Visible = True
      OnChange = DBEditEh3Change
    end
    object DBEditEh4: TDBEditEh
      Left = 344
      Top = 30
      Width = 73
      Height = 21
      TabStop = False
      EditButtons = <>
      Enabled = False
      ReadOnly = True
      TabOrder = 5
      Visible = True
    end
    object DBEditEh5: TDBEditEh
      Left = 344
      Top = 54
      Width = 73
      Height = 21
      TabStop = False
      EditButtons = <>
      Enabled = False
      ReadOnly = True
      TabOrder = 6
      Visible = True
    end
    object DBEditEh6: TDBEditEh
      Left = 192
      Top = 54
      Width = 29
      Height = 21
      TabStop = False
      DataField = 'WINRATEMUL'
      DataSource = Form_dictionary.DataSource_rates
      EditButtons = <>
      Enabled = False
      ReadOnly = True
      TabOrder = 7
      Visible = True
      OnChange = DBEditEh6Change
    end
  end
  object cancel: TJvImgBtn
    Left = 372
    Top = 336
    Width = 75
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 0
    Kind = bkCancel
  end
  object add: TJvImgBtn
    Left = 192
    Top = 336
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    ModalResult = 6
    TabOrder = 1
  end
  object ok: TJvImgBtn
    Left = 280
    Top = 336
    Width = 81
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 2
    Kind = bkOK
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 100
    Width = 457
    Height = 109
    Caption = #1057#1090#1072#1074#1082#1072
    Columns = 2
    Items.Strings = (
      #1055#1086#1073#1077#1076#1072' 1-'#1086#1081
      #1055#1086#1073#1077#1076#1072' 1-'#1086#1081' '#1089' '#1092#1086#1088#1086#1081
      #1055#1086#1073#1077#1076#1072' 2-'#1086#1081
      #1055#1086#1073#1077#1076#1072' 2-'#1086#1081' '#1089' '#1092#1086#1088#1086#1081
      #1053#1080#1095#1100#1103
      #1058#1086#1090#1072#1083' >'
      #1058#1086#1090#1072#1083' <'
      #1058#1086#1090#1072#1083' 1 >'
      #1058#1086#1090#1072#1083' 1 <'
      #1058#1086#1090#1072#1083' 2 >'
      #1058#1086#1090#1072#1083' 2 <')
    TabOrder = 6
    OnClick = RadioGroup1Click
  end
  object CheckBox1: TCheckBox
    Left = 204
    Top = 214
    Width = 69
    Height = 17
    Caption = #1055#1086#1082#1091#1087#1082#1072
    Enabled = False
    TabOrder = 7
    Visible = False
  end
  object DBComboBoxEh1: TDBComboBoxEh
    Left = 288
    Top = 212
    Width = 121
    Height = 21
    Enabled = False
    EditButtons = <>
    TabOrder = 8
    Text = 'DBComboBoxEh1'
    Visible = False
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 68
    Top = 80
    Width = 385
    Height = 21
    EditButtons = <>
    KeyField = 'key_'
    ListField = 'ev_name'
    ListSource = DataSource1
    TabOrder = 5
    Visible = True
    OnChange = DBLookupComboboxEh1Change
    OnDropDown = DBLookupComboboxEh1DropDown
  end
  object JvImgBtn1: TJvImgBtn
    Left = 4
    Top = 212
    Width = 85
    Height = 21
    Action = add_Action
    TabOrder = 9
    Images = ImageList1
    ImageIndex = 0
  end
  object JvImgBtn2: TJvImgBtn
    Left = 96
    Top = 212
    Width = 85
    Height = 21
    Action = del_Action
    TabOrder = 10
    Images = ImageList1
    ImageIndex = 1
  end
  object JvImgBtn3: TJvImgBtn
    Left = 104
    Top = 336
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 11
    OnClick = JvImgBtn3Click
  end
  object CheckBox2: TCheckBox
    Left = 4
    Top = 340
    Width = 85
    Height = 17
    Caption = #1055#1077#1095#1072#1090#1100' '#1072#1074#1090'.'
    TabOrder = 12
  end
  object events_list: TADOQuery
    Connection = Data.baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select events.*,cstr(events.key_)+'#39' '#39'+p1.name+'#39' - '#39'+p2.name as e' +
        'v_name,tours.type'
      'from events,players as p1,players as p2,tours'
      
        'where events.fp=p1.key_ and events.sp=p2.key_ and tours.key_=eve' +
        'nts.tour and events.eventdate>date()'
      'order by 1')
    Left = 44
    Top = 440
    object events_listkey_: TAutoIncField
      FieldName = 'key_'
      ReadOnly = True
    end
    object events_listEVENTDATE: TDateTimeField
      FieldName = 'EVENTDATE'
    end
    object events_listEVENTTIME: TDateTimeField
      FieldName = 'EVENTTIME'
    end
    object events_listTOUR: TIntegerField
      FieldName = 'TOUR'
    end
    object events_listFP: TIntegerField
      FieldName = 'FP'
    end
    object events_listSP: TIntegerField
      FieldName = 'SP'
    end
    object events_listWF: TFloatField
      FieldName = 'WF'
    end
    object events_listWP: TFloatField
      FieldName = 'WP'
    end
    object events_listWS: TFloatField
      FieldName = 'WS'
    end
    object events_listFFV: TFloatField
      FieldName = 'FFV'
    end
    object events_listFFK: TFloatField
      FieldName = 'FFK'
    end
    object events_listFSV: TFloatField
      FieldName = 'FSV'
    end
    object events_listFSK: TFloatField
      FieldName = 'FSK'
    end
    object events_listTV: TFloatField
      FieldName = 'TV'
    end
    object events_listTVM: TFloatField
      FieldName = 'TVM'
    end
    object events_listTVL: TFloatField
      FieldName = 'TVL'
    end
    object events_listTFV: TFloatField
      FieldName = 'TFV'
    end
    object events_listTFL: TFloatField
      FieldName = 'TFL'
    end
    object events_listTFM: TFloatField
      FieldName = 'TFM'
    end
    object events_listTSV: TFloatField
      FieldName = 'TSV'
    end
    object events_listTSL: TFloatField
      FieldName = 'TSL'
    end
    object events_listTSM: TFloatField
      FieldName = 'TSM'
    end
    object events_listRESULT1: TFloatField
      FieldName = 'RESULT1'
    end
    object events_listRESULT2: TFloatField
      FieldName = 'RESULT2'
    end
    object events_listCANCELED: TBooleanField
      FieldName = 'CANCELED'
    end
    object events_listev_name: TWideStringField
      FieldName = 'ev_name'
      ReadOnly = True
      Size = 255
    end
    object events_listtype: TIntegerField
      FieldName = 'type'
    end
  end
  object DataSource1: TDataSource
    DataSet = events_list
    Left = 212
    Top = 440
  end
  object ratelines: TADOQuery
    Connection = Data.baza
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from ratelines'
      'where rate=0'
      '   ')
    Left = 276
    Top = 440
    object ratelineskey_: TAutoIncField
      FieldName = 'key_'
      ReadOnly = True
      Visible = False
    end
    object ratelines_event: TStringField
      DisplayLabel = #1057#1086#1073#1099#1090#1080#1077
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = '_event'
      LookupDataSet = events_list2
      LookupKeyFields = 'key_'
      LookupResultField = 'ev_name'
      KeyFields = 'RATEEVENT'
      Size = 150
      Lookup = True
    end
    object ratelinesRATE: TIntegerField
      FieldName = 'RATE'
      Visible = False
    end
    object ratelinesRATEEVENT: TIntegerField
      FieldName = 'RATEEVENT'
      Visible = False
    end
    object ratelinesRATEMUL: TFloatField
      DisplayLabel = #1050#1092'.'
      FieldName = 'RATEMUL'
    end
    object ratelinesWIN: TWideStringField
      Alignment = taCenter
      DisplayLabel = #1057#1090#1072#1074#1082#1072
      DisplayWidth = 10
      FieldName = 'WIN'
      Size = 3
    end
    object ratelinesFV: TFloatField
      DisplayLabel = #1060#1086#1088#1072
      FieldName = 'FV'
    end
    object ratelinesTV: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083
      FieldName = 'TV'
    end
    object ratelinesWINRATEMUL: TFloatField
      DisplayLabel = #1050#1092'. '#1042
      FieldName = 'WINRATEMUL'
    end
    object ratelinesRATESTATE: TBooleanField
      FieldName = 'RATESTATE'
      Visible = False
    end
    object ratelinesEVENTNUM: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'EVENTNUM'
      Visible = False
    end
  end
  object ratetypes_tour: TADOQuery
    Connection = Data.baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select ratetypes,name,descr from ratetypes_tour,ratetypes'
      'where ratetypes_tour.ratetypes=ratetypes.descr and tourtypes=0'
      'order by ratetypes_tour.key_')
    Left = 428
    Top = 436
  end
  object DataSource2: TDataSource
    DataSet = ratelines
    Left = 336
    Top = 440
  end
  object events_list2: TADOQuery
    Connection = Data.baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select events.key_,p1.name+'#39' - '#39'+p2.name as ev_name'
      'from events,players as p1,players as p2'
      'where events.fp=p1.key_ and events.sp=p2.key_'
      'order by 1')
    Left = 116
    Top = 440
  end
  object ImageList1: TImageList
    Left = 492
    Top = 184
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
      0000000000000000000000000000000000000000000000000000000000000000
      0002000200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      E003E00300020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      E003E00300020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      E003E00300020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000200020002
      E003E00300020002000200020000000000000000000000000040004000400040
      0040004000400040004000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000002E003E003E003E003
      E003E003E003E003E003E003000200000000000000000040007C007C007C007C
      007C007C007C007C007C007C0040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000002E003E003E003E003
      E003E003E003E003E003E003000200000000000000000040007C007C007C007C
      007C007C007C007C007C007C0040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000200020002
      E003E00300020002000200020000000000000000000000000040004000400040
      0040004000400040004000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      E003E00300020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      E003E00300020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      E003E00300020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000200000000000000000000000000000000000000000000000000000000
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
      FE7FFFFF00000000FC3FFFFF00000000FC3FFFFF00000000FC3FFFFF00000000
      E007E00700000000C003C00300000000C003C00300000000E007E00700000000
      FC3FFFFF00000000FC3FFFFF00000000FC3FFFFF00000000FE7FFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 536
    Top = 148
    object add_Action: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      OnExecute = add_ActionExecute
      OnUpdate = add_ActionUpdate
    end
    object del_Action: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 1
      OnExecute = del_ActionExecute
      OnUpdate = del_ActionUpdate
    end
  end
  object event_cnt: TADOQuery
    Connection = Data.baza
    Parameters = <>
    SQL.Strings = (
      
        'SELECT sum(iif(win='#39'1'#39',1,0)) as win1,sum(iif(win='#39'2'#39',1,0)) as wi' +
        'n2'
      'from ratelines'
      'where 1=1'
      ';')
    Left = 56
    Top = 512
  end
  object JvFormStorage1: TJvFormStorage
    Options = [fpPosition]
    StoredProps.Strings = (
      'CheckBox2.Checked')
    StoredValues = <>
    Left = 12
    Top = 388
  end
end
