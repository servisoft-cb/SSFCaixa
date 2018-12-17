object fImporta_Func: TfImporta_Func
  Left = 151
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Importar Funcion'#225'rio'
  ClientHeight = 404
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 7
    Top = 157
    Width = 585
    Height = 6
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel3: TBevel
    Left = 7
    Top = 103
    Width = 585
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 41
    Top = 14
    Width = 144
    Height = 13
    Caption = 'Arquivo para Importa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 228
    Top = 116
    Width = 88
    Height = 33
    Caption = 'Importar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 316
    Top = 116
    Width = 88
    Height = 33
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object FilenameEdit1: TFilenameEdit
    Left = 187
    Top = 6
    Width = 308
    Height = 21
    NumGlyphs = 1
    TabOrder = 0
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 192
    Width = 582
    Height = 212
    Align = alBottom
    DataSource = dsmAuxiliar
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
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
    ColCount = 15
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Apel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CargoDepartamento'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrLimiteCredito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtAdmissao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CentroCustos'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bairro'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endereco'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EndNum'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cep'
        Width = 100
        Visible = True
      end>
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 56
    Data = {
      9C0100009619E0BD01000000180000000E0000000000030000009C0107556E69
      646164650100490000000100055749445448020002000A00044170656C010049
      0000000100055749445448020002000F00044E6F6D6501004900000001000557
      4944544802000200460011436172676F446570617274616D656E746F01004900
      0000010005574944544802000200320010566C724C696D697465437265646974
      6F0100490000000100055749445448020002000F000252470100490000000100
      055749445448020002000F000343504601004900000001000557494454480200
      02000F000A447441646D697373616F04000600000000000C43656E74726F4375
      73746F7301004900000001000557494454480200020032000643696461646501
      004900000001000557494454480200020032000642616972726F010049000000
      010005574944544802000200320008456E64657265636F010049000000010005
      5749445448020002003C0006456E644E756D0100490000000100055749445448
      020002000F00034365700100490000000100055749445448020002000F000000}
    object mAuxiliarUnidade: TStringField
      FieldName = 'Unidade'
      Size = 10
    end
    object mAuxiliarApel: TStringField
      FieldName = 'Apel'
      Size = 15
    end
    object mAuxiliarNome: TStringField
      FieldName = 'Nome'
      Size = 70
    end
    object mAuxiliarCargoDepartamento: TStringField
      FieldName = 'CargoDepartamento'
      Size = 50
    end
    object mAuxiliarVlrLimiteCredito: TStringField
      FieldName = 'VlrLimiteCredito'
      Size = 15
    end
    object mAuxiliarRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object mAuxiliarCPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object mAuxiliarDtAdmissao: TDateField
      FieldName = 'DtAdmissao'
    end
    object mAuxiliarCentroCustos: TStringField
      FieldName = 'CentroCustos'
      Size = 50
    end
    object mAuxiliarCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object mAuxiliarBairro: TStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object mAuxiliarEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object mAuxiliarEndNum: TStringField
      FieldName = 'EndNum'
      Size = 15
    end
    object mAuxiliarCep: TStringField
      FieldName = 'Cep'
      Size = 15
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 488
    Top = 56
  end
end
