SELECT publishers.name, ROUND(AVG(stock.retail), 2) AS "Average retail",
COUNT(editions.publisher_id)
FROM stock
JOIN editions ON (editions.isbn = stock.isbn)
JOIN publishers ON (publishers.id = editions.publisher_id)
GROUP BY publishers.name
ORDER BY publishers.name;