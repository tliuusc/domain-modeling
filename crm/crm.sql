-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS industry_mapping;

-- CREATE TABLES
CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  company_id INTEGER
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  activity_type TEXT,
  salesperson_id INTEGER,
  contact_id INTEGER,
  date TEXT,
  notes TEXT
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE salesperson (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  industry TEXT
);

CREATE TABLE industry_mapping (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id INTEGER,
  industry_id INTEGER
);