object fCupomFiscalC: TfCupomFiscalC
  Left = 24
  Top = 134
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Cupom Fiscal'
  ClientHeight = 505
  ClientWidth = 989
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 989
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 44
      Height = 13
      Caption = 'Dt.Inicial:'
    end
    object Label2: TLabel
      Left = 160
      Top = 13
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object NxButton1: TNxButton
      Left = 279
      Top = 3
      Width = 85
      Caption = 'F5 - &Consultar'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 364
      Top = 3
      Width = 85
      Caption = 'F3 - &Inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 449
      Top = 3
      Width = 85
      Caption = 'F2 - C&r'#233'dito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = NxButton3Click
    end
    object NxButton4: TNxButton
      Left = 534
      Top = 3
      Width = 85
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = NxButton4Click
    end
    object NxButton5: TNxButton
      Left = 789
      Top = 3
      Width = 85
      Caption = 'F6 - Calibrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = NxButton5Click
    end
    object NxButton6: TNxButton
      Left = 619
      Top = 3
      Width = 85
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = NxButton6Click
    end
    object NxButton7: TNxButton
      Left = 704
      Top = 3
      Width = 85
      Caption = 'Encerrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = NxButton7Click
    end
    object NxButton8: TNxButton
      Left = 874
      Top = 3
      Width = 85
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnClick = NxButton8Click
    end
    object NxDatePicker1: TNxDatePicker
      Left = 56
      Top = 5
      Width = 90
      Height = 21
      TabOrder = 0
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 186
      Top = 5
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 73
    Width = 989
    Height = 432
    Align = alClient
    DataSource = dsCupomFiscal
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
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CUPOM'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Mov.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HREMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Emiss'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'clFormaPgto'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Pagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRTOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRRECEBIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Recebido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRTROCO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Troco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPESSOA'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Funcion'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APEL_EBS'
        Title.Alignment = taCenter
        Title.Caption = 'Empresa / Crach'#225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'USU'#193'RIO'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 989
    Height = 40
    Align = alTop
    TabOrder = 2
    Visible = False
    object BitBtn4: TBitBtn
      Left = 4
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Op'#231#245'es do Cupom'
      TabOrder = 0
      Visible = False
      OnClick = BitBtn4Click
    end
    object BitBtn6: TBitBtn
      Left = 125
      Top = 8
      Width = 121
      Height = 25
      Caption = ' (F12) Abrir Gaveta'
      TabOrder = 1
      Visible = False
      OnClick = BitBtn6Click
    end
    object ckTeste: TCheckBox
      Left = 768
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Teste'
      Checked = True
      State = cbChecked
      TabOrder = 2
      Visible = False
    end
    object ckMostrarSitTrib: TCheckBox
      Left = 768
      Top = 21
      Width = 161
      Height = 17
      Caption = 'Mostrar Situa'#231#227'o Tribut'#225'ria'
      TabOrder = 3
      Visible = False
    end
    object ckExcluir: TCheckBox
      Left = 676
      Top = 7
      Width = 81
      Height = 17
      Caption = 'Excluir'
      TabOrder = 4
      Visible = False
    end
  end
  object sdsCupomFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.*, P.NOME NOMEPESSOA'#13#10'FROM CUPOMFISCAL CF'#13#10'LEFT JOIN P' +
      'ESSOA_DIGITAL_ORA P ON (CF.CODPESSOA = P.PESSOA AND CF.CODUNIDAD' +
      'E = P.UNIDADE)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 600
    Top = 256
    object sdsCupomFiscalID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      Required = True
    end
    object sdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object sdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsCupomFiscalTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object sdsCupomFiscalCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object sdsCupomFiscalPERCVENDEDOR: TFloatField
      FieldName = 'PERCVENDEDOR'
    end
    object sdsCupomFiscalBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object sdsCupomFiscalVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object sdsCupomFiscalVLRPRODUTOS: TFloatField
      FieldName = 'VLRPRODUTOS'
    end
    object sdsCupomFiscalVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsCupomFiscalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalVLRRECEBIDO: TFloatField
      FieldName = 'VLRRECEBIDO'
    end
    object sdsCupomFiscalVLRTROCO: TFloatField
      FieldName = 'VLRTROCO'
    end
    object sdsCupomFiscalNUMMOVFINANCEIRO: TIntegerField
      FieldName = 'NUMMOVFINANCEIRO'
    end
    object sdsCupomFiscalCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object sdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCupomFiscalCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object sdsCupomFiscalCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object sdsCupomFiscalNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      ProviderFlags = []
      Size = 60
    end
    object sdsCupomFiscalAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object sdsCupomFiscalNUMLANCAMENTO_EBS: TIntegerField
      FieldName = 'NUMLANCAMENTO_EBS'
    end
    object sdsCupomFiscalCONFIRMACAO_EBS: TStringField
      FieldName = 'CONFIRMACAO_EBS'
      Size = 5
    end
    object sdsCupomFiscalAPEL_VENDEDOR_EBS: TStringField
      FieldName = 'APEL_VENDEDOR_EBS'
      Size = 15
    end
    object sdsCupomFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object dspCupomFiscal: TDataSetProvider
    DataSet = sdsCupomFiscal
    Left = 632
    Top = 256
  end
  object cdsCupomFiscal: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_CUPOM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUMCUPOM'
        DataType = ftInteger
      end
      item
        Name = 'DTEMISSAO'
        DataType = ftDate
      end
      item
        Name = 'HREMISSAO'
        DataType = ftTime
      end
      item
        Name = 'TIPOPGTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODCONDPGTO'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'PERCVENDEDOR'
        DataType = ftFloat
      end
      item
        Name = 'BASEICMS'
        DataType = ftFloat
      end
      item
        Name = 'VLRICMS'
        DataType = ftFloat
      end
      item
        Name = 'VLRPRODUTOS'
        DataType = ftFloat
      end
      item
        Name = 'VLRDESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'VLRTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'CANCELADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VLRRECEBIDO'
        DataType = ftFloat
      end
      item
        Name = 'VLRTROCO'
        DataType = ftFloat
      end
      item
        Name = 'NUMMOVFINANCEIRO'
        DataType = ftInteger
      end
      item
        Name = 'CODCONTA'
        DataType = ftInteger
      end
      item
        Name = 'FILIAL'
        DataType = ftInteger
      end
      item
        Name = 'CODTIPOCOBRANCA'
        DataType = ftInteger
      end
      item
        Name = 'CODPESSOA'
        DataType = ftInteger
      end
      item
        Name = 'NOMEPESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'APEL_EBS'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NUMLANCAMENTO_EBS'
        DataType = ftInteger
      end
      item
        Name = 'CONFIRMACAO_EBS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'APEL_VENDEDOR_EBS'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsCupomFiscalIndex1'
        Fields = 'ID_CUPOM'
        Options = [ixDescending]
      end>
    IndexName = 'cdsCupomFiscalIndex1'
    Params = <>
    ProviderName = 'dspCupomFiscal'
    StoreDefs = True
    OnCalcFields = cdsCupomFiscalCalcFields
    Left = 664
    Top = 256
    object cdsCupomFiscalID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      Required = True
    end
    object cdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsCupomFiscalTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object cdsCupomFiscalCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsCupomFiscalPERCVENDEDOR: TFloatField
      FieldName = 'PERCVENDEDOR'
    end
    object cdsCupomFiscalBASEICMS: TFloatField
      FieldName = 'BASEICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRPRODUTOS: TFloatField
      FieldName = 'VLRPRODUTOS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalVLRRECEBIDO: TFloatField
      FieldName = 'VLRRECEBIDO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLRTROCO: TFloatField
      FieldName = 'VLRTROCO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalNUMMOVFINANCEIRO: TIntegerField
      FieldName = 'NUMMOVFINANCEIRO'
    end
    object cdsCupomFiscalCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object cdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomFiscalCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsCupomFiscalCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object cdsCupomFiscalNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      ProviderFlags = []
      Size = 60
    end
    object cdsCupomFiscalAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object cdsCupomFiscalNUMLANCAMENTO_EBS: TIntegerField
      FieldName = 'NUMLANCAMENTO_EBS'
    end
    object cdsCupomFiscalCONFIRMACAO_EBS: TStringField
      FieldName = 'CONFIRMACAO_EBS'
      Size = 5
    end
    object cdsCupomFiscalAPEL_VENDEDOR_EBS: TStringField
      FieldName = 'APEL_VENDEDOR_EBS'
      Size = 15
    end
    object cdsCupomFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsCupomFiscalclFormaPgto: TStringField
      FieldKind = fkCalculated
      FieldName = 'clFormaPgto'
      Size = 8
      Calculated = True
    end
  end
  object dsCupomFiscal: TDataSource
    DataSet = cdsCupomFiscal
    Left = 696
    Top = 256
  end
  object qVerificaUlt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUMCUPOM) NUMCUPOM'
      'FROM CUPOMFISCAL')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 152
    object qVerificaUltNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
  end
  object UCControls1: TUCControls
    GroupName = 'ConsultaCupom'
    UserControl = dmUserControl.UserControl1
    NotAllowed = naDisabled
    Left = 552
    Top = 49
  end
  object UCControls2: TUCControls
    GroupName = 'Cupom'
    UserControl = dmUserControl.UserControl1
    NotAllowed = naDisabled
    Left = 584
    Top = 49
  end
end
