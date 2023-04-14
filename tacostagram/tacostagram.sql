-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS follows;
DROP TABLE IF EXISTS users;

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_user_ID INTEGER,
  image_URL TEXT,
  time TEXT
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_ID INTEGER,
  liker_user_ID INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_ID INTEGER,
  commenter_user_ID INTEGER,
  comment TEXT
);

CREATE TABLE follows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_user_id INTEGER,
  target_user_id INTEGER
); 

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  first_name TEXT,
  last_name TEXT,
  location TEXT
);
