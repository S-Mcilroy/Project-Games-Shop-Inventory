DROP TABLE sales;
DROP TABLE games;
DROP TABLE publishers;

CREATE TABLE publishers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  trading VARCHAR(255),
  logo VARCHAR(255)
);

CREATE TABLE games(
  id SERIAL PRIMARY KEY,
  publisher_id INT REFERENCES publishers(id) ON DELETE SET NULL,
  name VARCHAR(255),
  genre VARCHAR(255),
  buy_price DECIMAL(5, 2),
  sell_price DECIMAL(5, 2),
  stock INT,
  logo VARCHAR
);

CREATE TABLE sales(
  id SERIAL PRIMARY KEY,
  game_id INT REFERENCES games(id) ON DELETE CASCADE,
  transaction_date DATE,
  amount INT
);
