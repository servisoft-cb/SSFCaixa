object fFuncionario_Ora: TfFuncionario_Ora
  Left = 364
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Funcion'#225'rios'
  ClientHeight = 449
  ClientWidth = 737
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
    Top = 0
    Width = 737
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
    Width = 737
    Height = 201
    Align = alTop
    TabOrder = 1
    object Label7: TLabel
      Left = 74
      Top = 59
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pessoa:'
    end
    object Label52: TLabel
      Left = 24
      Top = 131
      Width = 88
      Height = 13
      Caption = 'Endere'#231'o da Foto:'
    end
    object Label9: TLabel
      Left = 28
      Top = 106
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Limite Cr'#233'dito:'
    end
    object Image1: TImage
      Left = 520
      Top = 9
      Width = 205
      Height = 161
      Stretch = True
    end
    object Label1: TLabel
      Left = 69
      Top = 35
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unidade:'
    end
    object Label2: TLabel
      Left = 68
      Top = 11
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa:'
    end
    object Label3: TLabel
      Left = 81
      Top = 83
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Label4: TLabel
      Left = 77
      Top = 155
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Senha:'
    end
    object Label5: TLabel
      Left = 235
      Top = 155
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Senha:'
    end
    object DBEdit6: TDBEdit
      Left = 114
      Top = 51
      Width = 100
      Height = 21
      DataField = 'PESSOA'
      DataSource = dmOracle.dsFuncionarioOra
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 486
      Top = 120
      Width = 25
      Height = 25
      Hint = 'Abre o caminho p/ localizar a foto'
      TabOrder = 9
      Visible = False
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
      Left = 114
      Top = 123
      Width = 370
      Height = 21
      DataField = 'FOTO'
      DataSource = dmOracle.dsFuncionarioOra
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 114
      Top = 98
      Width = 100
      Height = 21
      DataField = 'LIMITE'
      DataSource = dmOracle.dsFuncionarioOra
      ReadOnly = True
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 2
      Top = 173
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
    object DBEdit1: TDBEdit
      Left = 114
      Top = 27
      Width = 100
      Height = 21
      DataField = 'UNIDADE'
      DataSource = dmOracle.dsFuncionarioOra
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 114
      Top = 3
      Width = 100
      Height = 21
      DataField = 'EMPRESA'
      DataSource = dmOracle.dsFuncionarioOra
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 114
      Top = 75
      Width = 391
      Height = 21
      DataField = 'NOME'
      DataSource = dmOracle.dsFuncionarioOra
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 107
      Top = 173
      Width = 105
      Height = 25
      Caption = 'Limpar digitais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = BitBtn5Click
    end
    object DBEdit4: TDBEdit
      Left = 114
      Top = 147
      Width = 100
      Height = 21
      DataField = 'SENHA'
      DataSource = DMPessoa.dsPessoaDigitalOra
      PasswordChar = '*'
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 272
      Top = 147
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 7
    end
    object BitBtn6: TBitBtn
      Left = 400
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Grava a senha'
      Caption = 'Gravar'
      TabOrder = 8
      OnClick = BitBtn6Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 232
    Width = 737
    Height = 217
    ActivePage = TabSheet7
    ActivePageDefault = TabSheet7
    Align = alClient
    Enabled = False
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TabSheet7: TRzTabSheet
      Caption = 'Digitais'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 194
        Align = alClient
        TabOrder = 0
        object DBMemo1: TDBMemo
          Left = 1
          Top = 1
          Width = 731
          Height = 192
          Align = alClient
          DataField = 'DIGITAL'
          DataSource = DMPessoa.dsPessoaDigitalOra
          Enabled = False
          ReadOnly = True
          TabOrder = 0
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
