object rate_state_form: Trate_state_form
  Left = 206
  Top = 106
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1094#1074#1077#1090#1072' '#1089#1090#1072#1074#1086#1082
  ClientHeight = 163
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rights: TJvxLabel
    Left = 8
    Top = 95
    Width = 69
    Height = 13
    Caption = #1062#1074#1077#1090' '#1096#1088#1080#1092#1090#1072
  end
  object JvxLabel1: TJvxLabel
    Left = 128
    Top = 95
    Width = 72
    Height = 13
    Caption = #1062#1074#1077#1090' '#1079#1072#1083#1080#1074#1082#1080
  end
  object DBGridEh1: TDBGridEh
    Left = 4
    Top = 4
    Width = 237
    Height = 89
    AllowedOperations = []
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'name'
        Footers = <>
      end>
  end
  object ColorBox1: TColorBox
    Left = 8
    Top = 108
    Width = 110
    Height = 22
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
    ItemHeight = 16
    TabOrder = 1
    OnChange = ColorBox1Change
  end
  object ColorBox2: TColorBox
    Left = 128
    Top = 108
    Width = 110
    Height = 22
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
    ItemHeight = 16
    TabOrder = 2
    OnChange = ColorBox2Change
  end
  object ok: TJvImgBtn
    Left = 86
    Top = 136
    Width = 75
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 3
    Kind = bkOK
  end
  object DataSource1: TDataSource
    DataSet = Data.rate_state
    OnDataChange = DataSource1DataChange
    Left = 36
    Top = 40
  end
end
