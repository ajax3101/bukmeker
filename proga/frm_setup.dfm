object setup_form: Tsetup_form
  Left = 206
  Top = 108
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1080
  ClientHeight = 178
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object JvGroupBox2: TJvGroupBox
    Left = 0
    Top = 92
    Width = 349
    Height = 57
    Caption = #1044#1072#1085#1085#1099#1077
    TabOrder = 2
    object JvxLabel1: TJvxLabel
      Left = 8
      Top = 12
      Width = 117
      Height = 13
      Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
    end
    object JvDirectoryEdit1: TJvDirectoryEdit
      Left = 8
      Top = 28
      Width = 225
      Height = 21
      ButtonFlat = False
      NumGlyphs = 1
      TabOrder = 0
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
    end
  end
  object JvGroupBox1: TJvGroupBox
    Left = 0
    Top = 0
    Width = 349
    Height = 93
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
    TabOrder = 1
    object nazvanie: TJvxLabel
      Left = 8
      Top = 20
      Width = 120
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    end
    object adres1: TJvxLabel
      Left = 12
      Top = 44
      Width = 33
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object tel: TJvxLabel
      Left = 12
      Top = 68
      Width = 47
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object nazva: TDBEditEh
      Left = 132
      Top = 16
      Width = 209
      Height = 21
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object adres: TDBEditEh
      Left = 64
      Top = 40
      Width = 277
      Height = 21
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object telefon: TDBEditEh
      Left = 64
      Top = 64
      Width = 105
      Height = 21
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
  end
  object ok: TJvImgBtn
    Left = 64
    Top = 152
    Width = 75
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 0
    Kind = bkOK
  end
  object cancel: TJvImgBtn
    Left = 212
    Top = 152
    Width = 75
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 3
    OnClick = cancelClick
    Kind = bkCancel
  end
  object win_compare: TEdit
    Left = 128
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '5'
    Visible = False
  end
  object ImageList1: TImageList
    Left = 24
    Top = 192
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      000000000000000000000000000000000000000000000000000000FFFF000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000084
      8400008484000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00007B7B7B0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00000000000084
      840000FFFF000084840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00007B7B7B007B7B7B00000000000000000000000000000000000000000000FF
      FF000084840000FFFF0000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000FF
      FF0000FFFF000084840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000FF
      FF0000FFFF0000FFFF0000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000FF000000FF00000000000000000000FFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF00000000000000000000FFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000084840000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000FFFF000084840000FFFF00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF8FC000000000FFF8800000000000
      20F8800000000000007F000000000000007C800000000000003C800000000000
      000F80000000000000048A8000000000000C8A800000000001FF8A8000000000
      E3FC800000000000FFFC8A8000000000FFFF8FC000000000FFF8FFC000000000
      FFF8FFC000000000FFFFFFC00000000000000000000000000000000000000000
      000000000000}
  end
  object JvFormStorage1: TJvFormStorage
    Options = [fpPosition]
    StoredProps.Strings = (
      'nazva.Text'
      'adres.Text'
      'telefon.Text'
      'JvDirectoryEdit1.Text'
      'win_compare.Text')
    StoredValues = <>
    Left = 276
    Top = 100
  end
end