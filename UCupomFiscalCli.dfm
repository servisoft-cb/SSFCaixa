object fCupomFiscalCli: TfCupomFiscalCli
  Left = 271
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informe o Funcion'#225'rio'
  ClientHeight = 374
  ClientWidth = 732
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 520
    Top = 96
    Width = 209
    Height = 169
    Brush.Color = 13690576
    Pen.Style = psClear
  end
  object DBText1: TDBText
    Left = 102
    Top = 224
    Width = 411
    Height = 18
    Color = 13690576
    DataField = 'PESSOA'
    DataSource = dmOracle.dsFuncionarioOra
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 12
    Top = 104
    Width = 129
    Height = 19
    Alignment = taRightJustify
    Caption = 'Unidade/Crach'#225':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBText2: TDBText
    Left = 102
    Top = 248
    Width = 411
    Height = 18
    Color = 13690576
    DataField = 'NOME'
    DataSource = dmOracle.dsFuncionarioOra
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 37
    Top = 224
    Width = 61
    Height = 19
    Alignment = taRightJustify
    Caption = 'Crach'#225':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 47
    Top = 248
    Width = 51
    Height = 19
    Alignment = taRightJustify
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 176
    Width = 74
    Height = 19
    Alignment = taRightJustify
    Caption = 'Empresa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 102
    Top = 176
    Width = 411
    Height = 18
    Color = 13690576
    DataField = 'EMPRESA'
    DataSource = dmOracle.dsFuncionarioOra
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Image1: TImage
    Left = 522
    Top = 100
    Width = 205
    Height = 161
    Stretch = True
  end
  object Label8: TLabel
    Left = 103
    Top = 176
    Width = 112
    Height = 19
    Caption = 'CONSUMIDOR'
    Color = 13690576
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label9: TLabel
    Left = 86
    Top = 128
    Width = 55
    Height = 19
    Alignment = taRightJustify
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBText4: TDBText
    Left = 102
    Top = 200
    Width = 411
    Height = 18
    Color = 13690576
    DataField = 'UNIDADE'
    DataSource = dmOracle.dsFuncionarioOra
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label10: TLabel
    Left = 28
    Top = 200
    Width = 70
    Height = 19
    Alignment = taRightJustify
    Caption = 'Unidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 23
    Top = 14
    Width = 118
    Height = 19
    Alignment = taRightJustify
    Caption = 'Forma de Pgto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 200
    Top = 8
    Width = 146
    Height = 48
    Caption = '1 - Descontada em Folha'#13#10'2 - Dinheiro'#13#10'3 - Cart'#227'o de Cr'#233'dito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 732
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 5
    object BitBtn1: TBitBtn
      Left = 277
      Top = 6
      Width = 106
      Height = 29
      Caption = '&Confirmar'
      Enabled = False
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
      Left = 383
      Top = 6
      Width = 106
      Height = 29
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Consultar Cr'#233'dito'
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 276
    Width = 732
    Height = 57
    Align = alBottom
    TabOrder = 6
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 155
      Height = 19
      Caption = 'Valor Limite Cr'#233'dito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbVlrLimite: TLabel
      Left = 176
      Top = 8
      Width = 31
      Height = 19
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 44
      Top = 32
      Width = 126
      Height = 19
      Caption = 'Valor em Aberto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbVlrAberto: TLabel
      Left = 176
      Top = 32
      Width = 31
      Height = 19
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 263
      Top = 16
      Width = 160
      Height = 24
      Caption = 'Valor Dispon'#237'vel:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbVlrDisponivel: TLabel
      Left = 432
      Top = 16
      Width = 39
      Height = 24
      Caption = '0.00'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Edit1: TEdit
    Left = 194
    Top = 100
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    Visible = False
    OnChange = Edit1Change
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 147
    Top = 100
    Width = 45
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 4
    TabOrder = 2
    Text = '0001'
    Visible = False
    OnExit = Edit2Exit
    OnKeyDown = Edit1KeyDown
  end
  object Edit3: TEdit
    Left = 147
    Top = 124
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 15
    PasswordChar = '*'
    TabOrder = 3
    Visible = False
    OnChange = Edit3Change
  end
  object BitBtn4: TBitBtn
    Left = 318
    Top = 99
    Width = 170
    Height = 25
    Caption = 'Venda com Senha'
    TabOrder = 7
    Visible = False
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 263
    Top = 124
    Width = 52
    Height = 21
    Caption = 'Ok'
    TabOrder = 4
    Visible = False
    OnClick = BitBtn5Click
  end
  object RxSpinEdit1: TRxSpinEdit
    Left = 147
    Top = 12
    Width = 49
    Height = 21
    Alignment = taCenter
    Decimal = 0
    MaxValue = 3.000000000000000000
    MinValue = 1.000000000000000000
    Value = 1.000000000000000000
    MaxLength = 1
    TabOrder = 0
    OnKeyDown = RxSpinEdit1KeyDown
  end
end
