object fEstoqueDocC: TfEstoqueDocC
  Left = 497
  Top = 126
  Width = 730
  Height = 563
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fEstoqueDocC'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 29
    Align = alTop
    Color = clBtnShadow
    TabOrder = 0
    DesignSize = (
      714
      29)
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
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 58
    Width = 714
    Height = 467
    Align = alClient
    DataSource = DmEstoque.dsEstoqueDocCons
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ES'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUSTIFICATIVA'
        Width = 319
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 714
    Height = 29
    Align = alTop
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 44
      Height = 13
      Caption = 'Dt.Inicial:'
    end
    object Label2: TLabel
      Left = 160
      Top = 12
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object btnPesquisar: TNxButton
      Left = 284
      Top = 3
      Width = 75
      Caption = 'Pesquisar'
      TabOrder = 0
      OnClick = btnPesquisarClick
    end
    object NxDatePicker1: TNxDatePicker
      Left = 56
      Top = 4
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 186
      Top = 4
      Width = 90
      Height = 21
      TabOrder = 2
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
  end
  object UCControls1: TUCControls
    GroupName = 'EstoqueDoc'
    UserControl = dmUserControl.UserControl1
    NotAllowed = naInvisible
    Left = 408
    Top = 8
  end
end
