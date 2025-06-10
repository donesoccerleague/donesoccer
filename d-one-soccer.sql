CREATE DATABASE d_soccer_league;
USE d_soccer_league;

CREATE TABLE team (
  teamid INT AUTO_INCREMENT PRIMARY KEY,
  teamname VARCHAR(150) NOT NULL,
  teamgroup VARCHAR(2) NOT NULL,
  teampoint INT DEFAULT 0,
  teamposition INT DEFAULT 0
);

CREATE TABLE players (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  age INT,
  teamid INT,
  FOREIGN KEY (teamid) REFERENCES team(teamid)
);
