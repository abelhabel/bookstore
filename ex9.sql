SELECT editions.book_id, SUM(stock.stock)
FROM stock LEFT JOIN editions ON (stock.isbn = editions.isbn)
GROUP BY editions.book_id
ORDER BY SUM(stock.stock) DESC
;
