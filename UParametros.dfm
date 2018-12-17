object fParametros: TfParametros
  Left = 238
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parametros'
  ClientHeight = 450
  ClientWidth = 574
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
    Width = 574
    Height = 31
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 6
      Top = 3
      Width = 75
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
      Left = 81
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
    Width = 574
    Height = 419
    Align = alClient
    TabOrder = 1
    object Label7: TLabel
      Left = 10
      Top = 35
      Width = 150
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo de Confirma'#231#227'o da Venda:'
    end
    object Label1: TLabel
      Left = 103
      Top = 64
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedor:'
    end
    object Label2: TLabel
      Left = 62
      Top = 88
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. do Consumidor:'
    end
    object Label3: TLabel
      Left = 84
      Top = 112
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arquivo Digitais:'
    end
    object Label4: TLabel
      Left = 62
      Top = 137
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o das Fotos:'
    end
    object Label5: TLabel
      Left = 69
      Top = 161
      Width = 91
      Height = 13
      Alignment = taRightJustify
      Caption = 'Separador da Foto:'
    end
    object Label6: TLabel
      Left = 74
      Top = 185
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Extens'#227'o da Foto:'
    end
    object Label8: TLabel
      Left = 59
      Top = 207
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = 'Usar Stretch na Foto:'
    end
    object Label9: TLabel
      Left = 49
      Top = 233
      Width = 111
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arquivo de Exporta'#231#227'o:'
    end
    object Label10: TLabel
      Left = 59
      Top = 255
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = 'Manter estoque EBS:'
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 163
      Top = 28
      Width = 246
      Height = 21
      Style = csDropDownList
      DataField = 'TIPOCONFIRMAVENDA'
      DataSource = DMParametros.dsParametros
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Somente Biometria'
        'Funcionario e Biometria'
        'Somente Funcion'#225'rio')
      TabOrder = 0
      Values.Strings = (
        'SB'
        'FB'
        'SF')
    end
    object DBEdit1: TDBEdit
      Left = 163
      Top = 56
      Width = 238
      Height = 21
      DataField = 'FORNECEDOR'
      DataSource = DMParametros.dsParametros
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 163
      Top = 80
      Width = 238
      Height = 21
      DataField = 'CONSUMIDOR'
      DataSource = DMParametros.dsParametros
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 163
      Top = 104
      Width = 390
      Height = 21
      DataField = 'ARQUIVO_DIGITAIS'
      DataSource = DMParametros.dsParametros
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 163
      Top = 129
      Width = 390
      Height = 21
      DataField = 'ENDERECO_FOTOS'
      DataSource = DMParametros.dsParametros
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 163
      Top = 153
      Width = 30
      Height = 21
      DataField = 'SEPARADORDAFOTO'
      DataSource = DMParametros.dsParametros
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 163
      Top = 177
      Width = 86
      Height = 21
      DataField = 'EXTENSAOFOTO'
      DataSource = DMParametros.dsParametros
      TabOrder = 6
    end
    object RxDBComboBox2: TRxDBComboBox
      Left = 163
      Top = 200
      Width = 87
      Height = 21
      Style = csDropDownList
      DataField = 'USARSTRETCH'
      DataSource = DMParametros.dsParametros
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 7
      Values.Strings = (
        'S'
        'N')
    end
    object DBEdit7: TDBEdit
      Left = 163
      Top = 225
      Width = 390
      Height = 21
      DataField = 'ARQUIVO_EXPORTACAO'
      DataSource = DMParametros.dsParametros
      TabOrder = 8
    end
    object RxDBComboBox3: TRxDBComboBox
      Left = 163
      Top = 248
      Width = 87
      Height = 21
      Style = csDropDownList
      DataField = 'ESTOQUE_EBS'
      DataSource = DMParametros.dsParametros
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 9
      Values.Strings = (
        'S'
        'N')
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 313
      Width = 572
      Height = 105
      Align = alBottom
      Caption = 'Impress'#227'o do Pedido'
      TabOrder = 10
      object Label11: TLabel
        Left = 64
        Top = 60
        Width = 96
        Height = 13
        Alignment = taRightJustify
        Caption = 'Porta da impressora:'
      end
      object Label12: TLabel
        Left = 54
        Top = 36
        Width = 106
        Height = 13
        Alignment = taRightJustify
        Caption = 'Formato de impress'#227'o:'
      end
      object Label13: TLabel
        Left = 105
        Top = 83
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bar padr'#227'o:'
      end
      object ComboBox1: TComboBox
        Left = 163
        Top = 28
        Width = 238
        Height = 21
        DropDownCount = 2
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Comando Print.Canvas (Diebold)'
        Items.Strings = (
          'Comando Print.Canvas (Diebold)'
          'Direto na porta (Daruma)')
      end
      object ComboBox2: TComboBox
        Left = 163
        Top = 52
        Width = 86
        Height = 21
        DropDownCount = 15
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 1
        Text = 'COM2'
        Items.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9'
          'COM10')
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 163
        Top = 75
        Width = 238
        Height = 21
        DropDownCount = 8
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMParametros.dsEmpresa
        TabOrder = 2
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Parametros'
    UserControl = dmUserControl.UserControl1
    NotAllowed = naInvisible
    Left = 168
    Top = 8
  end
end
