object Data: TData
  OldCreateOrder = False
  Left = 328
  Top = 263
  Height = 207
  Width = 466
  object baza: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\dat' +
      'a\database.mdb;Mode=Share Deny None;Extended Properties="";Persi' +
      'st Security Info=False;Jet OLEDB:System database=.\data\SYSTEM.M' +
      'DW;Jet OLEDB:Registry Path="";Jet OLEDB:Engine Type=5;Jet OLEDB:' +
      'Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet ' +
      'OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password' +
      '="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Dat' +
      'abase=True;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLED' +
      'B:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 40
  end
  object tours: TADOQuery
    Connection = baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tours'
      '   '
      '   ')
    Left = 208
    Top = 40
    object tourskey_: TAutoIncField
      FieldName = 'key_'
      ReadOnly = True
    end
    object toursTYPE: TIntegerField
      FieldName = 'TYPE'
    end
    object toursNAME: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 33
    end
    object tours_type: TStringField
      DisplayLabel = #1042#1080#1076' '#1089#1087#1086#1088#1090#1072
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = '_type'
      LookupDataSet = tourtypes
      LookupKeyFields = 'key_'
      LookupResultField = 'NAME'
      KeyFields = 'TYPE'
      Size = 100
      Lookup = True
    end
  end
  object tourtypes: TADOQuery
    Connection = baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tourtypes'
      '   '
      '   ')
    Left = 164
    Top = 40
    object tourtypeskey_: TAutoIncField
      FieldName = 'key_'
      ReadOnly = True
      Visible = False
    end
    object tourtypesNAME: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 33
    end
    object tourtypesMAXFDPOINT: TFloatField
      DisplayLabel = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1087#1086#1082#1091#1087#1082#1072' '#1092#1086#1088#1099
      FieldName = 'MAXFDPOINT'
    end
    object tourtypesFDPOINT: TFloatField
      DisplayLabel = #1064#1072#1075' '#1087#1086#1082#1091#1087#1082#1080' '#1092#1086#1088#1099
      FieldName = 'FDPOINT'
    end
  end
  object players: TADOQuery
    Connection = baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from players'
      '   '
      '   ')
    Left = 120
    Top = 40
    object playerskey_: TAutoIncField
      FieldName = 'key_'
      ReadOnly = True
    end
    object playersNAME: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 33
    end
  end
  object users: TADOQuery
    Connection = baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from users'
      '   '
      '   ')
    Left = 76
    Top = 40
    object userskey_: TAutoIncField
      FieldName = 'key_'
      ReadOnly = True
    end
    object usersNAME: TWideStringField
      DisplayLabel = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      FieldName = 'NAME'
      Size = 65
    end
    object usersRIGHTS: TWideStringField
      DisplayLabel = #1055#1088#1072#1074#1072' '#1076#1086#1089#1090#1091#1087#1072
      FieldName = 'RIGHTS'
      Size = 17
    end
    object usersUPASSWORD: TWideStringField
      DisplayLabel = #1087#1072#1088#1086#1083#1100
      FieldName = 'UPASSWORD'
      Size = 17
    end
  end
  object events: TADOQuery
    Connection = baza
    CursorType = ctStatic
    OnCalcFields = eventsCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from events'
      '   '
      '   ')
    Left = 256
    Top = 40
    object eventskey_: TAutoIncField
      FieldName = 'key_'
      ReadOnly = True
    end
    object eventsEVENTDATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'EVENTDATE'
      EditMask = '!99/99/0000;1;_'
    end
    object eventsEVENTTIME: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'EVENTTIME'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object eventsTOUR: TIntegerField
      DisplayLabel = #1057#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'TOUR'
    end
    object eventsFP: TIntegerField
      DisplayLabel = #1055#1077#1088#1074#1072#1103' '#1082#1086#1084#1072#1085#1076#1072' / '#1080#1075#1088#1086#1082
      FieldName = 'FP'
    end
    object eventsSP: TIntegerField
      DisplayLabel = #1042#1090#1086#1088#1072#1103' '#1082#1086#1084#1072#1085#1076#1072' / '#1080#1075#1088#1086#1082
      FieldName = 'SP'
    end
    object eventsWF: TFloatField
      DisplayLabel = #1042#1099#1080#1075#1088#1072#1096' '#1087#1077#1088#1074#1086#1081
      FieldName = 'WF'
    end
    object eventsWP: TFloatField
      DisplayLabel = #1053#1080#1095#1100#1103
      FieldName = 'WP'
    end
    object eventsWS: TFloatField
      DisplayLabel = #1042#1099#1080#1075#1088#1072#1096' '#1074#1090#1086#1088#1086#1081
      FieldName = 'WS'
    end
    object eventsFFV: TFloatField
      DisplayLabel = #1060#1086#1088#1072' '#1087#1077#1088#1074#1086#1081' '#1082#1086#1084#1072#1085#1076#1099
      FieldName = 'FFV'
    end
    object eventsFFK: TFloatField
      DisplayLabel = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1092#1086#1088#1099' '#1087#1077#1088#1074#1086#1081' '#1082#1086#1084#1072#1085#1076#1099
      FieldName = 'FFK'
    end
    object eventsFSV: TFloatField
      DisplayLabel = #1060#1086#1088#1072' '#1074#1090#1086#1088#1086#1081' '#1082#1086#1084#1072#1085#1076#1099
      FieldName = 'FSV'
    end
    object eventsFSK: TFloatField
      DisplayLabel = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1092#1086#1088#1099' '#1074#1090#1086#1088#1086#1081' '#1082#1086#1084#1072#1085#1076#1099
      FieldName = 'FSK'
    end
    object eventsTV: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1086#1073#1097#1080#1081
      FieldName = 'TV'
    end
    object eventsTVM: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1073#1086#1083#1100#1096#1080#1081
      FieldName = 'TVM'
    end
    object eventsTVL: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1084#1077#1085#1100#1096#1080#1081
      FieldName = 'TVL'
    end
    object eventsTFV: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1087#1077#1088#1074#1086#1081' '#1082#1086#1084#1072#1085#1076#1099
      FieldName = 'TFV'
    end
    object eventsTFL: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1087#1077#1088#1074#1086#1081' '#1084#1077#1085#1100#1096#1080#1081
      FieldName = 'TFL'
    end
    object eventsTFM: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1087#1077#1088#1074#1086#1081' '#1073#1086#1083#1100#1096#1080#1081
      FieldName = 'TFM'
    end
    object eventsTSV: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1074#1090#1086#1088#1086#1081' '#1082#1086#1084#1072#1085#1076#1099
      FieldName = 'TSV'
    end
    object eventsTSL: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1074#1090#1086#1088#1086#1081' '#1084#1077#1085#1100#1096#1080#1081
      FieldName = 'TSL'
    end
    object eventsTSM: TFloatField
      DisplayLabel = #1058#1086#1090#1072#1083' '#1074#1090#1086#1088#1086#1081' '#1073#1086#1083#1100#1096#1080#1081
      FieldName = 'TSM'
    end
    object eventsRESULT1: TFloatField
      DisplayLabel = #1048#1089#1093#1086#1076' 1'
      FieldName = 'RESULT1'
    end
    object eventsRESULT2: TFloatField
      DisplayLabel = #1048#1089#1093#1086#1076' 2'
      FieldName = 'RESULT2'
    end
    object eventsCANCELED: TBooleanField
      DisplayLabel = #1054#1090#1084#1077#1085#1077#1085#1086
      FieldName = 'CANCELED'
    end
    object events_fp: TStringField
      DisplayLabel = #1055#1077#1088#1074#1072#1103' '#1082#1086#1084#1072#1085#1076#1072' / '#1080#1075#1088#1086#1082
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_fp'
      LookupDataSet = players
      LookupKeyFields = 'key_'
      LookupResultField = 'NAME'
      KeyFields = 'FP'
      Size = 150
      Lookup = True
    end
    object events_sp: TStringField
      DisplayLabel = #1042#1090#1086#1088#1072#1103' '#1082#1086#1084#1072#1085#1076#1072' / '#1080#1075#1088#1086#1082
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_sp'
      LookupDataSet = players
      LookupKeyFields = 'key_'
      LookupResultField = 'NAME'
      KeyFields = 'SP'
      Size = 150
      Lookup = True
    end
    object events_tour: TStringField
      DisplayLabel = #1057#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_tour'
      LookupDataSet = Tour_Types
      LookupKeyFields = 'key_'
      LookupResultField = 'descr'
      KeyFields = 'TOUR'
      Size = 150
      Lookup = True
    end
    object eventsrez: TStringField
      DisplayLabel = #1056#1077#1079#1091#1083#1100#1090#1072#1090
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'rez'
      Size = 15
      Calculated = True
    end
  end
  object rates: TADOQuery
    Connection = baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from rates'
      '   '
      '   ')
    Left = 300
    Top = 40
    object rateskey_: TAutoIncField
      DisplayLabel = #1050#1086#1076' '#1089#1090#1072#1074#1082#1080
      FieldName = 'key_'
      ReadOnly = True
    end
    object ratesCODE: TWideStringField
      DisplayLabel = #1050#1086#1076' '#1089#1090#1072#1074#1082#1080
      FieldName = 'CODE'
      Size = 9
    end
    object ratesRDATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1089#1090#1072#1074#1082#1080
      FieldName = 'RDATE'
    end
    object ratesRTIME: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1089#1090#1072#1074#1082#1080
      FieldName = 'RTIME'
    end
    object ratesRATESUMM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089#1090#1072#1074#1082#1080
      FieldName = 'RATESUMM'
    end
    object ratesRATEMUL: TFloatField
      DisplayLabel = #1052#1085#1086#1078#1080#1090#1077#1083#1100
      FieldName = 'RATEMUL'
    end
    object ratesWINRATEMUL: TFloatField
      DisplayLabel = #1057#1099#1075#1088#1072#1074#1096#1080#1081' '#1084#1085#1086#1078#1080#1090#1077#1083#1100
      FieldName = 'WINRATEMUL'
    end
    object ratesSTATE: TIntegerField
      DisplayLabel = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1090#1072#1074#1082#1080
      FieldName = 'STATE'
    end
  end
  object ratetypes: TADOQuery
    Connection = baza
    Parameters = <>
    SQL.Strings = (
      'select * from ratetypes')
    Left = 344
    Top = 40
  end
  object rate_state: TADOQuery
    Connection = baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from rate_state'
      '   '
      '   ')
    Left = 76
    Top = 92
    object rate_statekey_: TAutoIncField
      FieldName = 'key_'
      ReadOnly = True
    end
    object rate_statename: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object rate_statetextcolor: TIntegerField
      FieldName = 'textcolor'
    end
    object rate_statebackground: TIntegerField
      FieldName = 'background'
    end
  end
  object Tour_Types: TADOQuery
    Connection = baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  tours.key_,'
      'tourtypes.name+'#39' | '#39'+ tours.name as descr,'
      'tourtypes.name as type_,'
      'tours.name'
      'from tours,tourtypes'
      'where tourtypes.key_=tours.type'
      'order by 3')
    Left = 136
    Top = 92
  end
  object tour_events: TADOQuery
    Connection = baza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  tours.key_,'
      'tourtypes.name+'#39' | '#39'+ tours.name as descr,'
      'tourtypes.name as type_,'
      'tours.name'
      'from tours,tourtypes'
      'where tourtypes.key_=tours.type   '
      'order by 3')
    Left = 196
    Top = 92
  end
end
