object fEstoqueDocIt: TfEstoqueDocIt
  Left = 359
  Top = 192
  Width = 562
  Height = 224
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fEstoqueDocIt'
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
    Top = 64
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 43
    Top = 40
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'd. de Barras:'
  end
  object Label3: TLabel
    Left = 73
    Top = 88
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unidade:'
  end
  object Label4: TLabel
    Left = 89
    Top = 136
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
  end
  object Label6: TLabel
    Left = 102
    Top = 16
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object Label5: TLabel
    Left = 58
    Top = 112
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Quantidade:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 157
    Width = 546
    Height = 29
    Align = alBottom
    Color = clBtnShadow
    TabOrder = 6
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
  object DBEdit3: TDBEdit
    Left = 120
    Top = 80
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = DmEstoque.dsEstoqueDocIt
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 120
    Top = 128
    Width = 121
    Height = 21
    DataField = 'VALOR'
    DataSource = DmEstoque.dsEstoqueDocIt
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 120
    Top = 8
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'ITEM'
    DataSource = DmEstoque.dsEstoqueDocIt
    ReadOnly = True
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 120
    Top = 32
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 120
    Top = 56
    Width = 329
    Height = 21
    DropDownCount = 8
    DataField = 'PRODUTO_ID'
    DataSource = DmEstoque.dsEstoqueDocIt
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmEstoque.dsProduto
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 21
    DataField = 'QTD'
    DataSource = DmEstoque.dsEstoqueDocIt
    TabOrder = 4
  end
end
