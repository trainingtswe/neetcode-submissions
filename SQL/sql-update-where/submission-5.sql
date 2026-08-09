CREATE TABLE users (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username TEXT
);

INSERT INTO users (username) VALUES
  ('Alice'),
  ('Bob'),
  (NULL),
  ('Charlie'),
  (NULL);

-- Do not modify above this line. --

UPDATE users
SET username = 'anonymous'
WHERE username IS NULL;


--the mistake a was making here is that I was checking = NULL instead of using the notation = NULL 
--Also need to remind that null is a special value and doesn't go between ''


-- Do not modify below this line. --
SELECT * FROM users;
