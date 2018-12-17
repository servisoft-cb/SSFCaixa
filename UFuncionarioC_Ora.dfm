object fFuncionarioC_Ora: TfFuncionarioC_Ora
  Left = 275
  Top = 80
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Funcion'#225'rio'
  ClientHeight = 478
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 52
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 86
      Top = 35
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Funcion'#225'rio:'
    end
    object Label4: TLabel
      Left = 4
      Top = 11
      Width = 140
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa / Unidade / Crach'#225':'
    end
    object Label7: TLabel
      Left = 416
      Top = 33
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ordenar por:'
    end
    object Edit1: TEdit
      Left = 145
      Top = 27
      Width = 264
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object ComboBox3: TComboBox
      Left = 477
      Top = 25
      Width = 188
      Height = 21
      Style = csDropDownList
      DropDownCount = 4
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 4
      Text = 'Nome'
      Items.Strings = (
        'Crach'#225
        'Nome'
        'Empresa/Crach'#225
        'Emresa/Nome')
    end
    object Edit2: TEdit
      Left = 215
      Top = 3
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyDown = Edit2KeyDown
    end
    object Edit3: TEdit
      Left = 145
      Top = 3
      Width = 34
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 4
      TabOrder = 0
      Text = '0001'
      OnKeyDown = Edit2KeyDown
    end
    object BitBtn3: TBitBtn
      Left = 666
      Top = 20
      Width = 101
      Height = 25
      Caption = '&Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn3Click
    end
    object Edit4: TEdit
      Left = 180
      Top = 3
      Width = 34
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 4
      TabOrder = 1
      OnKeyDown = Edit2KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 667
      Top = 3
      Width = 75
      Height = 19
      Caption = 'Teste'
      TabOrder = 6
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 52
    Width = 784
    Height = 407
    Align = alClient
    DataSource = dmOracle.dsFuncionarioOra
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'EMPRESA'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESSOA'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 396
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 459
    Width = 784
    Height = 19
    Panels = <
      item
        Text = 'Duplo clique para Consultar/Alterar'
        Width = 300
      end
      item
        Width = 50
      end>
  end
end
