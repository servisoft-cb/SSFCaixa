object fEstoqueDoc: TfEstoqueDoc
  Left = 359
  Top = 192
  Width = 673
  Height = 521
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fEstoqueDoc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 454
    Width = 657
    Height = 29
    Align = alBottom
    Color = clBtnShadow
    TabOrder = 2
    object NxButton1: TNxButton
      Left = 4
      Top = 3
      Width = 75
      Caption = 'Gravar'
      Color = clBtnShadow
      ParentColor = False
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 84
      Top = 3
      Width = 75
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = NxButton2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 178
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 59
      Top = 64
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'PDV:'
    end
    object Label2: TLabel
      Left = 45
      Top = 88
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Usu'#225'rio:'
    end
    object Label6: TLabel
      Left = 70
      Top = 16
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID:'
    end
    object Label3: TLabel
      Left = 58
      Top = 40
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 29
      Top = 112
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Movimento:'
    end
    object Label5: TLabel
      Left = 60
      Top = 136
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo:'
    end
    object Label7: TLabel
      Left = 23
      Top = 160
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Observa'#231#227'o:'
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 80
      Width = 249
      Height = 21
      DataField = 'USUARIO'
      DataSource = DmEstoque.dsEstoqueDoc
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 88
      Top = 8
      Width = 121
      Height = 21
      TabStop = False
      DataField = 'ID'
      DataSource = DmEstoque.dsEstoqueDoc
      ReadOnly = True
      TabOrder = 0
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 88
      Top = 56
      Width = 249
      Height = 21
      DropDownCount = 8
      DataField = 'EMPRESA_ID'
      DataSource = DmEstoque.dsEstoqueDoc
      LookupField = 'ID'
      LookupDisplay = 'FANTASIA'
      LookupSource = DmEstoque.dsEmpresa
      TabOrder = 2
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 88
      Top = 104
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'ES'
      DataSource = DmEstoque.dsEstoqueDoc
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'ENTRADA'
        'SA'#205'DA')
      TabOrder = 4
      Values.Strings = (
        'E'
        'S')
    end
    object RxDBComboBox2: TRxDBComboBox
      Left = 88
      Top = 128
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO'
      DataSource = DmEstoque.dsEstoqueDoc
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'COMPRA'
        'VENDA'
        'AJUSTE')
      TabOrder = 5
      Values.Strings = (
        'C'
        'V'
        'A')
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 152
      Width = 545
      Height = 21
      DataField = 'JUSTIFICATIVA'
      DataSource = DmEstoque.dsEstoqueDoc
      TabOrder = 6
    end
    object DBDateEdit1: TDBDateEdit
      Left = 88
      Top = 32
      Width = 90
      Height = 21
      DataField = 'DATA'
      DataSource = DmEstoque.dsEstoqueDoc
      NumGlyphs = 2
      TabOrder = 1
      StartOfWeek = Sun
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 178
    Width = 657
    Height = 29
    Align = alTop
    Color = clBtnShadow
    TabOrder = 1
    object NxButton3: TNxButton
      Left = 4
      Top = 4
      Width = 75
      Caption = 'Inserir'
      Color = clBtnShadow
      ParentColor = False
      TabOrder = 0
      OnClick = NxButton3Click
    end
    object NxButton4: TNxButton
      Left = 84
      Top = 4
      Width = 75
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = NxButton4Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 207
    Width = 657
    Height = 247
    Align = alClient
    DataSource = DmEstoque.dsEstoqueDocIt
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkProduto'
        Title.Caption = 'PRODUTO'
        Width = 248
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ES'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
end
