object fListaPrecos: TfListaPrecos
  Left = 402
  Top = 124
  Width = 530
  Height = 563
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fListaPrecos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 37
      Top = 15
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unidade:'
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 83
      Top = 7
      Width = 266
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'FANTASIA'
      LookupSource = DMProduto.dsEmpresa
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 353
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Consultar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 430
      Top = 2
      Width = 75
      Height = 25
      Hint = 'Gera aquivo com crach'#225' e valor'#13'c:\remessa.txt'
      Caption = 'Im&primir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 31
    Width = 514
    Height = 494
    Align = alClient
    DataSource = DMProduto.dsListaPreco
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Width = 92
        Visible = True
      end>
  end
end
