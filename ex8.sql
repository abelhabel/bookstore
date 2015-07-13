SELECT AVG(stock.cost) AS "Average cost", 
AVG(stock.retail) AS "Average retail", 
AVG(stock.retail - stock.cost) AS "Average profit"
FROM stock;