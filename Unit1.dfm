object Form1: TForm1
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 168
    Top = 32
    Width = 241
    Height = 481
    Caption = #1054#1090#1082#1091#1076#1072
    TabOrder = 0
    object DriveComboBox1: TDriveComboBox
      Left = 48
      Top = 32
      Width = 145
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 48
      Top = 72
      Width = 145
      Height = 113
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 48
      Top = 224
      Width = 145
      Height = 193
      ItemHeight = 13
      TabOrder = 2
      OnChange = FileListBox1Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 936
    Top = 40
    Width = 241
    Height = 481
    Caption = #1050#1091#1076#1072
    TabOrder = 1
    object DirectoryListBox2: TDirectoryListBox
      Left = 48
      Top = 72
      Width = 145
      Height = 105
      FileList = FileListBox2
      ItemHeight = 16
      TabOrder = 0
      OnChange = DirectoryListBox2Change
    end
    object FileListBox2: TFileListBox
      Left = 48
      Top = 224
      Width = 153
      Height = 193
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object DriveComboBox2: TDriveComboBox
    Left = 984
    Top = 64
    Width = 145
    Height = 19
    DirList = DirectoryListBox2
    TabOrder = 2
  end
  object Button1: TButton
    Left = 584
    Top = 64
    Width = 217
    Height = 73
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 760
    Top = 360
    Width = 129
    Height = 73
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1087#1082#1091
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 760
    Top = 448
    Width = 129
    Height = 73
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1087#1082#1091
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 480
    Top = 360
    Width = 145
    Height = 73
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 480
    Top = 448
    Width = 145
    Height = 73
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083
    TabOrder = 7
    OnClick = Button5Click
  end
end
