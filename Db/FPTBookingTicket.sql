create FPTBookingTicket

use FPTBookingTicket

create table Movies (
   movie_id INT primary key auto_increment,
   title VARCHAR(255) not null,
   genre VARCHAR(100),
   duration INT, 
   rating VARCHAR(10),
   release_date DATE,
   description TEXT
);

create table Theaters (
    theater_id INT primary key auto_increment,
    name VARCHAR(255) not null,
    location VARCHAR(255) not null, 
);

create table Room (
     Room_id INT primary key auto_increment,
     Theater_id INT,
     Room_number INT,
     total_seats INT,
     foreign key (theater_id) references Theaters(theater_id)
);

create table Showtimes (
     showtime_id INT primary key auto_increment,
     movie_id INT,
     Room_id INT,
     show_date DATE,
     show_time TIME,
     foreign key (movie_id) references Movies(movie_id),
     foreign key (room_id) references Room(Room_id),
);

create table Seats (
   seat_id INT primary key auto_increment,
   Room_id INT,
   seat_number VARCHAR (10),
   is_booked BOOLEAN default false,
   foreign key (screen_id) references Room(Room_id) 
);

create table Customers (
     customer_id INT primary key auto_increment,
     name varchar(255),
     email varchar(255),
     phone varchar(20)
);

create table Bookings (
    booking_id INT primary key auto_increment,
    customer_id INT,
    showtime_id INT,
    seat_id INT, 
    booking_date TIMESTAMP default Current_TIMESTAMP,
    FOREIGN_KEY (customer_id) references Customers(customer_id),
    FOREIGN_KEY (showtime_id) references Showtimes(showtime_id),
    FOREIGN_KEY (seat_id) references Seats(seat_id)
);
