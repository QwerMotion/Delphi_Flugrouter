object OrakelForm: TOrakelForm
  Left = 0
  Top = 0
  Caption = 'Orakel von Delphi'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object T: TLabel
    Left = 24
    Top = 72
    Width = 394
    Height = 15
    Caption = 
      'Bitte geben Sie eine Frage ein, die sich mit Ja xoder Nein beant' +
      'worten l'#228'sst!'
  end
  object Label1: TLabel
    Left = 24
    Top = 139
    Width = 35
    Height = 15
    Caption = 'Frage: '
  end
  object Label2: TLabel
    Left = 12
    Top = 288
    Width = 46
    Height = 15
    Caption = 'Antwort:'
  end
  object FrageEdit: TEdit
    Left = 65
    Top = 129
    Width = 457
    Height = 137
    Constraints.MinHeight = 137
    Constraints.MinWidth = 457
    TabOrder = 0
  end
  object AntwortKnopf: TButton
    Left = 72
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Antworten'
    TabOrder = 1
    OnClick = AntwortKnopfClick
  end
  object zurückKnopf: TButton
    Left = 176
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Zur'#252'ck'
    TabOrder = 2
    OnClick = zurückKnopfClick
  end
  object AntwortEdit: TEdit
    Left = 64
    Top = 285
    Width = 458
    Height = 52
    Constraints.MinHeight = 52
    Constraints.MinWidth = 458
    TabOrder = 3
  end
  object AntwortTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = AntwortTimerTimer
    Left = 8
    Top = 8
  end
end
