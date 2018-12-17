object fConsVendasR: TfConsVendasR
  Left = 21
  Top = 121
  Width = 870
  Height = 500
  Caption = 'fConsVendasR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fConsVendas.dsCupom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 97
      Width = 718
      Height = 145
      DataSource = fConsVendas.dsCupom
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 44
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 56
          Top = 2
          Width = 80
          Height = 16
          DataField = 'DTEMISSAO'
          DataSource = fConsVendas.dsCupom
        end
        object RLDBText2: TRLDBText
          Left = 336
          Top = 2
          Width = 71
          Height = 16
          DataField = 'ID_CUPOM'
          DataSource = fConsVendas.dsCupom
        end
        object RLLabel1: TRLLabel
          Left = 18
          Top = 2
          Width = 35
          Height = 16
          Alignment = taRightJustify
          Caption = 'Data:'
        end
        object RLLabel2: TRLLabel
          Left = 270
          Top = 2
          Width = 63
          Height = 16
          Alignment = taRightJustify
          Caption = 'N'#186' Venda:'
        end
        object RLLabel3: TRLLabel
          Left = 146
          Top = 2
          Width = 35
          Height = 16
          Alignment = taRightJustify
          Caption = 'Hora:'
        end
        object RLDBText6: TRLDBText
          Left = 184
          Top = 2
          Width = 82
          Height = 16
          DataField = 'HREMISSAO'
          DataSource = fConsVendas.dsCupom
        end
        object RLLabel4: TRLLabel
          Left = 24
          Top = 26
          Width = 393
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Produto'
        end
        object RLLabel5: TRLLabel
          Left = 415
          Top = 26
          Width = 50
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Quant.'
        end
        object RLLabel6: TRLLabel
          Left = 464
          Top = 26
          Width = 74
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Valor Total'
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 44
        Width = 718
        Height = 64
        DataSource = fConsVendas.dsCupomItem
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 17
          BeforePrint = RLBand2BeforePrint
          object RLDBText3: TRLDBText
            Left = 24
            Top = 1
            Width = 390
            Height = 14
            AutoSize = False
            DataField = 'NOMEPRODUTO'
            DataSource = fConsVendas.dsCupomItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 416
            Top = 1
            Width = 47
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = fConsVendas.dsCupomItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 477
            Top = 1
            Width = 58
            Height = 14
            Alignment = taRightJustify
            DataField = 'VLRTOTAL'
            DataSource = fConsVendas.dsCupomItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 108
        Width = 718
        Height = 29
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand4BeforePrint
        object RLTotal: TRLLabel
          Left = 507
          Top = 8
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'Total'
        end
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      object RLDBText7: TRLDBText
        Left = 24
        Top = 1
        Width = 85
        Height = 16
        DataField = 'NOME'
        DataSource = dmOracle.dsFuncionarioOra
        Text = 'Nome: '
      end
      object RLDBText8: TRLDBText
        Left = 24
        Top = 17
        Width = 129
        Height = 16
        DataField = 'EMPRESA'
        DataSource = dmOracle.dsFuncionarioOra
        Text = 'Empresa: '
      end
      object RLDBText9: TRLDBText
        Left = 24
        Top = 33
        Width = 108
        Height = 16
        DataField = 'PESSOA'
        DataSource = dmOracle.dsFuncionarioOra
        Text = 'Crach'#225': '
      end
      object RLPeriodo: TRLLabel
        Left = 493
        Top = 34
        Width = 224
        Height = 16
        Alignment = taRightJustify
        Caption = 'Per'#237'odo de 99/99/9999 at'#233' 99/99/9999'
      end
    end
  end
end
