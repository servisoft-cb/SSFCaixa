object fConsVendas: TfConsVendas
  Left = 155
  Top = 97
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Vendas'
  ClientHeight = 496
  ClientWidth = 865
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 865
    Height = 56
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 38
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 205
      Top = 38
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Final:'
    end
    object Label6: TLabel
      Left = 358
      Top = 38
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Funcion'#225'rio:'
    end
    object Label8: TLabel
      Left = 37
      Top = 15
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unidade:'
    end
    object Label7: TLabel
      Left = 581
      Top = 15
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pagamento:'
    end
    object Label9: TLabel
      Left = 372
      Top = 15
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 419
      Top = 30
      Width = 266
      Height = 21
      DropDownCount = 15
      LookupField = 'PESSOA'
      LookupDisplay = 'NOME'
      LookupSource = dmOracle.dsFuncionarioOra
      TabOrder = 5
      OnEnter = RxDBLookupCombo1Enter
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 83
      Top = 7
      Width = 266
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'FANTASIA'
      LookupSource = DMEmpresa.dsEmpresa
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
    end
    object ComboBox1: TComboBox
      Left = 640
      Top = 8
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'Descontado'
      Items.Strings = (
        'Descontado'
        'Dinheiro'
        'Cart'#227'o'
        'Todos')
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 419
      Top = 7
      Width = 147
      Height = 21
      DropDownCount = 15
      LookupField = 'CODEMPRESA'
      LookupDisplay = 'CODEMPRESA'
      LookupSource = dsEmpresa
      TabOrder = 1
      OnEnter = RxDBLookupCombo1Enter
    end
    object NxDatePicker1: TNxDatePicker
      Left = 83
      Top = 30
      Width = 90
      Height = 21
      TabOrder = 3
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 258
      Top = 30
      Width = 90
      Height = 21
      TabOrder = 4
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 56
    Width = 865
    Height = 410
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Geral'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 30
        Width = 861
        Height = 357
        Align = alClient
        DataSource = dsCupom
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
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
            Expanded = False
            FieldName = 'APEL_EBS'
            Title.Alignment = taCenter
            Title.Caption = 'Empresa / Crach'#225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Funcion'#225'rio'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODTIPOCOBRANCA'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Pagto.'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRRECEBIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Recebido'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTROCO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Troco'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONFIRMACAO_EBS'
            Title.Alignment = taCenter
            Title.Caption = 'Confirma'#231#227'o EBS'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Caption = 'Usu'#225'rio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CANCELADO'
            Title.Alignment = taCenter
            Title.Caption = 'Cancelado'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODPESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Pessoa'
            Width = 47
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 861
        Height = 30
        Align = alTop
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 1
          Top = 2
          Width = 75
          Height = 25
          Caption = '&Consultar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 76
          Top = 2
          Width = 133
          Height = 25
          Hint = 'Gera aquivo com crach'#225' e valor'#13'c:\remessa.txt'
          Caption = 'Gerar &arquivo folha'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object BitBtn3: TBitBtn
          Left = 342
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
        object BitBtn6: TBitBtn
          Left = 209
          Top = 2
          Width = 133
          Height = 25
          Hint = 'Gera aquivo com crach'#225' e valor'#13'c:\remessa.txt'
          Caption = 'Gerar &arquivo Excel'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn6Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Produto'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 30
        Width = 861
        Height = 357
        Align = alClient
        DataSource = dsCupomItem
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEPRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 435
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 119
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 861
        Height = 30
        Align = alTop
        TabOrder = 1
        DesignSize = (
          861
          30)
        object Label10: TLabel
          Left = 596
          Top = 12
          Width = 115
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'Total Geral de Produtos:'
        end
        object BitBtn4: TBitBtn
          Left = 1
          Top = 2
          Width = 75
          Height = 25
          Caption = '&Consultar'
          TabOrder = 0
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 76
          Top = 2
          Width = 133
          Height = 25
          Hint = 'Gera aquivo com crach'#225' e valor'#13'c:\remessa.txt'
          Caption = 'Gerar &arquivo Excel'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn5Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object CurrencyEdit4: TCurrencyEdit
          Left = 712
          Top = 4
          Width = 145
          Height = 21
          TabStop = False
          AutoSize = False
          Color = clMoneyGreen
          Ctl3D = False
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Anchors = [akTop, akRight]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 466
    Width = 865
    Height = 30
    Align = alBottom
    Color = clMoneyGreen
    Enabled = False
    TabOrder = 2
    DesignSize = (
      865
      30)
    object Label3: TLabel
      Left = 656
      Top = 12
      Width = 55
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total Geral:'
    end
    object Label4: TLabel
      Left = 24
      Top = 12
      Width = 61
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Descontada:'
    end
    object Label5: TLabel
      Left = 442
      Top = 12
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Cart'#227'o:'
    end
    object Label11: TLabel
      Left = 248
      Top = 12
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Dinheiro:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 712
      Top = 4
      Width = 145
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Anchors = [akTop, akRight]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 88
      Top = 4
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Anchors = [akTop, akRight]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 480
      Top = 4
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Anchors = [akTop, akRight]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 296
      Top = 4
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Anchors = [akTop, akRight]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object sdsCupom: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.*, FUNC.NOME'#13#10'FROM CUPOMFISCAL CF'#13#10'LEFT JOIN PESSOA_DI' +
      'GITAL_ORA FUNC ON (CF.CODPESSOA = FUNC.PESSOA AND CF.CODEMPRESA ' +
      '= FUNC.EMPRESA)'#13#10'WHERE CF.dtemissao BETWEEN :DATA1 AND :DATA2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 361
    Top = 174
    object sdsCupomID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      Required = True
    end
    object sdsCupomNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object sdsCupomDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsCupomHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsCupomCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object sdsCupomTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object sdsCupomCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object sdsCupomPERCVENDEDOR: TFloatField
      FieldName = 'PERCVENDEDOR'
    end
    object sdsCupomBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object sdsCupomVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object sdsCupomVLRPRODUTOS: TFloatField
      FieldName = 'VLRPRODUTOS'
    end
    object sdsCupomVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsCupomVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsCupomCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomVLRRECEBIDO: TFloatField
      FieldName = 'VLRRECEBIDO'
    end
    object sdsCupomVLRTROCO: TFloatField
      FieldName = 'VLRTROCO'
    end
    object sdsCupomNUMMOVFINANCEIRO: TIntegerField
      FieldName = 'NUMMOVFINANCEIRO'
    end
    object sdsCupomCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object sdsCupomFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCupomCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object sdsCupomAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object sdsCupomNUMLANCAMENTO_EBS: TIntegerField
      FieldName = 'NUMLANCAMENTO_EBS'
    end
    object sdsCupomCONFIRMACAO_EBS: TStringField
      FieldName = 'CONFIRMACAO_EBS'
      Size = 5
    end
    object sdsCupomAPEL_VENDEDOR_EBS: TStringField
      FieldName = 'APEL_VENDEDOR_EBS'
      Size = 15
    end
    object sdsCupomNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsCupomUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object dspCupom: TDataSetProvider
    DataSet = sdsCupom
    Left = 393
    Top = 174
  end
  object cdsCupom: TClientDataSet
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
        Name = 'CODPESSOA'
        DataType = ftInteger
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
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsCupomIndex1'
        Fields = 'DTEMISSAO;ID_CUPOM'
        Options = [ixDescending]
      end>
    IndexName = 'cdsCupomIndex1'
    Params = <>
    ProviderName = 'dspCupom'
    StoreDefs = True
    Left = 425
    Top = 174
    object cdsCupomID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      Required = True
    end
    object cdsCupomNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupomDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsCupomCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object cdsCupomTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object cdsCupomCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsCupomPERCVENDEDOR: TFloatField
      FieldName = 'PERCVENDEDOR'
    end
    object cdsCupomBASEICMS: TFloatField
      FieldName = 'BASEICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomVLRPRODUTOS: TFloatField
      FieldName = 'VLRPRODUTOS'
      DisplayFormat = '0.00'
    end
    object cdsCupomVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsCupomVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupomCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomVLRRECEBIDO: TFloatField
      FieldName = 'VLRRECEBIDO'
      DisplayFormat = '0.00'
    end
    object cdsCupomVLRTROCO: TFloatField
      FieldName = 'VLRTROCO'
      DisplayFormat = '0.00'
    end
    object cdsCupomNUMMOVFINANCEIRO: TIntegerField
      FieldName = 'NUMMOVFINANCEIRO'
    end
    object cdsCupomCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object cdsCupomFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsCupomAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object cdsCupomNUMLANCAMENTO_EBS: TIntegerField
      FieldName = 'NUMLANCAMENTO_EBS'
    end
    object cdsCupomCONFIRMACAO_EBS: TStringField
      FieldName = 'CONFIRMACAO_EBS'
      Size = 5
    end
    object cdsCupomAPEL_VENDEDOR_EBS: TStringField
      FieldName = 'APEL_VENDEDOR_EBS'
      Size = 15
    end
    object cdsCupomNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsCupomUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object dsCupom: TDataSource
    DataSet = cdsCupom
    Left = 457
    Top = 174
  end
  object qTotal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(VLRTOTAL) VLRTOTAL,  CODTIPOCOBRANCA'
      'FROM CUPOMFISCAL'
      'WHERE CANCELADO = '#39'N'#39
      'GROUP BY CODTIPOCOBRANCA')
    SQLConnection = dmDatabase.scoDados
    Left = 321
    Top = 230
    object qTotalCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object qTotalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
  end
  object sdsCupomItem: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CFI.CODPRODUTO, SUM(CFI.VLRTOTAL) VlrTotal, SUM(CFI.QTD) ' +
      'Qtd, P.NOME NOMEPRODUTO'#13#10'FROM CUPOMFISCALIT CFI'#13#10'INNER JOIN CUPO' +
      'MFISCAL CF ON (CFI.ID_CUPOM = CF.ID_CUPOM)'#13#10'LEFT JOIN PRODUTO P ' +
      'ON (CFI.CODPRODUTO = P.ID)'#13#10'WHERE CF.DTEMISSAO BETWEEN :DATA1 AN' +
      'D :DATA2'#13#10'GROUP BY CFI.CODPRODUTO, P.NOME'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 361
    Top = 206
    object sdsCupomItemCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
    end
    object sdsCupomItemVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsCupomItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsCupomItemNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 60
    end
  end
  object dspCupomItem: TDataSetProvider
    DataSet = sdsCupomItem
    Left = 393
    Top = 206
  end
  object cdsCupomItem: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CodProduto'
    Params = <>
    ProviderName = 'dspCupomItem'
    Left = 425
    Top = 206
    object cdsCupomItemCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
    end
    object cdsCupomItemVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsCupomItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsCupomItemNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 60
    end
  end
  object dsCupomItem: TDataSource
    DataSet = cdsCupomItem
    Left = 457
    Top = 206
  end
  object sds1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.CODPESSOA, SUM(VLRTOTAL)'#13#10'FROM CUPOMFISCAL CF'#13#10'WHERE T' +
      'IPOPGTO = '#39'P'#39#13#10'AND CANCELADO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 369
    Top = 286
  end
  object dsp1: TDataSetProvider
    DataSet = sds1
    Left = 401
    Top = 286
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp1'
    Left = 433
    Top = 286
    object cds1CODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object cds1SUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT CODEMPRESA'#13#10'FROM CUPOMFISCAL'#13#10'WHERE CODEMPRESA >' +
      ' '#39'0'#39#13#10'ORDER BY CODEMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 361
    Top = 142
    object sdsEmpresaCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Size = 4
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 393
    Top = 142
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODEMPRESA'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    StoreDefs = True
    Left = 425
    Top = 142
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 457
    Top = 142
  end
end
