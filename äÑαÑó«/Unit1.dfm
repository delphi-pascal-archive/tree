object Form1: TForm1
  Left = 213
  Top = 125
  Width = 675
  Height = 615
  Caption = #1044#1077#1088#1077#1074#1086
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Button1: TButton
    Left = 8
    Top = 39
    Width = 105
    Height = 26
    Caption = #1053#1072#1088#1080#1089#1086#1074#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 72
    Width = 105
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 8
    Width = 105
    Height = 25
    LineSize = 0
    Max = 8
    Min = 6
    PageSize = 0
    Frequency = 3
    Position = 8
    TabOrder = 2
    ThumbLength = 16
  end
  object Button3: TButton
    Left = 8
    Top = 104
    Width = 105
    Height = 25
    Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
    TabOrder = 3
    OnClick = Button3Click
  end
end
