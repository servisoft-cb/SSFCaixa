object fCupomFiscalPgto: TfCupomFiscalPgto
  Left = 225
  Top = 184
  Width = 539
  Height = 324
  BorderIcons = [biSystemMenu]
  Caption = 'fCupomFiscalPgto - Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 523
    Height = 245
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 66
      Top = 72
      Width = 108
      Height = 24
      Alignment = taRightJustify
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 192
      Top = 64
      Width = 110
      Height = 32
      AutoSize = True
      DataField = 'VLRTOTAL'
      DataSource = DMCupom.dsCupomFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 29
      Top = 127
      Width = 149
      Height = 24
      Alignment = taRightJustify
      Caption = 'Valor Recebido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 116
      Top = 191
      Width = 62
      Height = 24
      Alignment = taRightJustify
      Caption = 'Troco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 184
      Top = 154
      Width = 138
      Height = 13
      Caption = 'Pressione Enter para calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 392
      Top = 114
      Width = 94
      Height = 26
      Caption = 'Preecher com zeros'#13#10'para venda a Prazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 184
      Top = 112
      Width = 202
      Height = 40
      DataField = 'VLRRECEBIDO'
      DataSource = DMCupom.dsCupomFiscal
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = DBEdit1Exit
      OnKeyDown = DBEdit1KeyDown
    end
    object DBEdit2: TDBEdit
      Left = 184
      Top = 176
      Width = 202
      Height = 40
      TabStop = False
      Ctl3D = True
      DataField = 'VLRTROCO'
      DataSource = DMCupom.dsCupomFiscal
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 11
      Top = 8
      Width = 75
      Height = 25
      Caption = '(F2) A Vista'
      TabOrder = 2
      TabStop = False
      Visible = False
      OnClick = BitBtn4Click
    end
    object BitBtn3: TBitBtn
      Left = 86
      Top = 8
      Width = 75
      Height = 25
      Caption = '(F3) A Prazo'
      TabOrder = 3
      TabStop = False
      Visible = False
      OnClick = BitBtn3Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 245
    Width = 523
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 163
      Top = 3
      Width = 104
      Height = 34
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 267
      Top = 3
      Width = 104
      Height = 34
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Funcion'#225'rio'
      TabOrder = 2
      Visible = False
      OnClick = BitBtn5Click
    end
  end
end
