object fEmpresaC: TfEmpresaC
  Left = 236
  Top = 128
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'fEmpresaC'
  ClientHeight = 464
  ClientWidth = 771
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 41
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 771
    Height = 423
    Align = alClient
    DataSource = DMEmpresa.dsEmpresa
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 14
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESSOA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDLOGO'
        Visible = True
      end>
  end
end
