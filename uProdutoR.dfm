object fProdutoR: TfProdutoR
  Left = 226
  Top = 142
  Width = 838
  Height = 563
  Caption = 'fProdutoR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DMProduto.dsProdutoCons
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 19
      Top = 61
      Width = 756
      Height = 64
      DataSource = DMProduto.dsProdutoCons
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 17
        Color = 15329769
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 48
          Height = 16
          AutoSize = False
          DataField = 'ID'
          DataSource = DMProduto.dsProdutoCons
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 48
          Top = 0
          Width = 105
          Height = 16
          AutoSize = False
          DataField = 'CODBARRA'
          DataSource = DMProduto.dsProdutoCons
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 153
          Top = 0
          Width = 224
          Height = 16
          AutoSize = False
          DataField = 'NOME'
          DataSource = DMProduto.dsProdutoCons
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 377
          Top = 0
          Width = 176
          Height = 16
          AutoSize = False
          DataField = 'LINHA_2'
          DataSource = DMProduto.dsProdutoCons
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 553
          Top = 0
          Width = 72
          Height = 16
          AutoSize = False
          DataField = 'UNIDADE'
          DataSource = DMProduto.dsProdutoCons
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 624
          Top = 0
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_VENDA'
          DataSource = DMProduto.dsProdutoCons
          Transparent = False
        end
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 42
      BeforePrint = RLBand2BeforePrint
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 164
        Height = 16
        Caption = 'RELA'#199#195'O DE PRODUTOS'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 679
        Top = 0
        Width = 39
        Height = 16
        Alignment = taRightJustify
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 24
        Width = 48
        Height = 18
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'ID'
      end
      object RLLabel3: TRLLabel
        Left = 48
        Top = 24
        Width = 105
        Height = 18
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'C'#211'D. BARRAS'
      end
      object RLLabel4: TRLLabel
        Left = 153
        Top = 24
        Width = 224
        Height = 18
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'C'#211'D. BARRAS'
      end
      object RLLabel5: TRLLabel
        Left = 377
        Top = 24
        Width = 176
        Height = 18
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'COMPLEMENTO'
      end
      object RLLabel6: TRLLabel
        Left = 553
        Top = 24
        Width = 72
        Height = 18
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'UN'
      end
      object RLLabel7: TRLLabel
        Left = 625
        Top = 24
        Width = 72
        Height = 18
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'PRE'#199'O'
      end
    end
  end
end
