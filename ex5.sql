SELECT stock.isbn, books.title, stock.stock, stock.retail, 
CASE
WHEN editions.type = 'h' THEN 'Hardcover'
WHEN editions.type = 'p' THEN 'Paperback'
END
FROM editions 
JOIN publishers ON (editions.publisher_id = publishers.id)
JOIN stock ON (stock.isbn = editions.isbn)
JOIN books ON (editions.book_id = books.id)
WHERE publishers.name = 'Random House'
AND stock.stock > 0;