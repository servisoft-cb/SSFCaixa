object DMProduto: TDMProduto
  OldCreateOrder = False
  Left = 404
  Top = 132
  Height = 391
  Width = 485
  object adtProdutos: TADOTable
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    TableName = 'Produtos'
    Left = 32
    Top = 24
    object adtProdutosCdigo: TWideStringField
      FieldName = 'C'#243'digo'
    end
    object adtProdutosTipo: TWideStringField
      FieldName = 'Tipo'
    end
    object adtProdutosLinha01: TWideStringField
      FieldName = 'Linha01'
      Size = 40
    end
    object adtProdutosLinha02: TWideStringField
      FieldName = 'Linha02'
      Size = 40
    end
    object adtProdutosLinha03: TWideStringField
      FieldName = 'Linha03'
      Size = 40
    end
    object adtProdutosMarca: TWideStringField
      FieldName = 'Marca'
      Size = 15
    end
    object adtProdutosUnidade: TWideStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object adtProdutosUnidadeEntrada: TWideStringField
      FieldName = 'UnidadeEntrada'
      Size = 3
    end
    object adtProdutosUnidadeAuxiliar: TWideStringField
      FieldName = 'UnidadeAuxiliar'
      Size = 3
    end
    object adtProdutosUnidadeAuxiliar1: TWideStringField
      FieldName = 'UnidadeAuxiliar1'
      Size = 3
    end
    object adtProdutosUnidadedeCompra: TWideStringField
      FieldName = 'Unidade de Compra'
      Size = 3
    end
    object adtProdutosAtacadosomentesemaiorque: TIntegerField
      FieldName = 'Atacado somente se maior que'
    end
    object adtProdutosPesoLquido: TFloatField
      FieldName = 'Peso L'#237'quido'
    end
    object adtProdutosLocalizaodoProduto: TWideStringField
      FieldName = 'Localiza'#231#227'o do Produto'
      Size = 40
    end
    object adtProdutosDiasparaReposio: TWordField
      FieldName = 'Dias para Reposi'#231#227'o'
    end
    object adtProdutosMesesdegarantia: TWordField
      FieldName = 'Meses de garantia'
    end
    object adtProdutosGrupo: TIntegerField
      FieldName = 'Grupo'
    end
    object adtProdutosSubgrupo: TIntegerField
      FieldName = 'Subgrupo'
    end
    object adtProdutosSituaodoProduto: TWideStringField
      FieldName = 'Situa'#231#227'o do Produto'
    end
    object adtProdutosSituaoTributria: TWideStringField
      FieldName = 'Situa'#231#227'o Tribut'#225'ria'
      Size = 5
    end
    object adtProdutosCdigodoNCM: TWideStringField
      FieldName = 'C'#243'digo do NCM'
      Size = 12
    end
    object adtProdutosLetradoNCM: TWideStringField
      FieldName = 'Letra do NCM'
      Size = 1
    end
    object adtProdutosReal: TFloatField
      FieldName = 'Real'
    end
    object adtProdutosVirtual: TFloatField
      FieldName = 'Virtual'
    end
    object adtProdutosMnimo: TFloatField
      FieldName = 'M'#237'nimo'
    end
    object adtProdutosMximo: TFloatField
      FieldName = 'M'#225'ximo'
    end
    object adtProdutosMdiadeVendas: TFloatField
      FieldName = 'M'#233'dia de Vendas'
    end
    object adtProdutosMdiadeFabricao: TFloatField
      FieldName = 'M'#233'dia de Fabrica'#231#227'o'
    end
    object adtProdutosLoteMnimodeCompras: TFloatField
      FieldName = 'Lote M'#237'nimo de Compras'
    end
    object adtProdutosLoteMnimodeVendas: TFloatField
      FieldName = 'Lote M'#237'nimo de Vendas'
    end
    object adtProdutosLoteMnimodeFabricao: TFloatField
      FieldName = 'Lote M'#237'nimo de Fabrica'#231#227'o'
    end
    object adtProdutosValordeCompra: TFloatField
      FieldName = 'Valor de Compra'
    end
    object adtProdutosValordeVenda: TFloatField
      FieldName = 'Valor de Venda'
    end
    object adtProdutosMargemdeVenda: TFloatField
      FieldName = 'Margem de Venda'
    end
    object adtProdutosVendaAtacado: TFloatField
      FieldName = 'Venda Atacado'
    end
    object adtProdutosVendaVarejo: TFloatField
      FieldName = 'Venda Varejo'
    end
    object adtProdutosMargemAtacado: TFloatField
      FieldName = 'Margem Atacado'
    end
    object adtProdutosMargemVarejo: TFloatField
      FieldName = 'Margem Varejo'
    end
    object adtProdutosValordeTransferncia: TFloatField
      FieldName = 'Valor de Transfer'#234'ncia'
    end
    object adtProdutosValorPromoo: TFloatField
      FieldName = 'Valor Promo'#231#227'o'
    end
    object adtProdutosValidadedaPromoo: TDateTimeField
      FieldName = 'Validade da Promo'#231#227'o'
    end
    object adtProdutosValorPromooAtacado: TFloatField
      FieldName = 'Valor Promo'#231#227'o Atacado'
    end
    object adtProdutosValidadedaPromooAtacado: TDateTimeField
      FieldName = 'Validade da Promo'#231#227'o Atacado'
    end
    object adtProdutosValorPromooVarejo: TFloatField
      FieldName = 'Valor Promo'#231#227'o Varejo'
    end
    object adtProdutosValidadedaPromooVarejo: TDateTimeField
      FieldName = 'Validade da Promo'#231#227'o Varejo'
    end
    object adtProdutosltimaAtualizaodoProduto: TDateTimeField
      FieldName = #218'ltima Atualiza'#231#227'o do Produto'
    end
    object adtProdutosltimaAtualizaodeVenda: TDateTimeField
      FieldName = #218'ltima Atualiza'#231#227'o de Venda'
    end
    object adtProdutosQuantidadeporVolume: TFloatField
      FieldName = 'Quantidade por Volume'
    end
    object adtProdutosNmerodoDesenho: TWideStringField
      FieldName = 'N'#250'mero do Desenho'
      Size = 15
    end
    object adtProdutosEspecificaesTcnicas: TMemoField
      FieldName = 'Especifica'#231#245'es T'#233'cnicas'
      BlobType = ftMemo
    end
    object adtProdutosCdigodeBarras: TWideStringField
      FieldName = 'C'#243'digo de Barras'
      Size = 16
    end
    object adtProdutosListadePreos: TBooleanField
      FieldName = 'Lista de Pre'#231'os'
    end
    object adtProdutosComisso: TFloatField
      FieldName = 'Comiss'#227'o'
    end
    object adtProdutosMoedaVenda: TWideStringField
      FieldName = 'Moeda Venda'
      Size = 10
    end
    object adtProdutosCondiodePagamento: TSmallintField
      FieldName = 'Condi'#231#227'o de Pagamento'
    end
    object adtProdutosMargemdeVendaSubstituioTributria: TFloatField
      FieldName = 'Margem de Venda Substitui'#231#227'o Tribut'#225'ria'
    end
    object adtProdutosValordosMateriais: TFloatField
      FieldName = 'Valor dos Materiais'
    end
    object adtProdutosValordaModeObra: TFloatField
      FieldName = 'Valor da M'#227'o de Obra'
    end
    object adtProdutosCentro: TIntegerField
      FieldName = 'Centro'
    end
    object adtProdutosOutrasInformaes01: TWideStringField
      FieldName = 'Outras Informa'#231#245'es01'
      Size = 30
    end
    object adtProdutosOutrasInformaes02: TWideStringField
      FieldName = 'Outras Informa'#231#245'es02'
      Size = 30
    end
    object adtProdutosOutrasInformaes03: TWideStringField
      FieldName = 'Outras Informa'#231#245'es03'
      Size = 30
    end
    object adtProdutosOutrasInformaes04: TWideStringField
      FieldName = 'Outras Informa'#231#245'es04'
      Size = 30
    end
    object adtProdutosOutrasInformaes05: TWideStringField
      FieldName = 'Outras Informa'#231#245'es05'
      Size = 30
    end
    object adtProdutosOutrasInformaes06: TWideStringField
      FieldName = 'Outras Informa'#231#245'es06'
      Size = 30
    end
    object adtProdutosOutrasInformaes07: TWideStringField
      FieldName = 'Outras Informa'#231#245'es07'
      Size = 30
    end
    object adtProdutosOutrasInformaes08: TWideStringField
      FieldName = 'Outras Informa'#231#245'es08'
      Size = 30
    end
    object adtProdutosOutrasInformaes09: TWideStringField
      FieldName = 'Outras Informa'#231#245'es09'
      Size = 30
    end
    object adtProdutosOutrasInformaes10: TWideStringField
      FieldName = 'Outras Informa'#231#245'es10'
      Size = 30
    end
    object adtProdutosArquivocomEspecificaoTcnica: TWideStringField
      FieldName = 'Arquivo com Especifica'#231#227'o T'#233'cnica'
      Size = 100
    end
    object adtProdutosFatordeConversodeUnidadeparaProduo: TFloatField
      FieldName = 'Fator de Convers'#227'o de Unidade para Produ'#231#227'o'
    end
    object adtProdutosObrigatrioLicena: TBooleanField
      FieldName = 'Obrigat'#243'rio Licen'#231'a'
    end
    object adtProdutosFoto: TBlobField
      FieldName = 'Foto'
    end
    object adtProdutosDatadoInventrio: TDateTimeField
      FieldName = 'Data do Invent'#225'rio'
    end
    object adtProdutosVendedor01: TSmallintField
      FieldName = 'Vendedor01'
    end
    object adtProdutosValordeCompraOriginal: TFloatField
      FieldName = 'Valor de Compra Original'
    end
    object adtProdutosValordeDescontonaCompra: TFloatField
      FieldName = 'Valor de Desconto na Compra'
    end
    object adtProdutosUnidadeVlrVenda: TWideStringField
      FieldName = 'UnidadeVlrVenda'
      Size = 3
    end
    object adtProdutosArea: TFloatField
      FieldName = 'Area'
    end
    object adtProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object adtProdutosLOCPAD: TWideStringField
      FieldName = 'LOCPAD'
      Size = 12
    end
    object adtProdutosCUSPRO: TFloatField
      FieldName = 'CUSPRO'
    end
    object adtProdutosPerDmx: TFloatField
      FieldName = 'PerDmx'
    end
    object adtProdutosICMVEN: TFloatField
      FieldName = 'ICMVEN'
    end
    object adtProdutosICMCOM: TFloatField
      FieldName = 'ICMCOM'
    end
    object adtProdutospeso_embalagem: TBCDField
      FieldName = 'peso_embalagem'
      Precision = 19
    end
    object adtProdutosproduto_configuravel: TBooleanField
      FieldName = 'produto_configuravel'
    end
  end
  object dstProduto_EBS: TDataSource
    DataSet = adtProdutos
    Left = 88
    Top = 24
  end
  object adsProduto_EBS: TADODataSet
    Connection = dmDatabase_EBS.adoEBS
    CursorType = ctStatic
    CommandText = 
      'SELECT *, C'#243'digo AS Codigo, ([Situa'#231#227'o do Produto]) As Sit_Produ' +
      'to, ([Valor de Compra]) As VlrCompra, ([Valor de Venda]) As VlrV' +
      'enda, ([Venda Atacado]) as VlrAtacado, ([Venda Varejo]) As VlrVa' +
      'rejo, ([Valor Promo'#231#227'o]) As VlrPromocao, ([Validade da Promo'#231#227'o]' +
      ') As DtPromocao, ([C'#243'digo de Barras]) As CodBarra, (['#218'ltima Atua' +
      'liza'#231#227'o de Venda]) As DtUltAtualizacaoVenda'#13#10'FROM PRODUTOS'#13#10'WHER' +
      'E [Situa'#231#227'o do Produto] = '#39'Ativo'#39' AND GRUPO = 4'#13#10'ORDER BY LINHA0' +
      '1'
    Parameters = <>
    Left = 32
    Top = 72
    object adsProduto_EBSCodigo: TWideStringField
      FieldName = 'Codigo'
    end
    object adsProduto_EBSSit_Produto: TWideStringField
      FieldName = 'Sit_Produto'
    end
    object adsProduto_EBSVlrCompra: TFloatField
      FieldName = 'VlrCompra'
    end
    object adsProduto_EBSVlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object adsProduto_EBSVlrAtacado: TFloatField
      FieldName = 'VlrAtacado'
    end
    object adsProduto_EBSVlrVarejo: TFloatField
      FieldName = 'VlrVarejo'
    end
    object adsProduto_EBSVlrPromocao: TFloatField
      FieldName = 'VlrPromocao'
    end
    object adsProduto_EBSDtPromocao: TDateTimeField
      FieldName = 'DtPromocao'
    end
    object adsProduto_EBSCodBarra: TWideStringField
      FieldName = 'CodBarra'
      Size = 16
    end
    object adsProduto_EBSTipo: TWideStringField
      FieldName = 'Tipo'
    end
    object adsProduto_EBSLinha01: TWideStringField
      FieldName = 'Linha01'
      Size = 40
    end
    object adsProduto_EBSLinha02: TWideStringField
      FieldName = 'Linha02'
      Size = 40
    end
    object adsProduto_EBSLinha03: TWideStringField
      FieldName = 'Linha03'
      Size = 40
    end
    object adsProduto_EBSMarca: TWideStringField
      FieldName = 'Marca'
      Size = 15
    end
    object adsProduto_EBSUnidade: TWideStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object adsProduto_EBSUnidadeEntrada: TWideStringField
      FieldName = 'UnidadeEntrada'
      Size = 3
    end
    object adsProduto_EBSUnidadeAuxiliar: TWideStringField
      FieldName = 'UnidadeAuxiliar'
      Size = 3
    end
    object adsProduto_EBSUnidadeAuxiliar1: TWideStringField
      FieldName = 'UnidadeAuxiliar1'
      Size = 3
    end
    object adsProduto_EBSUnidadedeCompra: TWideStringField
      FieldName = 'Unidade de Compra'
      Size = 3
    end
    object adsProduto_EBSAtacadosomentesemaiorque: TIntegerField
      FieldName = 'Atacado somente se maior que'
    end
    object adsProduto_EBSPesoLquido: TFloatField
      FieldName = 'Peso L'#237'quido'
    end
    object adsProduto_EBSLocalizaodoProduto: TWideStringField
      FieldName = 'Localiza'#231#227'o do Produto'
      Size = 40
    end
    object adsProduto_EBSDiasparaReposio: TWordField
      FieldName = 'Dias para Reposi'#231#227'o'
    end
    object adsProduto_EBSMesesdegarantia: TWordField
      FieldName = 'Meses de garantia'
    end
    object adsProduto_EBSGrupo: TIntegerField
      FieldName = 'Grupo'
    end
    object adsProduto_EBSSubgrupo: TIntegerField
      FieldName = 'Subgrupo'
    end
    object adsProduto_EBSSituaoTributria: TWideStringField
      FieldName = 'Situa'#231#227'o Tribut'#225'ria'
      Size = 5
    end
    object adsProduto_EBSCdigodoNCM: TWideStringField
      FieldName = 'C'#243'digo do NCM'
      Size = 12
    end
    object adsProduto_EBSLetradoNCM: TWideStringField
      FieldName = 'Letra do NCM'
      Size = 1
    end
    object adsProduto_EBSReal: TFloatField
      FieldName = 'Real'
    end
    object adsProduto_EBSVirtual: TFloatField
      FieldName = 'Virtual'
    end
    object adsProduto_EBSMnimo: TFloatField
      FieldName = 'M'#237'nimo'
    end
    object adsProduto_EBSMximo: TFloatField
      FieldName = 'M'#225'ximo'
    end
    object adsProduto_EBSMdiadeVendas: TFloatField
      FieldName = 'M'#233'dia de Vendas'
    end
    object adsProduto_EBSMdiadeFabricao: TFloatField
      FieldName = 'M'#233'dia de Fabrica'#231#227'o'
    end
    object adsProduto_EBSLoteMnimodeCompras: TFloatField
      FieldName = 'Lote M'#237'nimo de Compras'
    end
    object adsProduto_EBSLoteMnimodeVendas: TFloatField
      FieldName = 'Lote M'#237'nimo de Vendas'
    end
    object adsProduto_EBSLoteMnimodeFabricao: TFloatField
      FieldName = 'Lote M'#237'nimo de Fabrica'#231#227'o'
    end
    object adsProduto_EBSMargemdeVenda: TFloatField
      FieldName = 'Margem de Venda'
    end
    object adsProduto_EBSMargemAtacado: TFloatField
      FieldName = 'Margem Atacado'
    end
    object adsProduto_EBSMargemVarejo: TFloatField
      FieldName = 'Margem Varejo'
    end
    object adsProduto_EBSValordeTransferncia: TFloatField
      FieldName = 'Valor de Transfer'#234'ncia'
    end
    object adsProduto_EBSValorPromooAtacado: TFloatField
      FieldName = 'Valor Promo'#231#227'o Atacado'
    end
    object adsProduto_EBSValidadedaPromooAtacado: TDateTimeField
      FieldName = 'Validade da Promo'#231#227'o Atacado'
    end
    object adsProduto_EBSValorPromooVarejo: TFloatField
      FieldName = 'Valor Promo'#231#227'o Varejo'
    end
    object adsProduto_EBSValidadedaPromooVarejo: TDateTimeField
      FieldName = 'Validade da Promo'#231#227'o Varejo'
    end
    object adsProduto_EBSltimaAtualizaodoProduto: TDateTimeField
      FieldName = #218'ltima Atualiza'#231#227'o do Produto'
    end
    object adsProduto_EBSQuantidadeporVolume: TFloatField
      FieldName = 'Quantidade por Volume'
    end
    object adsProduto_EBSNmerodoDesenho: TWideStringField
      FieldName = 'N'#250'mero do Desenho'
      Size = 15
    end
    object adsProduto_EBSEspecificaesTcnicas: TMemoField
      FieldName = 'Especifica'#231#245'es T'#233'cnicas'
      BlobType = ftMemo
    end
    object adsProduto_EBSListadePreos: TBooleanField
      FieldName = 'Lista de Pre'#231'os'
    end
    object adsProduto_EBSComisso: TFloatField
      FieldName = 'Comiss'#227'o'
    end
    object adsProduto_EBSMoedaVenda: TWideStringField
      FieldName = 'Moeda Venda'
      Size = 10
    end
    object adsProduto_EBSCondiodePagamento: TSmallintField
      FieldName = 'Condi'#231#227'o de Pagamento'
    end
    object adsProduto_EBSMargemdeVendaSubstituioTributria: TFloatField
      FieldName = 'Margem de Venda Substitui'#231#227'o Tribut'#225'ria'
    end
    object adsProduto_EBSValordosMateriais: TFloatField
      FieldName = 'Valor dos Materiais'
    end
    object adsProduto_EBSValordaModeObra: TFloatField
      FieldName = 'Valor da M'#227'o de Obra'
    end
    object adsProduto_EBSCentro: TIntegerField
      FieldName = 'Centro'
    end
    object adsProduto_EBSOutrasInformaes01: TWideStringField
      FieldName = 'Outras Informa'#231#245'es01'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes02: TWideStringField
      FieldName = 'Outras Informa'#231#245'es02'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes03: TWideStringField
      FieldName = 'Outras Informa'#231#245'es03'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes04: TWideStringField
      FieldName = 'Outras Informa'#231#245'es04'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes05: TWideStringField
      FieldName = 'Outras Informa'#231#245'es05'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes06: TWideStringField
      FieldName = 'Outras Informa'#231#245'es06'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes07: TWideStringField
      FieldName = 'Outras Informa'#231#245'es07'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes08: TWideStringField
      FieldName = 'Outras Informa'#231#245'es08'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes09: TWideStringField
      FieldName = 'Outras Informa'#231#245'es09'
      Size = 30
    end
    object adsProduto_EBSOutrasInformaes10: TWideStringField
      FieldName = 'Outras Informa'#231#245'es10'
      Size = 30
    end
    object adsProduto_EBSArquivocomEspecificaoTcnica: TWideStringField
      FieldName = 'Arquivo com Especifica'#231#227'o T'#233'cnica'
      Size = 100
    end
    object adsProduto_EBSFatordeConversodeUnidadeparaProduo: TFloatField
      FieldName = 'Fator de Convers'#227'o de Unidade para Produ'#231#227'o'
    end
    object adsProduto_EBSObrigatrioLicena: TBooleanField
      FieldName = 'Obrigat'#243'rio Licen'#231'a'
    end
    object adsProduto_EBSFoto: TBlobField
      FieldName = 'Foto'
    end
    object adsProduto_EBSDatadoInventrio: TDateTimeField
      FieldName = 'Data do Invent'#225'rio'
    end
    object adsProduto_EBSVendedor01: TSmallintField
      FieldName = 'Vendedor01'
    end
    object adsProduto_EBSValordeCompraOriginal: TFloatField
      FieldName = 'Valor de Compra Original'
    end
    object adsProduto_EBSValordeDescontonaCompra: TFloatField
      FieldName = 'Valor de Desconto na Compra'
    end
    object adsProduto_EBSUnidadeVlrVenda: TWideStringField
      FieldName = 'UnidadeVlrVenda'
      Size = 3
    end
    object adsProduto_EBSArea: TFloatField
      FieldName = 'Area'
    end
    object adsProduto_EBSCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object adsProduto_EBSLOCPAD: TWideStringField
      FieldName = 'LOCPAD'
      Size = 12
    end
    object adsProduto_EBSCUSPRO: TFloatField
      FieldName = 'CUSPRO'
    end
    object adsProduto_EBSPerDmx: TFloatField
      FieldName = 'PerDmx'
    end
    object adsProduto_EBSICMVEN: TFloatField
      FieldName = 'ICMVEN'
    end
    object adsProduto_EBSICMCOM: TFloatField
      FieldName = 'ICMCOM'
    end
    object adsProduto_EBSUMEPRO: TWideStringField
      FieldName = 'UMEPRO'
      Size = 3
    end
    object adsProduto_EBScd_conta_contabil: TIntegerField
      FieldName = 'cd_conta_contabil'
    end
    object adsProduto_EBScd_formacalculo_icmsst: TIntegerField
      FieldName = 'cd_formacalculo_icmsst'
    end
    object adsProduto_EBSpr_aliquota_int_icmsst: TBCDField
      FieldName = 'pr_aliquota_int_icmsst'
      Precision = 19
    end
    object adsProduto_EBSpeso_embalagem: TBCDField
      FieldName = 'peso_embalagem'
      Precision = 19
    end
    object adsProduto_EBSDtUltAtualizacaoVenda: TDateTimeField
      FieldName = 'DtUltAtualizacaoVenda'
    end
  end
  object dsProduto_EBS: TDataSource
    DataSet = adsProduto_EBS
    Left = 88
    Top = 72
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PRODUTO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 144
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoCODIGO_EBS: TStringField
      FieldName = 'CODIGO_EBS'
    end
    object sdsProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 16
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object sdsProdutoLINHA_2: TStringField
      FieldName = 'LINHA_2'
      Size = 60
    end
    object sdsProdutoDT_ATUALIZACAO_COMPRA: TDateField
      FieldName = 'DT_ATUALIZACAO_COMPRA'
    end
    object sdsProdutoDT_ATUALIZACAO_VENDA: TDateField
      FieldName = 'DT_ATUALIZACAO_VENDA'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 144
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    AfterInsert = cdsProdutoAfterInsert
    Left = 112
    Top = 144
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoCODIGO_EBS: TStringField
      FieldName = 'CODIGO_EBS'
    end
    object cdsProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 16
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.00'
    end
    object cdsProdutoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
      DisplayFormat = '0.00'
    end
    object cdsProdutoLINHA_2: TStringField
      FieldName = 'LINHA_2'
      Size = 60
    end
    object cdsProdutoDT_ATUALIZACAO_COMPRA: TDateField
      FieldName = 'DT_ATUALIZACAO_COMPRA'
    end
    object cdsProdutoDT_ATUALIZACAO_VENDA: TDateField
      FieldName = 'DT_ATUALIZACAO_VENDA'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosdsProdutoPreco: TDataSetField
      FieldName = 'sdsProdutoPreco'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 152
    Top = 144
  end
  object sdsProdutoCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PRODUTO WHERE 1 =1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 280
    Top = 144
    object sdsProdutoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoConsCODIGO_EBS: TStringField
      FieldName = 'CODIGO_EBS'
    end
    object sdsProdutoConsCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 16
    end
    object sdsProdutoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsProdutoConsUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoConsPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoConsPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object sdsProdutoConsLINHA_2: TStringField
      FieldName = 'LINHA_2'
      Size = 60
    end
    object sdsProdutoConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspProdutoCons: TDataSetProvider
    DataSet = sdsProdutoCons
    Left = 320
    Top = 144
  end
  object cdsProdutoCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoCons'
    Left = 360
    Top = 144
    object cdsProdutoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoConsCODIGO_EBS: TStringField
      FieldName = 'CODIGO_EBS'
    end
    object cdsProdutoConsCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 16
    end
    object cdsProdutoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsProdutoConsUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoConsPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.00'
    end
    object cdsProdutoConsPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
      DisplayFormat = '0.00'
    end
    object cdsProdutoConsLINHA_2: TStringField
      FieldName = 'LINHA_2'
      Size = 60
    end
    object cdsProdutoConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsProdutoCons: TDataSource
    DataSet = cdsProdutoCons
    Left = 400
    Top = 144
  end
  object dsmProduto: TDataSource
    DataSet = sdsProduto
    Left = 192
    Top = 144
  end
  object sdsProdutoPreco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PP.*'#13#10'FROM PRODUTO_PRECO PP'#13#10'WHERE PP.PRODUTO_ID = :ID'
    DataSource = dsmProduto
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 200
    object sdsProdutoPrecoPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoPrecoEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoPrecoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object sdsProdutoPrecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object cdsProdutoPreco: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsProdutoPreco
    Params = <>
    OnCalcFields = cdsProdutoPrecoCalcFields
    Left = 72
    Top = 200
    object cdsProdutoPrecoPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoPrecoEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoPrecoPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
      DisplayFormat = '0.00'
    end
    object cdsProdutoPrecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.00'
    end
    object cdsProdutoPrecoclNOME: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNOME'
      Size = 30
      Calculated = True
    end
  end
  object dsProdutoPreco: TDataSource
    DataSet = cdsProdutoPreco
    Left = 112
    Top = 200
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 280
    Top = 192
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 320
    Top = 192
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 360
    Top = 192
    object cdsEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 400
    Top = 192
  end
  object sdsListaPreco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.NOME, PP.PRECO_VENDA'#13#10'FROM PRODUTO_PRECO PP'#13#10'INNER JOIN' +
      ' PRODUTO P ON (PP.PRODUTO_ID = P.ID)'#13#10'WHERE PP.EMPRESA_ID = :E'#13#10 +
      'ORDER BY P.NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'E'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 280
    Top = 256
  end
  object dspListaPreco: TDataSetProvider
    DataSet = sdsListaPreco
    Left = 320
    Top = 256
  end
  object cdsListaPreco: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaPreco'
    Left = 360
    Top = 256
    object cdsListaPrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsListaPrecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.00'
    end
  end
  object dsListaPreco: TDataSource
    DataSet = cdsListaPreco
    Left = 400
    Top = 256
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41899.564080219900000000
    ReportOptions.LastChange = 41899.574019189810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset2."FANTASIA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 15.118120000000000000
          Top = 37.795300000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 442.205010000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PRE'#195#8225'O')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 616.063390000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."NOME"]')
        end
        object Memo3: TfrxMemoView
          Left = 442.205010000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PRECO_VENDA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PRECO_VENDA"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsListaPreco
    BCDToCurrency = False
    Left = 72
    Top = 280
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsEmpresa
    BCDToCurrency = False
    Left = 104
    Top = 280
  end
end
