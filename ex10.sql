SELECT authors.id, CONCAT(authors.first_name, ' ', authors.last_name) AS "Full name",
COUNT(books.author_id) AS "Number of Books"
FROM authors LEFT JOIN books on (authors.id = books.author_id)
GROUP BY authors.id;