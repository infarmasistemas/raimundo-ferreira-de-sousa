--Create table and its columns
CREATE TABLE [dbo].[VENDAS] (
	[Dat_Venda] [varchar](10) NULL,
	[Cod_Cliente] [int] NULL,
	[Des_Client] [varchar](50) NULL,
	[Cod_Produto] [int] NOT NULL,
	[Des_Produt] [varchar](150) NULL,
	[Qtd_Produto] [int] NULL,
	[Vlr_TotItem] [numeric](18, 4) NULL);
GO
SELECT sum((qtd_Produto )/ 30 * 5) 'TOTAL_COMPRAR', sum(qtd_Produto ) 'TOTAL_VENDIDO' FROM VENDAS where Des_Produt='NARIDRIN GTS AD 15 ML';
