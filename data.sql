INSERT INTO authors (author_name) VALUES
('Jane Smith'), 
('Alice Johnson'), 
('Robert Brown'), 
('Emily Davis');

INSERT INTO categories (category_name) VALUES
('Technology'), 
('Health & Wellness'), 
('Lifestyle'), 
('Travel'), 
('Education');


INSERT INTO blogs (title, body, category_id, author_id) VALUES
('The Future of AI', 'Content about artificial intelligence...', 1, 1), -- Tech, John Doe
('Top 10 Healthy Habits', 'Content about staying healthy...', 2, 2), -- Health, Jane Smith
('Minimalist Living Tips', 'Content about minimalism...', 3, 3), -- Lifestyle, Alice Johnson
('Backpacking in Europe', 'Content about budget travel...', 4, 4), -- Travel, Robert Brown
('Online Learning Platforms', 'Content about online education...', 5, 5), -- Education, Emily Davis
('Cloud Computing Explained', 'Content about cloud technologies...', 1, 1), -- Tech, John Doe
('How to Declutter Your Home', 'Content about decluttering...', 3, 3), -- Lifestyle, Alice Johnson
('Top 5 Beaches to Visit', 'Content about travel destinations...', 4, 4), -- Travel, Robert Brown
('Importance of Lifelong Learning', 'Content about continuous education...', 5, 5); -- Education, Emily Davis