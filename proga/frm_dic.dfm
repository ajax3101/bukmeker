object Form_dictionary: TForm_dictionary
  Left = 307
  Top = 179
  Width = 586
  Height = 419
  Caption = 'Form_dictionary'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object JvxLabel3: TJvxLabel
    Left = 192
    Top = 322
    Width = 28
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 0
    Width = 578
    Height = 392
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    OnChange = JvPageControl1Change
    ClientBorderWidth = 0
    DrawTabShadow = True
    object TabSheet3: TTabSheet
      Caption = #1042#1080#1076#1099' '#1089#1087#1086#1088#1090#1072
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 578
        Height = 372
        Hint = 
          #1042#1080#1076#1099' '#1089#1087#1086#1088#1090#1072' '#8211' '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082', '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1074#1080#1076#1072#1093' '#1089#1087#1086#1088#1090#1072','#13 +
          #10#1082#1086#1090#1086#1088#1099#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090#1089#1103' '#1087#1088#1080' '#1074#1085#1077#1089#1077#1085#1080#1080' '#1076#1072#1085#1085#1099#1093' '#1086' '#1089#1086#1073#1099#1090#1080#1081'.'
        Align = alClient
        AllowedOperations = []
        AutoFitColWidths = True
        Ctl3D = True
        DataSource = DataSource_tourtypes
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch]
        ParentCtl3D = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh3DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'key_'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'MAXFDPOINT'
            Footers = <>
            Visible = False
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'FDPOINT'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1057#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1103
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 25
        Width = 578
        Height = 347
        Hint = 
          #1057#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1103'  - '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082', '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1089#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1103 +
          #1093', '#13#10#1074' '#1082#1086#1090#1086#1088#1099#1093' '#1091#1095#1072#1089#1090#1074#1091#1102#1090' '#1080#1075#1088#1086#1082#1080' '#1080' '#1082#1086#1084#1072#1085#1076#1099', ('#1091#1095#1072#1089#1090#1085#1080#1082#1080' '#1089#1086#1088#1077#1074#1085#1086#1074#1072#1085 +
          #1080#1081'), '#13#10#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090#1089#1103' '#1087#1088#1080' '#1074#1085#1077#1089#1077#1085#1080#1080' '#1089#1087#1086#1088#1090#1080#1074#1085#1099#1093' '#1089#1086#1073#1099#1090#1080#1081' '#1080' '#1089#1090#1072#1074#1086#1082'.'
        Align = alClient
        AllowedOperations = []
        AutoFitColWidths = True
        Ctl3D = True
        DataSource = DataSource_tours
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch]
        ParentCtl3D = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh4DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'key_'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = '_type'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TYPE'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.TitleButton = True
            Width = 226
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 578
        Height = 25
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object rights: TJvxLabel
          Left = 32
          Top = 6
          Width = 59
          Height = 13
          Caption = #1042#1080#1076' '#1089#1087#1086#1088#1090#1072
          Enabled = False
        end
        object DBCheckBoxEh1: TDBCheckBoxEh
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          Flat = True
          TabOrder = 0
          TabStop = True
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = DBCheckBoxEh1Click
        end
        object DBLookupComboboxEh2: TDBLookupComboboxEh
          Left = 116
          Top = 4
          Width = 121
          Height = 19
          DropDownBox.Sizable = True
          Enabled = False
          EditButtons = <>
          Flat = True
          KeyField = 'key_'
          ListField = 'NAME'
          ListSource = DataSource_tourtypes
          TabOrder = 1
          Visible = True
          OnChange = DBLookupComboboxEh2Change
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1059#1095#1072#1089#1090#1085#1080#1082#1080' '#1089#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1103
      ImageIndex = 1
      OnEnter = TabSheet2Enter
      OnExit = TabSheet2Exit
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 25
        Width = 578
        Height = 347
        Hint = 
          #1059#1095#1072#1089#1090#1085#1080#1082#1080' '#1089#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1081' '#8211' '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082', '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086#1073'  '#1080 +
          #1075#1088#1086#1082#1072#1093' '#1080' '#1082#1086#1084#1072#1085#1076#1072#1093', '#13#10#1091#1095#1072#1089#1090#1074#1091#1102#1097#1080#1093' '#1074' '#1089#1087#1086#1088#1090#1080#1074#1085#1086#1084' '#1089#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1080' '#1082#1086#1090#1086#1088 +
          #1099#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090#1089#1103' '#1087#1088#1080' '#1074#1085#1077#1089#1077#1085#1080#1080' '#1089#1087#1086#1088#1090#1080#1074#1085#1099#1093' '#1089#1086#1073#1099#1090#1080#1081' '#1080' '#1089#1090#1072#1074#1086#1082'.'
        Align = alClient
        AllowedOperations = []
        AutoFitColWidths = True
        Ctl3D = True
        DataSource = DataSource_players
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch]
        ParentCtl3D = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh2DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'key_'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.TitleButton = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 578
        Height = 25
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object JvxLabel1: TJvxLabel
          Left = 32
          Top = 6
          Width = 59
          Height = 13
          Caption = #1042#1080#1076' '#1089#1087#1086#1088#1090#1072
          Enabled = False
        end
        object DBCheckBoxEh2: TDBCheckBoxEh
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          Flat = True
          TabOrder = 0
          TabStop = True
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = DBCheckBoxEh2Click
        end
        object DBLookupComboboxEh1: TDBLookupComboboxEh
          Left = 112
          Top = 4
          Width = 121
          Height = 19
          DropDownBox.Sizable = True
          Enabled = False
          EditButtons = <>
          Flat = True
          KeyField = 'key_'
          ListField = 'NAME'
          ListSource = DataSource_tourtypes
          TabOrder = 1
          Visible = True
          OnChange = DBLookupComboboxEh1Change
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1057#1086#1073#1099#1090#1080#1103
      ImageIndex = 4
      OnEnter = TabSheet5Enter
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 29
        Width = 578
        Height = 343
        Hint = 
          #1057#1086#1073#1099#1090#1080#1077' '#8211' '#1089#1087#1086#1088#1090#1080#1074#1085#1099#1081' '#1084#1072#1090#1095', '#1080#1075#1088#1072' '#1076#1074#1091#1093' '#1089#1086#1087#1077#1088#1085#1080#1082#1086#1074', '#13#10#1085#1072' '#1082#1086#1090#1086#1088#1091#1102' '#1084#1086 +
          #1078#1085#1086' '#1076#1077#1083#1072#1090#1100' '#1089#1090#1072#1074#1082#1080'. '#13#10#1044#1083#1103' '#1074#1074#1086#1076#1072' '#1076#1072#1085#1085#1099#1093' '#1086' '#1089#1086#1073#1099#1090#1080#1103#1093' '#1087#1088#1077#1078#1076#1077' '#1090#1088#1077#1073#1091#1077#1090#1089 +
          #1103' '#1074#1074#1077#1089#1090#1080' '#1076#1072#1085#1085#1099#1077' '#1074' '#1089#1083#1077#1076#1091#1102#1097#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080#13#10' '#1042#1080#1076#1099' '#1089#1087#1086#1088#1090#1072', '#1057#1086#1088#1077#1074#1085#1086#1074#1072 +
          #1085#1080#1103', '#1059#1095#1072#1089#1090#1085#1080#1082#1080' '#1089#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1081'.'
        Align = alClient
        AllowedOperations = []
        AutoFitColWidths = True
        Ctl3D = True
        DataSource = DataSource_events
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch]
        ParentCtl3D = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh5DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EVENTDATE'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'EVENTTIME'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = '_tour'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = '_fp'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = '_sp'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'rez'
            Footers = <>
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 578
        Height = 29
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object JvxLabel9: TJvxLabel
          Left = 12
          Top = 6
          Width = 28
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object DBDateTimeEditEh3: TDBDateTimeEditEh
          Left = 47
          Top = 4
          Width = 77
          Height = 21
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 0
          Visible = True
          OnChange = DBDateTimeEditEh3Click
        end
        object DBLookupComboboxEh3: TDBLookupComboboxEh
          Left = 215
          Top = 4
          Width = 121
          Height = 21
          DropDownBox.Sizable = True
          Enabled = False
          EditButtons = <>
          KeyField = 'key_'
          ListField = 'NAME'
          ListSource = DataSource_tourtypes
          TabOrder = 1
          Visible = True
          OnChange = DBDateTimeEditEh3Click
        end
        object DBCheckBox1: TDBCheckBoxEh
          Left = 127
          Top = 6
          Width = 77
          Height = 17
          Alignment = taLeftJustify
          Caption = #1042#1080#1076' '#1089#1087#1086#1088#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TabStop = True
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox2: TDBCheckBoxEh
          Left = 339
          Top = 6
          Width = 94
          Height = 17
          Alignment = taLeftJustify
          Caption = #1057#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TabStop = True
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = DBCheckBox2Click
        end
        object DBLookupComboboxEh4: TDBLookupComboboxEh
          Left = 439
          Top = 4
          Width = 134
          Height = 21
          DropDownBox.Sizable = True
          Enabled = False
          EditButtons = <>
          KeyField = 'key_'
          ListField = 'type_;name'
          ListFieldIndex = 1
          ListSource = DataSource_tour_events
          TabOrder = 4
          Visible = True
          OnChange = DBDateTimeEditEh3Click
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1057#1090#1072#1074#1082#1080
      ImageIndex = 5
      OnEnter = TabSheet6Enter
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 29
        Width = 578
        Height = 319
        Hint = 
          #1057#1090#1072#1074#1082#1072' '#8211' '#1087#1072#1088#1080', '#1079#1072#1082#1083#1102#1095#1072#1077#1084#1086#1077' '#1073#1091#1082#1084#1077#1082#1077#1088#1089#1082#1086#1081' '#1082#1086#1085#1090#1086#1088#1086#1081' '#1089' '#1080#1075#1088#1086#1082#1086#1084' '#13#10#1085#1072' ' +
          #1080#1089#1093#1086#1076' '#1089#1087#1086#1088#1090#1080#1074#1085#1086#1075#1086' '#1089#1086#1073#1099#1090#1080#1103'.'
        Align = alClient
        AllowedOperations = []
        AutoFitColWidths = True
        Ctl3D = True
        DataSource = DataSource_rates
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch]
        ParentCtl3D = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh6DblClick
        OnGetCellParams = DBGridEh6GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'key_'
            Footers = <>
            Title.TitleButton = True
            WordWrap = True
          end
          item
            EditButtons = <>
            FieldName = 'CODE'
            Footers = <>
            Title.TitleButton = True
            Visible = False
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'RDATE'
            Footers = <>
            Title.TitleButton = True
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'RTIME'
            Footers = <>
            Title.TitleButton = True
            Width = 137
          end
          item
            EditButtons = <>
            FieldName = 'RATESUMM'
            Footers = <>
            Title.TitleButton = True
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'RATEMUL'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'WINRATEMUL'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'STATE'
            Footers = <>
            Title.TitleButton = True
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ISPAYMENT'
            Footers = <>
            Title.TitleButton = True
            Visible = False
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 348
        Width = 578
        Height = 24
        Align = alBottom
        TabOrder = 1
        object JvxLabel6: TJvxLabel
          Left = 4
          Top = 6
          Width = 48
          Height = 13
          Caption = #1055#1088#1080#1093#1086#1076' - '
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 578
        Height = 29
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        object JvxLabel2: TJvxLabel
          Left = 8
          Top = 6
          Width = 28
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object JvxLabel4: TJvxLabel
          Left = 124
          Top = 6
          Width = 6
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object JvxLabel5: TJvxLabel
          Left = 220
          Top = 6
          Width = 38
          Height = 13
          Caption = #1057#1090#1072#1074#1082#1080
        end
        object JvxLabel10: TJvxLabel
          Left = 412
          Top = 8
          Width = 59
          Height = 13
          Caption = #1050#1086#1076' '#1089#1090#1072#1074#1082#1080
          Enabled = False
        end
        object DBDateTimeEditEh1: TDBDateTimeEditEh
          Left = 44
          Top = 4
          Width = 77
          Height = 19
          EditButtons = <>
          Flat = True
          Kind = dtkDateEh
          TabOrder = 0
          Visible = True
          OnChange = DBDateTimeEditEh1Change
        end
        object DBDateTimeEditEh2: TDBDateTimeEditEh
          Left = 132
          Top = 4
          Width = 77
          Height = 19
          EditButtons = <>
          Flat = True
          Kind = dtkDateEh
          TabOrder = 1
          Visible = True
          OnChange = DBDateTimeEditEh1Change
        end
        object DBCheckBoxEh3: TDBCheckBoxEh
          Left = 396
          Top = 6
          Width = 17
          Height = 17
          Flat = True
          TabOrder = 2
          TabStop = True
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = DBCheckBoxEh3Click
        end
        object DBEditEh1: TDBEditEh
          Left = 476
          Top = 4
          Width = 73
          Height = 19
          EditButtons = <>
          Enabled = False
          Flat = True
          TabOrder = 3
          Visible = True
          OnChange = DBDateTimeEditEh1Change
        end
        object DBComboBoxEh1: TDBComboBoxEh
          Left = 264
          Top = 4
          Width = 125
          Height = 19
          DropDownBox.Sizable = True
          EditButtons = <>
          Flat = True
          TabOrder = 4
          Text = #1042#1089#1077
          Visible = True
          OnChange = DBDateTimeEditEh1Change
          OnNotInList = DBComboBoxEh1NotInList
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 578
        Height = 372
        Align = alClient
        AllowedOperations = []
        AutoFitColWidths = True
        Ctl3D = True
        DataSource = DataSource_users
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch]
        ParentCtl3D = False
        PopupMenu = PopupMenu1
        SortLocal = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'key_'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.TitleButton = True
            Width = 206
          end
          item
            EditButtons = <>
            FieldName = 'RIGHTS'
            Footers = <>
            Title.TitleButton = True
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'UPASSWORD'
            Footers = <>
            Visible = False
          end>
      end
    end
  end
  object DataSource_users: TDataSource
    DataSet = Data.users
    Left = 36
    Top = 132
  end
  object DataSource_players: TDataSource
    DataSet = Data.players
    Left = 152
    Top = 132
  end
  object DataSource_tourtypes: TDataSource
    DataSet = Data.tourtypes
    Left = 272
    Top = 132
  end
  object DataSource_tours: TDataSource
    DataSet = Data.tours
    Left = 392
    Top = 132
  end
  object PopupMenu1: TPopupMenu
    Images = Main_Form.ImageList1
    Left = 28
    Top = 300
    object appendrec1: TMenuItem
      Action = Main_Form.append_rec
    end
    object Edit1: TMenuItem
      Action = Main_Form.Edit_action
    end
    object deleterec1: TMenuItem
      Action = Main_Form.delete_rec
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Rezult1: TMenuItem
      Action = Main_Form.rez_Action
    end
    object N1: TMenuItem
      Action = Main_Form.Pay_action
    end
  end
  object DataSource_events: TDataSource
    DataSet = Data.events
    Left = 36
    Top = 196
  end
  object DataSource_rates: TDataSource
    DataSet = Data.rates
    Left = 152
    Top = 196
  end
  object DBSumList1: TDBSumList
    ExternalRecalc = False
    SumCollection = <
      item
        GroupOperation = goCount
      end>
    VirtualRecords = False
    SumListChanged = DBSumList1SumListChanged
    Left = 92
    Top = 300
  end
  object DataSource_Tour_Types: TDataSource
    DataSet = Data.Tour_Types
    Left = 396
    Top = 196
  end
  object DataSource_tour_events: TDataSource
    DataSet = Data.tour_events
    Left = 412
    Top = 296
  end
  object ADOQuery1: TADOQuery
    Connection = Data.baza
    Parameters = <>
    SQL.Strings = (
      'select sum(ratesumm) as prihod, '
      
        'sum(ratesumm) - sum(iif(state=1,ratesumm*winratemul,0)) as balan' +
        'ce,'
      'sum(iif(state=1,ratesumm*winratemul,0)) as rashod,'
      'sum(iif(state=2,ratesumm*winratemul,0)) as ojid_rash'
      'from rates'
      '   '
      '   ')
    Left = 192
    Top = 300
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 280
    Top = 272
  end
end
