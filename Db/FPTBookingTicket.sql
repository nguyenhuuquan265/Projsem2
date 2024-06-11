create database fptbookingticket 

use fptbookingticket 

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    full_name VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE Events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL,
    description TEXT,
    location VARCHAR(255),
    start_date DATE,
    end_date DATE
);

CREATE TABLE Showtimes (
    showtime_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT,
    show_date DATE,
    show_time TIME,
    total_seats INT,
    available_seats INT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT,
    user_id INT,
    showtime_id INT,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    num_seats INT,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (showtime_id) REFERENCES Showtimes(showtime_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT,
    booking_id INT,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(50),
    status VARCHAR(50),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);


drop table customers;
drop table show_times;
drop table bookings;
drop table Payments;

select * from customers;
select * from show_times;
select * from Order_ticket;
select * from payments;


