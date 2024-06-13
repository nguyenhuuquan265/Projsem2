create database fptbookingticket
use database fptbookingticket

CREATE TABLE Users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE Movies (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  genre VARCHAR(50) NOT NULL,
  release_date DATE NOT NULL,
  duration INT NOT NULL
);

CREATE TABLE Theaters (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  address VARCHAR(200) NOT NULL,
  capacity INT NOT NULL
);

CREATE TABLE Showtimes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  movie_id INT NOT NULL,
  theater_id INT NOT NULL,
  showtime TIMESTAMP NOT NULL,
  available_seats INT NOT NULL,
  FOREIGN KEY (movie_id) REFERENCES Movies(id),
  FOREIGN KEY (theater_id) REFERENCES Theaters(id)
);

CREATE TABLE Bookings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  showtime_id INT NOT NULL,
  seat_number VARCHAR(10) NOT NULL,
  booking_date TIMESTAMP NOT NULL,
  status VARCHAR(20) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (showtime_id) REFERENCES Showtimes(id)
);

INSERT INTO Users (username, password, email, phone_number)
VALUES ('john Doe', 'password123', 'johndoe@example.com', '1234567890');

INSERT INTO Movies (title, description, genre, release_date, duration)
VALUES ('Movie 1', 'This is a description of Movie 1', 'Action', '2022-01-01', 120);

INSERT INTO Theaters (name, address, capacity)
VALUES ('Theater 1', '123 Main St', 500);

INSERT INTO Showtimes (Movies_id, theater_id, showtime, available_seats)
VALUES (1, 1, '2022-01-01 10:00:00', 400);

INSERT INTO Bookings (user_id, showtime_id, seat_number, booking_date, status)
VALUES (1, 1, 'A1', '2022-01-01 09:00:00', 'pending');

SELECT * FROM Users;
SELECT * FROM Movies;
SELECT * FROM Theaters;
SELECT * FROM Showtimes;
SELECT * FROM Bookings;