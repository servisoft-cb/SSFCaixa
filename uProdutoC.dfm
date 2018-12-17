object fProdutoC: TfProdutoC
  Left = 159
  Top = 108
  Width = 730
  Height = 563
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fProdutoC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 30
    Align = alTop
    Color = clBtnShadow
    TabOrder = 0
    DesignSize = (
      714
      30)
    object NxButton1: TNxButton
      Left = 4
      Top = 3
      Width = 75
      Caption = 'Inserir'
      Color = clBtnShadow
      ParentColor = False
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 84
      Top = 3
      Width = 75
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 164
      Top = 3
      Width = 75
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = NxButton3Click
    end
    object NxButton5: TNxButton
      Left = 636
      Top = 3
      Width = 75
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = NxButton5Click
    end
    object NxButton6: TNxButton
      Left = 244
      Top = 3
      Width = 75
      Caption = 'Imprimir'
      TabOrder = 4
      OnClick = NxButton6Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 60
    Width = 714
    Height = 465
    Align = alClient
    DataSource = DMProduto.dsProdutoCons
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnTitleClick = SMDBGrid1TitleClick
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
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBARRA'
        Title.Caption = 'C'#211'D. BARRA'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LINHA_2'
        Title.Caption = 'LINHA 2'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'UN.'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'PR.VENDA'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 714
    Height = 30
    Align = alTop
    TabOrder = 2
    Visible = False
    object NxButton4: TNxButton
      Left = 252
      Top = 3
      Width = 75
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = NxButton4Click
    end
    object Edit1: TEdit
      Left = 6
      Top = 4
      Width = 243
      Height = 21
      TabOrder = 0
    end
    object ckInativo: TCheckBox
      Left = 336
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ocultar Inativos'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Produto'
    UserControl = dmUserControl.UserControl1
    NotAllowed = naInvisible
    Left = 488
    Top = 30
  end
end
