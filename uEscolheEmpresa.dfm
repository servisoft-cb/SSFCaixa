object fEscolheEmpresa: TfEscolheEmpresa
  Left = 239
  Top = 184
  Width = 482
  Height = 115
  BorderIcons = []
  Caption = 'fEscolheEmpresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 16
    Width = 50
    Height = 13
    Alignment = taRightJustify
    Caption = 'Selecione:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 88
    Top = 8
    Width = 353
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'FANTASIA'
    LookupSource = DMEmpresa.dsEmpresa
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 196
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
