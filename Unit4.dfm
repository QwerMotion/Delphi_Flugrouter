object Reiserouten: TReiserouten
  Left = 0
  Top = 0
  Caption = 'Reiserouten-Generator'
  ClientHeight = 551
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 74
    Width = 92
    Height = 15
    Caption = '1. Landschaftstyp'
  end
  object Label2: TLabel
    Left = 82
    Top = 156
    Width = 42
    Height = 15
    Caption = '2. Klima'
  end
  object Label3: TLabel
    Left = 49
    Top = 240
    Width = 75
    Height = 15
    Caption = '3. Aktivit'#228'tsart'
  end
  object LabelReiseziel: TLabel
    Left = 72
    Top = 320
    Width = 50
    Height = 15
    Caption = 'Reiseziel: '
  end
  object ErgebnisReiseziel: TLabel
    Left = 184
    Top = 320
    Width = 125
    Height = 15
    Caption = '-------------------------'
  end
  object LandschaftsAuswahl: TComboBox
    Left = 184
    Top = 71
    Width = 145
    Height = 23
    TabOrder = 0
    Text = 'Landschaft'
    Items.Strings = (
      'Stadt'
      'Gebirge'
      'Strand')
  end
  object Klimaauswahl: TComboBox
    Left = 184
    Top = 153
    Width = 145
    Height = 23
    TabOrder = 1
    Text = 'Klima'
    Items.Strings = (
      'warm'
      'kalt'
      'mild')
  end
  object Aktivitätsauswahl: TComboBox
    Left = 184
    Top = 237
    Width = 145
    Height = 23
    TabOrder = 2
    Text = 'Aktivit'#228't'
    Items.Strings = (
      'Abenteuer'
      'Kultur'
      'Entspannung')
  end
  object Button1: TButton
    Left = 72
    Top = 392
    Width = 257
    Height = 65
    Caption = 'Generieren'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 464
    Top = 48
    Width = 131
    Height = 41
    Caption = 'Zur'#252'ck'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 464
    Top = 120
    Width = 131
    Height = 41
    Caption = 'Anleitung'
    TabOrder = 5
    OnClick = Button3Click
  end
end
