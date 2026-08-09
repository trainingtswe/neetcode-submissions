CREATE TABLE books (
  id INTEGER,
  title TEXT,
  author TEXT
);
-- Do not modify above this line --

ALTER TABLE ADD COLUMN published_year INTEGER;
ALTER TABLE RENAME COLUMN id TO isbn;
ALTER TABLE DROP COLUMN author;









-- Do not modify below this line --
SELECT column_name, data_type, column_default
FROM information_schema.columns
WHERE table_name = 'books'
ORDER BY column_name;
