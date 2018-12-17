object fCupomFiscal: TfCupomFiscal
  Left = 3
  Top = 57
  Width = 1011
  Height = 651
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Emiss'#227'o Cupom Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 401
    Top = 0
    Width = 594
    Height = 613
    Align = alClient
    TabOrder = 1
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 592
      Height = 542
      Align = alClient
      DataSource = DMCupom.dsCupomFiscalIt
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoRowHeightAutofit, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 20
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Width = 31
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODPRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Produto'
          Width = 96
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRUNIT'
          Title.Alignment = taCenter
          Title.Caption = 'V.Unit'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeProduto'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Width = 352
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 543
      Width = 592
      Height = 69
      Align = alBottom
      Enabled = False
      TabOrder = 1
      object Label7: TLabel
        Left = 46
        Top = 32
        Width = 222
        Height = 24
        Alignment = taRightJustify
        Caption = 'Valor Total do Cupom:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 272
        Top = 12
        Width = 297
        Height = 44
        Color = clInfoBk
        Ctl3D = False
        DataField = 'VLRTOTAL'
        DataSource = DMCupom.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 613
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 401
      Height = 219
      Align = alTop
      TabOrder = 0
      object Label4: TLabel
        Left = 16
        Top = 152
        Width = 96
        Height = 24
        Caption = 'Vlr.Unit'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 27
        Top = 181
        Width = 85
        Height = 24
        Caption = 'Sub.Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 77
        Top = 128
        Width = 35
        Height = 24
        Caption = 'Qtd:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 116
        Top = 149
        Width = 146
        Height = 27
        AutoSize = False
        DecimalPlaces = 5
        DisplayFormat = '0.000##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        OnExit = CurrencyEdit2Exit
        OnKeyDown = CurrencyEdit2KeyDown
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 116
        Top = 178
        Width = 146
        Height = 27
        TabStop = False
        AutoSize = False
        DecimalPlaces = 5
        DisplayFormat = '0.000##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 399
        Height = 72
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        OnExit = Panel8Exit
        object Label1: TLabel
          Left = 11
          Top = 14
          Width = 68
          Height = 23
          Alignment = taRightJustify
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 22
          Top = 47
          Width = 57
          Height = 24
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 81
          Top = 6
          Width = 312
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = Edit1Exit
          OnKeyDown = Edit1KeyDown
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 81
          Top = 40
          Width = 312
          Height = 31
          DropDownCount = 15
          DropDownWidth = 650
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          LookupField = 'ID'
          LookupDisplay = 'NOME;ID'
          LookupSource = DMCupom.dsProduto
          ParentFont = False
          TabOrder = 1
          OnEnter = RxDBLookupCombo1Enter
          OnExit = RxDBLookupCombo1Exit
        end
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 116
        Top = 120
        Width = 146
        Height = 27
        AutoSize = False
        DecimalPlaces = 5
        DisplayFormat = '0.000##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        MinValue = 1.000000000000000000
        ParentFont = False
        TabOrder = 1
        Value = 1.000000000000000000
        OnExit = CurrencyEdit1Exit
        OnKeyDown = CurrencyEdit1KeyDown
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 219
      Width = 401
      Height = 78
      Align = alTop
      TabOrder = 1
      object btConfirmar: TNxButton
        Left = 107
        Top = 6
        Width = 187
        Height = 30
        Caption = '&Confirmar produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 0
        Transparent = True
        OnClick = btConfirmarClick
      end
      object btCancelar: TNxButton
        Left = 107
        Top = 40
        Width = 187
        Height = 30
        Caption = 'F3 - Ca&ncelar produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Transparent = True
        OnClick = btCancelarClick
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 544
      Width = 401
      Height = 69
      Align = alBottom
      TabOrder = 3
      object NxButton1: TNxButton
        Left = 200
        Top = 20
        Width = 187
        Height = 30
        Caption = 'F10 - Confirmar Cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 0
        Transparent = True
        OnClick = NxButton1Click
      end
      object NxButton2: TNxButton
        Left = 13
        Top = 20
        Width = 187
        Height = 30
        Caption = 'F8 - Cancelar cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Transparent = True
        OnClick = NxButton2Click
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 297
      Width = 401
      Height = 247
      Align = alClient
      TabOrder = 2
      object DBText1: TDBText
        Left = 67
        Top = 39
        Width = 89
        Height = 14
        DataField = 'ID_CUPOM'
        DataSource = DMCupom.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 12
        Top = 38
        Width = 51
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#186' Mov.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 12
        Top = 8
        Width = 377
        Height = 25
        Color = clInfoBk
        Ctl3D = False
        DataField = 'NOME_PESSOA'
        DataSource = DMCupom.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object StaticText1: TStaticText
        Left = 1
        Top = 229
        Width = 399
        Height = 17
        Align = alBottom
        Caption = 'F2 - Consultar Limite Cr'#233'dito'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object sdsSitTrib_CF: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM SITTRIB_CF'#13#10'ORDER BY CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 120
    object sdsSitTrib_CFID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsSitTrib_CFPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object sdsSitTrib_CFCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
  end
  object cdsSitTrib_CF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSitTrib_CF'
    Left = 600
    Top = 120
    object cdsSitTrib_CFID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSitTrib_CFPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsSitTrib_CFCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
  end
  object dspSitTrib_CF: TDataSetProvider
    DataSet = sdsSitTrib_CF
    Left = 560
    Top = 120
  end
  object dsSitTrib_CF: TDataSource
    DataSet = cdsSitTrib_CF
    Left = 640
    Top = 120
  end
end
