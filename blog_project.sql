

CREATE TABLE authors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE blogs(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- crud operation for authors table

-- create: add a new author
INSERT INTO authors(author_name) VALUES("John Doe");

-- read: retrieve all data in authors
SELECT * FROM authors;

--retrieve specific id by author
SELECT * FROM authors WHERE id = 4;

-- update data

UPDATE authors SET author_name = 'Jasim smith' WHERE id = 2;

--delete data

DELETE FROM authors WHERE id = 2;

-- crud operation for categories table

--create: add category
INSERT INTO categories(category_name) VALUES('My Category');

-- read:

SELECT * FROM categories;

-- retrieve data specific id
SELECT * FROM categories WHERE id = 5;

-- update data
UPDATE categories SET category_name = "Our Category" WHERE id = 1;

--delete data
DELETE FROM categories WHERE id = 2;


--crud operation for blog table
--create: add blog
INSERT INTO blogs(title, body, category_id, author_id) VALUES
("My blog", "my blogs content", 1, 1);
--read data
SELECT * FROM blogs;

--read data specific id
SELECT * FROM blogs WHERE id = 1;

--Read: Retrieve blogs with their category and author
SELECT blogs.title, blogs.body, categories.category_name, authors.author_name
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;

--update blog

UPDATE blogs SET title = "My update blog" WHERE id = 2;

UPDATE blogs SET category_id = 4, author_id = 2 where id = 9;

-- delete blogs
DELETE FROM blogs WHERE id = 1;
-- To get all blogs written by a specific author:
SELECT authors.author_name, blogs.title, blogs.body
FROM blogs
JOIN authors ON blogs.author_id = authors.id
WHERE authors.id = 3;

-- To get all blogs under a specific category:
SELECT categories.category_name, blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.category_name = "Lifestyle";

