object fProduto: TfProduto
  Left = 359
  Top = 192
  Width = 590
  Height = 464
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fProduto'
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
  object Label1: TLabel
    Left = 85
    Top = 40
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 73
    Top = 112
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unidade:'
  end
  object Label4: TLabel
    Left = 31
    Top = 136
    Width = 85
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o de Compra:'
  end
  object Label5: TLabel
    Left = 51
    Top = 160
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o Venda:'
  end
  object Label6: TLabel
    Left = 102
    Top = 16
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 37
    Top = 88
    Width = 79
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo de Barra:'
  end
  object Label7: TLabel
    Left = 78
    Top = 64
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Linha 2:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 397
    Width = 574
    Height = 29
    Align = alBottom
    Color = clBtnShadow
    TabOrder = 10
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
  object DBEdit1: TDBEdit
    Left = 120
    Top = 32
    Width = 369
    Height = 21
    DataField = 'NOME'
    DataSource = DMProduto.dsProduto
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 21
    DataField = 'UNIDADE'
    DataSource = DMProduto.dsProduto
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 120
    Top = 128
    Width = 121
    Height = 21
    DataField = 'PRECO_COMPRA'
    DataSource = DMProduto.dsProduto
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 120
    Top = 152
    Width = 121
    Height = 21
    DataField = 'PRECO_VENDA'
    DataSource = DMProduto.dsProduto
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 120
    Top = 8
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'ID'
    DataSource = DMProduto.dsProduto
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 80
    Width = 369
    Height = 21
    DataField = 'CODBARRA'
    DataSource = DMProduto.dsProduto
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 120
    Top = 56
    Width = 369
    Height = 21
    DataField = 'LINHA_2'
    DataSource = DMProduto.dsProduto
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 120
    Top = 176
    Width = 97
    Height = 17
    Caption = 'Inativo'
    DataField = 'INATIVO'
    DataSource = DMProduto.dsProduto
    TabOrder = 7
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 246
    Width = 574
    Height = 151
    Align = alBottom
    DataSource = DMProduto.dsProdutoPreco
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 9
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
    Columns = <
      item
        Expanded = False
        FieldName = 'clNOME'
        Title.Caption = 'PONTO DE VENDA'
        Width = 311
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_COMPRA'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Width = 87
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 201
    Width = 574
    Height = 45
    Align = alBottom
    Color = clBtnShadow
    TabOrder = 8
    object Label8: TLabel
      Left = 12
      Top = 6
      Width = 80
      Height = 13
      Caption = 'Ponto de Venda:'
    end
    object Label9: TLabel
      Left = 267
      Top = 6
      Width = 39
      Height = 13
      Caption = 'Compra:'
    end
    object Label10: TLabel
      Left = 342
      Top = 6
      Width = 34
      Height = 13
      Caption = 'Venda:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 8
      Top = 21
      Width = 257
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMProduto.dsEmpresa
      TabOrder = 0
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 266
      Top = 21
      Width = 73
      Height = 21
      AutoSize = False
      TabOrder = 1
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 341
      Top = 21
      Width = 73
      Height = 21
      AutoSize = False
      TabOrder = 2
    end
    object NxButton3: TNxButton
      Left = 416
      Top = 20
      Width = 75
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = NxButton3Click
    end
    object NxButton4: TNxButton
      Left = 491
      Top = 20
      Width = 75
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = NxButton4Click
    end
  end
end
