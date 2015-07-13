SELECT books.title, editions.publication
FROM books 
LEFT JOIN editions ON (books.id = editions.book_id);