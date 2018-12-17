object fConvVendas: TfConvVendas
  Left = 192
  Top = 124
  Width = 564
  Height = 198
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fConvVendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 12
    Top = 13
    Width = 90
    Height = 13
    Alignment = taRightJustify
    Caption = 'Arquivo de retorno:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 470
    Top = 2
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object FilenameEdit1: TFilenameEdit
    Left = 104
    Top = 5
    Width = 366
    Height = 21
    DefaultExt = '*.txt'
    Filter = 'Text files (*.txt)|*.txt|All files (*.*)|*.*'
    NumGlyphs = 1
    TabOrder = 1
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 30
    Width = 548
    Height = 130
    Align = alBottom
    DataSource = dsFuncionarios
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
  end
  object cdsFuncionarios: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    Left = 64
    Top = 64
    Data = {
      5E0000009619E0BD0100000018000000030000000000030000005E0007456D70
      7265736101004900000001000557494454480200020004000643726163686104
      00010000000000044E6F6D650100490000000100055749445448020002006400
      0000}
    object cdsFuncionariosEmpresa: TStringField
      DisplayWidth = 10
      FieldName = 'Empresa'
      Size = 4
    end
    object cdsFuncionariosCracha: TIntegerField
      DisplayWidth = 12
      FieldName = 'Cracha'
    end
    object cdsFuncionariosNome: TStringField
      DisplayWidth = 120
      FieldName = 'Nome'
      Size = 100
    end
  end
  object dsFuncionarios: TDataSource
    DataSet = cdsFuncionarios
    Left = 96
    Top = 64
  end
  object sdsCupomFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.ID_CUPOM, CF.DTEMISSAO, CF.FILIAL, C.NOME NOMEPESSOA'#13#10 +
      'FROM CUPOMFISCAL CF'#13#10'LEFT JOIN PESSOA_DIGITAL_ORA C '#13#10'ON (CF.COD' +
      'PESSOA = C.PESSOA)'#13#10'AND (CF.CODEMPRESA = C.EMPRESA)'#13#10'WHERE CF.DT' +
      'EMISSAO BETWEEN '#39'10/26/2012'#39' AND '#39'11/01/2012'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 96
    object sdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCupomFiscalNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      ProviderFlags = []
      Size = 50
    end
    object sdsCupomFiscalID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      Required = True
    end
  end
  object dspCupomFiscal: TDataSetProvider
    DataSet = sdsCupomFiscal
    Left = 96
    Top = 96
  end
  object cdsCupomFiscal: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DTEMISSAO'
        DataType = ftDate
      end
      item
        Name = 'FILIAL'
        DataType = ftInteger
      end
      item
        Name = 'NOMEPESSOA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ID_CUPOM'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_CUPOM'
    Params = <>
    ProviderName = 'dspCupomFiscal'
    StoreDefs = True
    Left = 128
    Top = 96
    object cdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomFiscalNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      ProviderFlags = []
      Size = 50
    end
    object cdsCupomFiscalID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      Required = True
    end
  end
  object dsCupomFiscal: TDataSource
    DataSet = cdsCupomFiscal
    Left = 160
    Top = 96
  end
end
