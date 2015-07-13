SELECT stock.isbn 
FROM editions 
JOIN publishers ON (editions.publisher_id = publishers.id)
JOIN stock ON (stock.isbn = editions.isbn)
WHERE publishers.name = 'Random House';


