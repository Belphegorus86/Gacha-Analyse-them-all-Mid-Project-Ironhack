CREATE TABLE media (
    title VARCHAR(100),
    revenue INT,
    type VARCHAR(50)
);

INSERT INTO media (title, revenue, type) VALUES
('Thriller', 130000000, 'Album'),
('Aap Kaa Surroor', 55000000, 'Album'),
('The Dark Side of the Moon', 50000000, 'Album'),
('Back in Black', 49000000, 'Album'),
('The Bodyguard', 44000000, 'Album'),
('Bat Out of Hell', 43000000, 'Album'),
('Eagles Their Greatest Hits (1971–1975)', 42000000, 'Album'),
('Dirty Dancing', 42000000, 'Album'),
('Millennium', 40000000, 'Album'),
('Saturday Night Fever', 40000000, 'Album');

select * from media;

use games;

SELECT * FROM games.games_top_10;

use movies;

SELECT * FROM movies.`movies_top_10(2)`;

SELECT * FROM games.media;

CREATE TABLE media_revenue_final AS
SELECT title, revenue, type FROM games.games_top_10
UNION
SELECT title, revenue, type FROM movies.`movies_top_10(2)`
UNION
SELECT title, revenue, type FROM games.media;

select * from media_revenue_final;

SELECT * FROM media_revenue_final
ORDER BY revenue DESC;