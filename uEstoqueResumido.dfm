object fEstoqueResumido: TfEstoqueResumido
  Left = 175
  Top = 170
  Width = 800
  Height = 550
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fEstoqueResumido'
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 800
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
    Width = 784
    Height = 41
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
      LookupSource = DmEstoque.dsEmpresa
      TabOrder = 0
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 74
    Width = 784
    Height = 438
    Align = alClient
    DataSource = DmEstoque.dsEstoqueAtual
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUTO_ID'
        Title.Caption = 'C'#211'DIGO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'PRODUTO'
        Width = 474
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 784
    Height = 33
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Consultar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 83
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
end
