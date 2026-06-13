-- Drop and recreate database (clean slate)
DROP DATABASE IF EXISTS gameboard_db;
CREATE DATABASE gameboard_db;
USE gameboard_db;
DROP TABLE IF EXISTS game_leaderboard;

-- Create table with correct column names
CREATE TABLE game_leaderboard (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(50) NOT NULL UNIQUE,
    total_score INT DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert test players
INSERT INTO game_leaderboard (player_name, total_score) VALUES ('Playstation', 0);
INSERT INTO game_leaderboard (player_name, total_score) VALUES ('Xbox', 0);