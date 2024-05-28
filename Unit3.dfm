object Form3: TForm3
  Left = 192
  Top = 119
  Width = 461
  Height = 339
  AutoSize = True
  BorderIcons = []
  Caption = 'Options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 2
    Top = 238
    Width = 443
    Height = 63
    Caption = 'Other Options'
    TabOrder = 0
    object Label5: TLabel
      Left = 238
      Top = 18
      Width = 99
      Height = 13
      Caption = 'Time Show Message'
    end
    object CheckBox5: TCheckBox
      Left = 6
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Chat On Top'
      TabOrder = 0
    end
    object CheckBox6: TCheckBox
      Left = 6
      Top = 38
      Width = 103
      Height = 17
      Caption = 'Message On Top'
      TabOrder = 1
    end
    object CheckBox7: TCheckBox
      Left = 110
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Save History'
      TabOrder = 2
    end
    object CheckBox8: TCheckBox
      Left = 110
      Top = 38
      Width = 115
      Height = 17
      Caption = 'Use Messge'
      TabOrder = 3
    end
    object Button8: TButton
      Left = 330
      Top = 34
      Width = 53
      Height = 23
      Caption = 'OK'
      TabOrder = 4
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 386
      Top = 34
      Width = 51
      Height = 23
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = Button9Click
    end
    object CheckBox9: TCheckBox
      Left = 200
      Top = 38
      Width = 67
      Height = 17
      Caption = 'Add Time'
      TabOrder = 6
    end
    object SpinEdit1: TSpinEdit
      Left = 200
      Top = 14
      Width = 37
      Height = 22
      MaxValue = 99
      MinValue = 1
      TabOrder = 7
      Value = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 60
    Width = 443
    Height = 177
    Caption = 'Sounds Options'
    TabOrder = 1
    object Edit2: TLabeledEdit
      Left = 20
      Top = 34
      Width = 343
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Startup'
      ReadOnly = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 366
      Top = 34
      Width = 71
      Height = 21
      Caption = 'Browse'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 6
      Top = 36
      Width = 17
      Height = 17
      Caption = 'CheckBox1'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object Edit3: TLabeledEdit
      Left = 20
      Top = 72
      Width = 343
      Height = 21
      EditLabel.Width = 89
      EditLabel.Height = 13
      EditLabel.Caption = 'Incoming Message'
      ReadOnly = True
      TabOrder = 3
    end
    object Button2: TButton
      Left = 366
      Top = 72
      Width = 71
      Height = 21
      Caption = 'Browse'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit4: TLabeledEdit
      Left = 20
      Top = 110
      Width = 343
      Height = 21
      EditLabel.Width = 68
      EditLabel.Height = 13
      EditLabel.Caption = 'Message Sent'
      ReadOnly = True
      TabOrder = 5
    end
    object Button3: TButton
      Left = 366
      Top = 110
      Width = 71
      Height = 21
      Caption = 'Browse'
      TabOrder = 6
      OnClick = Button3Click
    end
    object Edit5: TLabeledEdit
      Left = 20
      Top = 146
      Width = 343
      Height = 21
      EditLabel.Width = 74
      EditLabel.Height = 13
      EditLabel.Caption = 'Contact OnLine'
      ReadOnly = True
      TabOrder = 7
    end
    object Button4: TButton
      Left = 366
      Top = 146
      Width = 71
      Height = 21
      Caption = 'Browse'
      TabOrder = 8
      OnClick = Button4Click
    end
    object CheckBox2: TCheckBox
      Left = 6
      Top = 74
      Width = 15
      Height = 17
      Caption = 'CheckBox2'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object CheckBox3: TCheckBox
      Left = 6
      Top = 110
      Width = 15
      Height = 17
      Caption = 'CheckBox3'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object CheckBox4: TCheckBox
      Left = 6
      Top = 148
      Width = 17
      Height = 17
      Caption = 'CheckBox4'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 443
    Height = 59
    Caption = 'Main Options'
    TabOrder = 2
    object Label2: TLabel
      Left = 208
      Top = 14
      Width = 46
      Height = 13
      Caption = 'Chat Font'
    end
    object Label3: TLabel
      Left = 266
      Top = 14
      Width = 49
      Height = 13
      Caption = 'Chat Color'
    end
    object Label4: TLabel
      Left = 382
      Top = 14
      Width = 57
      Height = 13
      Caption = 'Dialog Color'
    end
    object Label1: TLabel
      Left = 322
      Top = 14
      Width = 54
      Height = 13
      Caption = 'Dialog Font'
    end
    object Edit1: TLabeledEdit
      Left = 8
      Top = 32
      Width = 93
      Height = 21
      EditLabel.Width = 22
      EditLabel.Height = 13
      EditLabel.Caption = 'Nick'
      TabOrder = 0
    end
    object Button5: TButton
      Left = 202
      Top = 32
      Width = 57
      Height = 23
      Caption = 'Change'
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 262
      Top = 32
      Width = 57
      Height = 23
      Caption = 'Change'
      TabOrder = 2
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 382
      Top = 32
      Width = 57
      Height = 23
      Caption = 'Change'
      TabOrder = 3
      OnClick = Button7Click
    end
    object Button10: TButton
      Left = 322
      Top = 32
      Width = 57
      Height = 23
      Caption = 'Change'
      TabOrder = 4
      OnClick = Button10Click
    end
    object Edit6: TLabeledEdit
      Left = 104
      Top = 32
      Width = 93
      Height = 21
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'IP (*.*.*.255)'
      TabOrder = 5
      Text = '192.168.0.255'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'WAV Files|*.wav'
    Left = 412
    Top = 64
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 384
    Top = 64
  end
  object ColorDialog1: TColorDialog
    Left = 356
    Top = 66
  end
end
