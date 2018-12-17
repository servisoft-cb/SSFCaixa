object fEstoqueResumidoR: TfEstoqueResumidoR
  Left = 54
  Top = 124
  Width = 847
  Height = 563
  Caption = 'fEstoqueResumidoR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DmEstoque.dsEstoqueAtual
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 105
      Width = 718
      Height = 64
      DataSource = DmEstoque.dsEstoqueAtual
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 19
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 0
          Top = 1
          Width = 86
          Height = 16
          AutoSize = False
          DataField = 'PRODUTO_ID'
          DataSource = DmEstoque.dsEstoqueAtual
        end
        object RLDBText2: TRLDBText
          Left = 144
          Top = 1
          Width = 57
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'QTD'
          DataSource = DmEstoque.dsEstoqueAtual
        end
        object RLDBText3: TRLDBText
          Left = 208
          Top = 1
          Width = 505
          Height = 16
          AutoSize = False
          DataField = 'NOME'
          DataSource = DmEstoque.dsEstoqueAtual
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 266
        Top = 1
        Width = 186
        Height = 16
        Alignment = taCenter
        Caption = 'SALDO ATUAL DO ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 48
        Width = 56
        Height = 16
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 154
        Top = 48
        Width = 36
        Height = 16
        Alignment = taCenter
        Caption = 'QTD.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 208
        Top = 48
        Width = 133
        Height = 16
        Caption = 'NOME DO PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 680
        Top = 1
        Width = 39
        Height = 16
        Alignment = taRightJustify
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 679
        Top = 17
        Width = 39
        Height = 16
        Alignment = taRightJustify
        Info = itHour
      end
      object RLDBText4: TRLDBText
        Left = 326
        Top = 16
        Width = 67
        Height = 16
        Alignment = taCenter
        DataField = 'FANTASIA'
        DataSource = DmEstoque.dsEmpresa
      end
    end
  end
end
