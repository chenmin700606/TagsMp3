object Form_TagMP3Editor: TForm_TagMP3Editor
  Left = 448
  Top = 95
  Width = 753
  Height = 440
  Caption = 'Tag MP3 Editor  -  rogerio.rex@gmail.com'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label_Info2: TLabel
    Left = 265
    Top = 359
    Width = 7
    Height = 14
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label_Info1: TLabel
    Left = 15
    Top = 359
    Width = 7
    Height = 14
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Panel_Rename: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      737
      105)
    object Label_Artist: TLabel
      Left = 16
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Art'#237'sta'
    end
    object Label_Album: TLabel
      Left = 352
      Top = 48
      Width = 29
      Height = 13
      Caption = #193'lbum'
    end
    object Label_Ano: TLabel
      Left = 16
      Top = 75
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object Label_Genre: TLabel
      Left = 144
      Top = 75
      Width = 35
      Height = 13
      Caption = 'G'#234'nero'
    end
    object Edit_Pasta: TDirectoryEdit
      Left = 8
      Top = 10
      Width = 715
      Height = 21
      DialogKind = dkWin32
      NumGlyphs = 1
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'D:\Documentos\Musica'
      OnChange = Edit_PastaChange
    end
    object Button_Exec: TBitBtn
      Left = 647
      Top = 41
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Executar'
      TabOrder = 1
      OnClick = Button_ExecClick
      Glyph.Data = {
        7A030000424D7A0300000000000036000000280000000E000000130000000100
        1800000000004403000000000000000000000000000000000000CC483F328DCD
        398FCBCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
        3FCC483F0000CC483F4F99D9338DCE3E8FC9CC483FCC483FCC483FCC483FCC48
        3FCC483FCC483FCC483FCC483FCC483F0000CC483FCC483F338CCC5EB7E24695
        CBCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F0000CC48
        3FCC483F398ECC76CBEC8CE6F9358ECECC483FCC483FCC483FCC483FCC483FCC
        483FCC483FCC483F0000CC483FCC483FCC483F439CD5A9F9FF80DFF7378FCFCC
        483FCC483FCC483FCC483FCC483FCC483FCC483F0000CC483FCC483FCC483F31
        89CDB1F2FE8DEDFD7BDCF5398FD0CC483FCC483FCC483FCC483FCC483FCC483F
        0000CC483FCC483FCC483F5498CC78CBECA9F0FE81E9FB78DAF53B90D0CC483F
        CC483FCC483FCC483FCC483F0000CC483FCC483FCC483FCC483F48A5DBE7FEFF
        77E1F87EE5FA74D8F44197D4CC483FCC483FCC483FCC483F00003E92D14BA5DB
        4AA2DA48A1D9429CD7B6F2FD87E4F875E0F778E3F977E2F9459CD7CC483FCC48
        3FCC483F00003F8FD184ECFD75E4FA75E3FA73E1F96EDEF86DDDF76EDDF76EDE
        F870E0F970DFF8469DD8CC483FCC483F00005097D085DEF670DDF76CDCF66CDC
        F66ADCF69FEBFB9FEDFCA0EEFDA0EFFDA2F1FFA3F0FD4AA3DBCC483F00004F99
        D97ECFEF7AE0F864D9F565D9F565DBF650B2E23D8ACF3F8ED03F8FD1408FD242
        92D24595D44797D50000CC483F4F99D98CE5F95DD5F460D6F463D7F576E0F84C
        A7DDCC483FCC483FCC483FCC483FCC483FCC483F0000CC483F4F99D9B0EEFB56
        D3F35AD4F35AD4F37EDFF767D5F34693D4CC483FCC483FCC483FCC483FCC483F
        0000CC483F459BD8CFF7FF4ED0F254D1F255D2F25CD4F3A9EDFA49ACE14F99D9
        CC483FCC483FCC483FCC483F0000CC483F5599D3C3F1FB70D8F44CCFF14FCFF1
        4CCEF19DE6F87BD9F34894D5CC483FCC483FCC483FCC483F0000CC483F4F99D9
        A2DCF3A0E7F941CAF145CBF144CBF148CDF1DDFAFE50AEE24F99D9CC483FCC48
        3FCC483F0000CC483F4F99D989C7ECDAFCFF94E7F998E7F997E7F994E7F9A7ED
        FBB0ECF94E99D8CC483FCC483FCC483F0000CC483FCC483F4F9AD94C98D84E97
        D84F97D84F98D84E97D84E98D84F99D9529CDB549EDBCC483FCC483F0000}
    end
    object Edit_Artist: TEdit
      Left = 56
      Top = 45
      Width = 250
      Height = 21
      TabOrder = 2
    end
    object Edit_Album: TEdit
      Left = 392
      Top = 45
      Width = 250
      Height = 21
      TabOrder = 3
    end
    object Edit_Ano: TEdit
      Left = 56
      Top = 73
      Width = 65
      Height = 21
      TabOrder = 4
    end
    object Edit_Genre: TEdit
      Left = 184
      Top = 73
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object ListBox_Esquerda: TListBox
    Left = 16
    Top = 104
    Width = 330
    Height = 249
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBoxClick
  end
  object ListBox_Direita: TListBox
    Left = 392
    Top = 104
    Width = 330
    Height = 249
    ItemHeight = 13
    TabOrder = 2
  end
  object Button_TodosIncluir: TButton
    Tag = 1
    Left = 356
    Top = 136
    Width = 25
    Height = 25
    Caption = '>>'
    TabOrder = 3
    OnClick = Button_MoverClick
  end
  object Button_Incluir: TButton
    Tag = 2
    Left = 356
    Top = 168
    Width = 25
    Height = 25
    Caption = '>'
    TabOrder = 4
    OnClick = Button_MoverClick
  end
  object Button_Exclur: TButton
    Tag = 3
    Left = 356
    Top = 200
    Width = 25
    Height = 25
    Caption = '<'
    TabOrder = 5
    OnClick = Button_MoverClick
  end
  object Button_TodosExclur: TButton
    Tag = 4
    Left = 356
    Top = 232
    Width = 25
    Height = 25
    Caption = '<<'
    TabOrder = 6
    OnClick = Button_MoverClick
  end
end
