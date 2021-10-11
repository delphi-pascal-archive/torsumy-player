object Form1: TForm1
  Left = 254
  Top = 128
  Cursor = crHandPoint
  HorzScrollBar.Color = clBlack
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBlack
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'TORSUMY Player'
  ClientHeight = 554
  ClientWidth = 595
  Color = clBlack
  TransparentColor = True
  TransparentColorValue = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clRed
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 18
  object Label5: TLabel
    Left = 476
    Top = 289
    Width = 90
    Height = 18
    Caption = '   '#1063#1040#1057#1058#1054#1058#1067
  end
  object Label6: TLabel
    Left = 467
    Top = 446
    Width = 31
    Height = 18
    Caption = #1053#1048#1047
  end
  object Label7: TLabel
    Left = 506
    Top = 446
    Width = 32
    Height = 18
    Caption = #1057#1056#1044
  end
  object Label8: TLabel
    Left = 544
    Top = 446
    Width = 37
    Height = 18
    Caption = #1042#1067#1057
  end
  object Bevel1: TBevel
    Left = 8
    Top = 476
    Width = 141
    Height = 71
  end
  object Bevel2: TBevel
    Left = 452
    Top = 258
    Width = 134
    Height = 211
  end
  object Bevel3: TBevel
    Left = 305
    Top = 258
    Width = 140
    Height = 211
  end
  object Lire: TSpeedButton
    Left = 8
    Top = 8
    Width = 63
    Height = 24
    Caption = #1057#1058#1040#1056#1058
    Flat = True
    OnClick = LireClick
  end
  object Resumer: TSpeedButton
    Left = 149
    Top = 8
    Width = 86
    Height = 24
    Caption = #1042#1054#1047#1054#1041#1053#1054#1042#1048#1058#1068
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -10
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = ResumerClick
  end
  object Stopper: TSpeedButton
    Left = 78
    Top = 8
    Width = 64
    Height = 24
    Caption = #1057#1058#1054#1055
    Flat = True
    OnClick = StopperClick
  end
  object Charger: TSpeedButton
    Left = 250
    Top = 10
    Width = 87
    Height = 20
    Caption = #1054#1058#1050#1056#1067#1058#1068
    Flat = True
    OnClick = ChargerClick
  end
  object Bevel4: TBevel
    Left = 156
    Top = 258
    Width = 142
    Height = 211
  end
  object Bevel5: TBevel
    Left = 8
    Top = 258
    Width = 141
    Height = 211
  end
  object Bevel6: TBevel
    Left = 156
    Top = 476
    Width = 142
    Height = 71
  end
  object Label2: TLabel
    Left = 56
    Top = 43
    Width = 97
    Height = 18
    Caption = #1043#1056#1054#1052#1050#1054#1057#1058#1068
    Transparent = True
  end
  object Label4: TLabel
    Left = 56
    Top = 82
    Width = 86
    Height = 18
    Hint = ' '
    Caption = #1057#1050#1054#1056#1054#1057#1058#1068
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = Label4Click
  end
  object LabFreqS1: TLabel
    Left = 211
    Top = 97
    Width = 8
    Height = 18
    Caption = '0'
    Transparent = True
  end
  object LabVolS1: TLabel
    Left = 211
    Top = 59
    Width = 8
    Height = 18
    Caption = '0'
    Transparent = True
  end
  object Label9: TLabel
    Left = 66
    Top = 120
    Width = 62
    Height = 18
    Caption = #1041#1040#1051#1040#1053#1057
    Transparent = True
  end
  object LabBalanceS1: TLabel
    Left = 211
    Top = 136
    Width = 8
    Height = 18
    Caption = '0'
    Transparent = True
  end
  object Bevel7: TBevel
    Left = 305
    Top = 476
    Width = 140
    Height = 71
  end
  object Bevel8: TBevel
    Left = 452
    Top = 476
    Width = 134
    Height = 71
  end
  object Label11: TLabel
    Left = 187
    Top = 196
    Width = 55
    Height = 18
    Caption = #1042#1056#1045#1052#1071
  end
  object TpsS1: TLabel
    Left = 248
    Top = 172
    Width = 8
    Height = 18
    Caption = '0'
  end
  object Label1: TLabel
    Left = 391
    Top = 217
    Width = 180
    Height = 26
    Caption = 'www.torsumy.at.ua'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clFuchsia
    Font.Height = -22
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label3: TLabel
    Left = 84
    Top = 217
    Width = 108
    Height = 26
    Caption = 'TORSUMY'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clFuchsia
    Font.Height = -22
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label12: TLabel
    Left = 17
    Top = 217
    Width = 54
    Height = 26
    Caption = 'Artem'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clFuchsia
    Font.Height = -22
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label13: TLabel
    Left = 199
    Top = 217
    Width = 48
    Height = 26
    Caption = '2009'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clFuchsia
    Font.Height = -22
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object LabNomS1: TLabel
    Left = 584
    Top = 16
    Width = 4
    Height = 18
    Alignment = taRightJustify
    Transparent = False
  end
  object TpsSon1: TScrollBar
    Left = 250
    Top = 196
    Width = 336
    Height = 15
    PageSize = 0
    TabOrder = 0
    OnScroll = TpsSon1Scroll
  end
  object Flanger: TCheckBox
    Left = 312
    Top = 265
    Width = 116
    Height = 24
    Caption = #1060#1051#1069#1053#1046#1045#1056
    TabOrder = 1
    OnClick = FlangerClick
  end
  object Gargle: TCheckBox
    Left = 184
    Top = 484
    Width = 96
    Height = 24
    Caption = #1060#1051#1040#1053#1045#1062
    TabOrder = 2
    OnClick = GargleClick
  end
  object Chorus: TCheckBox
    Left = 164
    Top = 265
    Width = 93
    Height = 24
    Caption = #1061#1054#1056
    TabOrder = 3
    OnClick = ChorusClick
  end
  object Reverb: TCheckBox
    Left = 463
    Top = 500
    Width = 114
    Height = 21
    Caption = #1056#1045#1042#1045#1056#1041#1045#1056#1040#1058#1054#1056
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -10
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = ReverbClick
  end
  object Echo: TCheckBox
    Left = 352
    Top = 502
    Width = 60
    Height = 21
    Caption = #1069#1061#1054
    TabOrder = 5
    OnClick = EchoClick
  end
  object Compressor: TCheckBox
    Left = 16
    Top = 484
    Width = 129
    Height = 24
    Caption = #1050#1054#1052#1055#1056#1045#1057#1057#1048#1071
    TabOrder = 6
    OnClick = CompressorClick
  end
  object Disto: TCheckBox
    Left = 16
    Top = 265
    Width = 120
    Height = 22
    Caption = #1048#1057#1050#1040#1046#1045#1053#1048#1045
    TabOrder = 7
    OnClick = DistoClick
  end
  object ParaEQLOW: TTrackBar
    Left = 476
    Top = 312
    Width = 20
    Height = 126
    Max = 15
    Min = -15
    Orientation = trVertical
    Frequency = 10
    TabOrder = 8
    ThumbLength = 7
    OnChange = ParaEQLOWChange
  end
  object ParaEQMED: TTrackBar
    Left = 515
    Top = 312
    Width = 19
    Height = 126
    Max = 15
    Min = -15
    Orientation = trVertical
    Frequency = 10
    TabOrder = 9
    ThumbLength = 7
    OnChange = ParaEQMEDChange
  end
  object ParaEQHIGH: TTrackBar
    Left = 554
    Top = 312
    Width = 18
    Height = 126
    Max = 15
    Min = -15
    Orientation = trVertical
    Frequency = 10
    TabOrder = 10
    ThumbLength = 7
    OnChange = ParaEQHIGHChange
  end
  object Equaliseur: TCheckBox
    Left = 461
    Top = 264
    Width = 123
    Height = 20
    Caption = #1069#1050#1042#1040#1051#1040#1049#1047#1045#1056
    TabOrder = 11
    OnClick = EqualiseurClick
  end
  object CompressorBar: TTrackBar
    Left = 16
    Top = 515
    Width = 126
    Height = 17
    Max = 60
    Frequency = 10
    TabOrder = 12
    ThumbLength = 7
    OnChange = CompressorBarChange
  end
  object FWetS1: TTrackBar
    Left = 320
    Top = 296
    Width = 18
    Height = 158
    Max = 99
    Orientation = trVertical
    TabOrder = 13
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = FlangerChange
  end
  object FDeptS1: TTrackBar
    Left = 343
    Top = 296
    Width = 24
    Height = 158
    Max = 99
    Orientation = trVertical
    Position = 25
    TabOrder = 14
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = FlangerChange
  end
  object FFeedS1: TTrackBar
    Left = 367
    Top = 296
    Width = 29
    Height = 158
    Max = 99
    Min = -99
    Orientation = trVertical
    TabOrder = 15
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = FlangerChange
  end
  object FFreqS1: TTrackBar
    Left = 390
    Top = 296
    Width = 24
    Height = 158
    Orientation = trVertical
    TabOrder = 16
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = FlangerChange
  end
  object FDelayS1: TTrackBar
    Left = 414
    Top = 296
    Width = 24
    Height = 158
    Max = 4
    Orientation = trVertical
    TabOrder = 17
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = FlangerChange
  end
  object CdelayS1: TTrackBar
    Left = 265
    Top = 296
    Width = 24
    Height = 158
    Max = 20
    Orientation = trVertical
    Position = 20
    TabOrder = 18
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ChorusChange
  end
  object CFreqS1: TTrackBar
    Left = 242
    Top = 296
    Width = 16
    Height = 158
    Orientation = trVertical
    Position = 10
    TabOrder = 19
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ChorusChange
  end
  object CfeedS1: TTrackBar
    Left = 218
    Top = 296
    Width = 24
    Height = 158
    Max = 99
    Min = -99
    Orientation = trVertical
    TabOrder = 20
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ChorusChange
  end
  object CDeptS1: TTrackBar
    Left = 196
    Top = 296
    Width = 15
    Height = 158
    Max = 99
    Orientation = trVertical
    Position = 75
    TabOrder = 21
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ChorusChange
  end
  object CWetS1: TTrackBar
    Left = 172
    Top = 296
    Width = 16
    Height = 158
    Max = 99
    Orientation = trVertical
    Position = 99
    TabOrder = 22
    ThumbLength = 7
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ChorusChange
  end
  object DiGainS1: TTrackBar
    Left = 24
    Top = 296
    Width = 16
    Height = 158
    Orientation = trVertical
    TabOrder = 23
    ThumbLength = 7
    OnChange = DistoChange
  end
  object DiEdgeS1: TTrackBar
    Left = 44
    Top = 296
    Width = 20
    Height = 158
    Orientation = trVertical
    TabOrder = 24
    ThumbLength = 7
    OnChange = DistoChange
  end
  object DiPEqCFreqS1: TTrackBar
    Left = 71
    Top = 296
    Width = 13
    Height = 158
    Orientation = trVertical
    TabOrder = 25
    ThumbLength = 7
    OnChange = DistoChange
  end
  object DiPostEqBS1: TTrackBar
    Left = 94
    Top = 296
    Width = 16
    Height = 158
    Orientation = trVertical
    TabOrder = 26
    ThumbLength = 7
    OnChange = DistoChange
  end
  object DiPreLowOffS1: TTrackBar
    Left = 118
    Top = 296
    Width = 15
    Height = 158
    Orientation = trVertical
    TabOrder = 27
    ThumbLength = 7
    OnChange = DistoChange
  end
  object GadwRateHzS1: TTrackBar
    Left = 164
    Top = 516
    Width = 125
    Height = 20
    Frequency = 10
    TabOrder = 28
    ThumbLength = 7
    OnChange = GadwRateHzS1Change
  end
  object Volume: TTrackBar
    Left = 8
    Top = 62
    Width = 196
    Height = 15
    Max = 100
    Frequency = 10
    TabOrder = 29
    ThumbLength = 7
    OnChange = VolumeChange
  end
  object Frequence: TTrackBar
    Left = 8
    Top = 101
    Width = 196
    Height = 14
    Frequency = 10
    TabOrder = 30
    ThumbLength = 7
    OnChange = FrequenceChange
  end
  object Balance: TTrackBar
    Left = 8
    Top = 139
    Width = 196
    Height = 15
    Frequency = 10
    TabOrder = 31
    ThumbLength = 7
    OnChange = BalanceChange
  end
  object Bibliotheque: TListBox
    Left = 250
    Top = 37
    Width = 336
    Height = 127
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 32
    OnClick = BibliothequeClick
  end
  object Bdd: TOpenDialog
    Filter = #1052#1059#1047#1054#1053'|*.wav;*.mp3|'#1057#1055#1048#1057#1054#1050' '#1052#1059#1047#1054#1053#1040'|*.dat'
    Left = 296
    Top = 48
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 264
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 48
    object Sauver: TMenuItem
      Caption = '-='#1057#1054#1061#1056#1040#1053#1048#1058#1068' '#1057#1055#1048#1057#1054#1050'=-'
      OnClick = SauverClick
    end
    object Effacer: TMenuItem
      Caption = '-='#1054#1063#1048#1057#1058#1048#1058#1068' '#1057#1055#1048#1057#1054#1050'=-'
      OnClick = EffacerClick
    end
    object Charge: TMenuItem
      Caption = '-='#1054#1050#1056#1067#1058#1068' '#1057#1055#1048#1057#1054#1050'=-'
      OnClick = ChargeClick
    end
    object Effacer1: TMenuItem
      Caption = '-='#1059#1044#1040#1051#1048#1058#1068' '#1057#1055#1048#1057#1054#1050'=-'
      OnClick = Effacer1Click
    end
    object TORSUMY: TMenuItem
      Caption = '-=TORSUMYPlayer=-'
    end
  end
  object BddS: TSaveDialog
    Filter = #1057#1055#1048#1057#1054#1050'|*.dat'
    Left = 328
    Top = 48
  end
end
