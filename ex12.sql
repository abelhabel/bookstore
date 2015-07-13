SELECT books.title, count(editions.type) AS both
FROM editions 
JOIN publishers ON (editions.publisher_id = publishers.id)
JOIN stock ON (stock.isbn = editions.isbn)
JOIN books ON (editions.book_id = books.id)
GROUP BY books.title
HAVING count(editions.type) = 2
;