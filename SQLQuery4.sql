SELECT * FROM [dbo].[TB_ACT_OLIST_ORDER_REVIEWS]
SELECT * FROM [dbo].[TB_ACT_OLIST_ORDER_ITEMS]
SELECT * FROM [dbo].[TB_ACT_PRODUCTS]


-- VIEW PARA ANALISAR OS REVIEWS DOS PRODUTOS
CREATE VIEW VW_REVIEWS_PRODUCTS
AS

SELECT R.*, O.PRODUCT_ID 
FROM [dbo].[TB_ACT_OLIST_ORDER_REVIEWS] AS R
INNER JOIN [dbo].[TB_ACT_OLIST_ORDER_ITEMS] AS O
ON O.ORDER_ID = R.ORDER_ID

SELECT * FROM VW_REVIEWS_PRODUCTS



-- CONSULTA QUE RELACIONA OS PRODUTOS E AS CATEGORIA

CREATE VIEW VW_PRODUCT_CATEGORY
AS

SELECT OO.*, P.PRODUCT_CATEGORY_NOME
FROM [dbo].[TB_ACT_OLIST_ORDER_ITEMS] AS OO
INNER JOIN [dbo].[TB_ACT_PRODUCTS] AS P
ON OO.PRODUCT_ID = P.PRODUCT_ID

SELECT * FROM VW_PRODUCT_CATEGORY





