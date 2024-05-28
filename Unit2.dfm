object Form2: TForm2
  Left = 653
  Top = 124
  AlphaBlend = True
  AlphaBlendValue = 0
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 170
  ClientWidth = 192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 17
    Width = 192
    Height = 153
    Cursor = crArrow
    Align = alClient
    BevelKind = bkSoft
    ReadOnly = True
    TabOrder = 0
    OnClick = Memo1Click
    OnDblClick = Memo1DblClick
    OnMouseDown = memo1MouseDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 192
    Height = 17
    Align = alTop
    BorderStyle = bsSingle
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnMouseDown = Panel1MouseDown
    OnMouseUp = Panel1MouseUp
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Top = 2
  end
end
