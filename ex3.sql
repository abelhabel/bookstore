SELECT stock.isbn, books.title, stock.stock, stock.retail
FROM editions 
JOIN publishers ON (editions.publisher_id = publishers.id)
JOIN stock ON (stock.isbn = editions.isbn)
JOIN books ON (editions.book_id = books.id)
WHERE publishers.name = 'Random House';