object fFuncionario: TfFuncionario
  Left = 183
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Funcion'#225'rios'
  ClientHeight = 562
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 31
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 2
      Top = 3
      Width = 71
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 73
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 771
    Height = 245
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 608
      Top = 9
      Width = 14
      Height = 13
      Caption = 'ID:'
    end
    object Label7: TLabel
      Left = 57
      Top = 35
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 39
      Top = 10
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. EBS:'
    end
    object Label52: TLabel
      Left = 20
      Top = 179
      Width = 88
      Height = 13
      Caption = 'Endere'#231'o da Foto:'
    end
    object Label26: TLabel
      Left = 267
      Top = 58
      Width = 66
      Height = 13
      Caption = 'Dt. Demiss'#227'o:'
    end
    object Label2: TLabel
      Left = 563
      Top = 30
      Width = 59
      Height = 13
      Caption = 'Dt.Cadastro:'
    end
    object Label4: TLabel
      Left = 563
      Top = 51
      Width = 59
      Height = 13
      Caption = 'Hr.Cadastro:'
    end
    object Label5: TLabel
      Left = 43
      Top = 58
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o:'
    end
    object Label9: TLabel
      Left = 4
      Top = 82
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Limite Cr'#233'dito:'
    end
    object Image1: TImage
      Left = 552
      Top = 72
      Width = 205
      Height = 161
      Stretch = True
    end
    object DBEdit1: TDBEdit
      Left = 624
      Top = 1
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'ID'
      DataSource = DMPessoa.dsPessoa
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 90
      Top = 27
      Width = 346
      Height = 21
      DataField = 'NOME'
      DataSource = DMPessoa.dsPessoa
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 90
      Top = 2
      Width = 127
      Height = 21
      Color = clInfoBk
      DataField = 'APEL_EBS'
      DataSource = DMPessoa.dsPessoa
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 486
      Top = 168
      Width = 25
      Height = 25
      Hint = 'Abre o caminho p/ localizar a foto'
      TabOrder = 5
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
    end
    object DBEdit24: TDBEdit
      Left = 112
      Top = 171
      Width = 373
      Height = 21
      DataField = 'ENDERECO_FOTO'
      DataSource = DMPessoa.dsPessoa
      TabOrder = 6
      OnChange = DBEdit24Change
    end
    object DBDateEdit3: TDBDateEdit
      Left = 336
      Top = 50
      Width = 100
      Height = 21
      DataField = 'DTDEMISSAO'
      DataSource = DMPessoa.dsPessoa
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 624
      Top = 22
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'DTCADASTRO'
      DataSource = DMPessoa.dsPessoa
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 624
      Top = 43
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'HRCADASTRO'
      DataSource = DMPessoa.dsPessoa
      ReadOnly = True
      TabOrder = 9
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 90
      Top = 50
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'SITUACAO'
      DataSource = DMPessoa.dsPessoa
      Enabled = False
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Admitido'
        'Demitido')
      ReadOnly = True
      TabOrder = 2
      Values.Strings = (
        'A'
        'D')
    end
    object DBEdit8: TDBEdit
      Left = 90
      Top = 74
      Width = 100
      Height = 21
      DataField = 'VLRLIMITECREDITO'
      DataSource = DMPessoa.dsPessoa
      ReadOnly = True
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 2
      Top = 213
      Width = 105
      Height = 25
      Caption = 'Cadastrar digitais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn4Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 276
    Width = 771
    Height = 286
    ActivePage = TabSheet7
    ActivePageDefault = TabSheet7
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TabSheet7: TRzTabSheet
      Caption = 'Digitais'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 263
        Align = alClient
        TabOrder = 0
        object LVUsers: TListView
          Left = 1
          Top = 1
          Width = 355
          Height = 261
          Align = alLeft
          Columns = <
            item
              Caption = 'User ID'
              Width = 105
            end
            item
              Caption = 'FP ID'
              Width = 110
            end
            item
              Caption = 'Sample NO.'
              Width = 110
            end>
          GridLines = True
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
        object DBMemo1: TDBMemo
          Left = 376
          Top = 1
          Width = 390
          Height = 261
          Align = alRight
          DataField = 'DEDO_D1'
          DataSource = DMPessoa.dsPessoa
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Filter = 'JPG Image|*.jpg|JPEG|*.JPEG|PDF|*.PDF|Todos|*.*'
    InitialDir = 'C:\'
    Left = 231
    Top = 112
  end
  object UCControls1: TUCControls
    GroupName = 'Cadastro de Usu'#225'rios'
    UserControl = dmUserControl.UserControl1
    NotAllowed = naInvisible
    Left = 200
    Top = 112
  end
end
