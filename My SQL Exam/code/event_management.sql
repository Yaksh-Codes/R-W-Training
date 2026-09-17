create database SEMS; # SEMS means Smart Event Management System

use SEMS;

	# Table 1: Venues
 
	create table Venues (
    venue_id INT PRIMARY KEY AUTO_INCREMENT,
    venue_name VARCHAR(100) NOT NULL,
    location VARCHAR(150) NOT NULL,
    capacity INT NOT NULL);
    
    # Table 2: Organizer
    
    
	create table Organizers (
    organizer_id INT PRIMARY KEY AUTO_INCREMENT,
    organizer_name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(150) NOT NULL UNIQUE,
    phone_number VARCHAR(20));
    
    # Table 3: Attendees
    
    create table Attendees (
    attendee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone_number VARCHAR(20));

	# Table 4: Events
    
	create table Events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(150),
    event_date DATETIME NOT NULL,
    venue_id INT NOT NULL,
    organizer_id INT NOT NULL,
    ticket_price DECIMAL(10,2),
    total_seats INT NOT NULL,
    available_seats INT NOT NULL);
    
    # Table 5: Tickets
    
    create table Tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT NOT NULL,
    attendee_id INT NOT NULL,
    booking_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Confirmed', 'Cancelled', 'Pending'));
    
    # Table 6: Payments
    
    create table Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    ticket_id INT NOT NULL UNIQUE,
    amount DECIMAL(10,2) NOT NULL,
    payment_status ENUM('Success', 'Failed', 'Pending'),
    payment_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP);

	# Inserting Values for All Tables
    # Venues
    insert into Venues (venue_name, location, capacity) VALUES
    ('Grand Convention Center', 'Ahmedabad', 1000),
    ('City Auditorium', 'Surat', 800),
    ('Riverfront Arena', 'Ahmedabad', 1500),
    ('Tech Innovation Hall', 'Vadodara', 600),
    ('Cultural Heritage Center', 'Rajkot', 500),
    ('Business Expo Center', 'Gandhinagar', 1200),
    ('Sunrise Banquet Hall', 'Surat', 700),
    ('Galaxy Event Arena', 'Ahmedabad', 2000),
    ('Green Valley Resort', 'Vadodara', 900),
    ('Royal Celebration Hall', 'Rajkot', 650);
    
    select * from Venues;
    
    # Organizers
    insert into Organizers (organizer_name, contact_email, phone_number) VALUES
    ('Tech Events India', 'tech@eventsindia.com', '9876543210'),
    ('Future Leaders Group', 'future@leaders.com', '9876543211'),
    ('Cultural Events Hub', 'culture@eventshub.com', '9876543212'),
    ('Business Connect India', 'business@connectindia.com', '9876543213'),
    ('Sports Entertainment Ltd', 'sports@entertainment.com', '9876543214'),
    ('Digital India Events', 'digital@indiaevents.com', '9876543215'),
    ('Startup Network India', 'startup@networkindia.com', '9876543216'),
    ('Creative Events Studio', 'creative@eventsstudio.com', '9876543217'),
    ('Education Summit Group', 'education@summitgroup.com', '9876543218'),
    ('Global Conference India', 'global@conferenceindia.com', '9876543219');
    
    select * from Organizers;
    
    # Attendees
    insert into Attendees (name, email, phone_number) VALUES
    ('Yaksh Patel', 'yaksh@example.com', '9000000001'),
    ('Rahul Sharma', 'rahul@example.com', '9000000002'),
    ('Priya Shah', 'priya@example.com', '9000000003'),
    ('Aarav Mehta', 'aarav@example.com', '9000000004'),
    ('Diya Patel', 'diya@example.com', '9000000005'),
    ('Rohan Desai', 'rohan@example.com', '9000000006'),
    ('Ananya Joshi', 'ananya@example.com', '9000000007'),
    ('Karan Shah', 'karan@example.com', '9000000008'),
    ('Neha Patel', 'neha@example.com', '9000000009'),
    ('Vivek Mehta', 'vivek@example.com', '9000000010'),
    ('Isha Desai', 'isha@example.com', '9000000011'),
    ('Dev Shah', 'dev@example.com', '9000000012'),
    ('Mira Patel', 'mira@example.com', '9000000013'),
    ('Aditya Joshi', 'aditya@example.com', '9000000014'),
    ('Khushi Mehta', 'khushi@example.com', '9000000015');
    
    # Events
    insert into Events (event_name, event_date, venue_id, organizer_id, ticket_price, total_seats, available_seats) VALUES
    ('AI & Machine Learning Summit',
        '2026-10-10 10:00:00', 1, 1, 2500.00, 1000, 150),
        
    ('Digital Marketing Conference',
        '2026-10-18 09:30:00', 2, 2, 1800.00, 800, 350),

    ('Startup Innovation Expo',
        '2026-11-05 10:00:00', 3, 7, 2200.00, 1500, 900),

    ('Cultural Music Festival',
        '2026-11-20 18:00:00', 5, 3, 1200.00, 500, 80),

    ('Business Leadership Summit',
        '2026-12-05 09:00:00', 6, 4, 3500.00, 1200, 700),

    ('Cloud Computing Workshop',
        '2026-12-12 10:00:00', 4, 1, 2000.00, 600, 100),

    ('Data Science Career Fair',
        '2026-12-18 11:00:00', 1, 6, 1500.00, 1000, 180),

    ('Sports & Fitness Expo',
        '2026-12-25 08:00:00', 3, 5, 1000.00, 1500, 1200),

    ('Future Technology Summit',
        '2027-01-15 10:00:00', 8, 1, 3000.00, 2000, 300),

    ('Entrepreneurship Bootcamp',
        '2027-02-10 09:00:00', 4, 2, 2800.00, 600, 350),

    ('Python Developer Conference',
        '2027-03-15 10:00:00', 7, 1, 2500.00, 700, 120),

    ('Healthcare Technology Summit',
        '2027-04-20 10:00:00', 9, 9, 3200.00, 900, 600),

    ('Education Innovation Expo',
        '2027-05-12 09:00:00', 10, 9, 1600.00, 650, 250),

    ('FinTech Future Conference',
        '2027-06-18 10:30:00', 6, 10, 2800.00, 1200, 150),

    ('Digital Transformation Summit',
        '2027-07-25 10:00:00', 8, 6, 3500.00, 2000, 400);
        
	select * from Events;
    
    # Tickets
    insert into Tickets (event_id, attendee_id, booking_date, status) VALUES
    (1, 1, '2026-08-20 10:30:00', 'Confirmed'),
    (1, 2, '2026-08-21 11:00:00', 'Confirmed'),
    (1, 3, '2026-08-22 12:00:00', 'Confirmed'),
    (2, 4, '2026-08-25 09:00:00', 'Confirmed'),
    (2, 5, '2026-08-26 14:30:00', 'Confirmed'),
    (3, 6, '2026-09-01 10:00:00', 'Confirmed'),
    (3, 7, '2026-09-02 11:30:00', 'Confirmed'),
    (3, 8, '2026-09-03 15:00:00', 'Pending'),
    (4, 9, '2026-09-04 16:00:00', 'Confirmed'),
    (4, 10, '2026-09-05 13:00:00', 'Cancelled'),
    (5, 11, '2026-09-06 10:30:00', 'Confirmed'),
    (5, 12, '2026-09-07 11:00:00', 'Confirmed'),
    (6, 13, '2026-09-08 12:30:00', 'Confirmed'),
    (6, 14, '2026-09-09 14:00:00', 'Pending'),
    (7, 15, '2026-09-10 09:30:00', 'Confirmed'),
    (8, 1, '2026-09-11 10:00:00', 'Confirmed'),
    (8, 2, '2026-09-12 11:00:00', 'Confirmed'),
    (9, 3, '2026-09-13 12:00:00', 'Confirmed'),
    (9, 4, '2026-09-14 13:00:00', 'Confirmed'),
    (10, 5, '2026-09-15 14:00:00', 'Pending');
    
    select * from Tickets
    
    # Payments
    
    INSERT INTO Payments
    (ticket_id, amount, payment_status, payment_date)
VALUES
    (1, 2500.00, 'Success', '2026-08-20 10:35:00'),
    (2, 2500.00, 'Success', '2026-08-21 11:05:00'),
    (3, 2500.00, 'Success', '2026-08-22 12:05:00'),

    (4, 1800.00, 'Success', '2026-08-25 09:05:00'),
    (5, 1800.00, 'Success', '2026-08-26 14:35:00'),

    (6, 2200.00, 'Success', '2026-09-01 10:05:00'),
    (7, 2200.00, 'Success', '2026-09-02 11:35:00'),
    (8, 2200.00, 'Pending', '2026-09-03 15:05:00'),

    (9, 1200.00, 'Success', '2026-09-04 16:05:00'),
    (10, 1200.00, 'Failed', '2026-09-05 13:05:00'),

    (11, 3500.00, 'Success', '2026-09-06 10:35:00'),
    (12, 3500.00, 'Success', '2026-09-07 11:05:00'),

    (13, 2000.00, 'Success', '2026-09-08 12:35:00'),
    (14, 2000.00, 'Pending', '2026-09-09 14:05:00'),

    (15, 1500.00, 'Success', '2026-09-10 09:35:00'),

    (16, 1000.00, 'Success', '2026-09-11 10:05:00'),
    (17, 1000.00, 'Success', '2026-09-12 11:05:00'),

    (18, 3000.00, 'Success', '2026-09-13 12:05:00'),
    (19, 3000.00, 'Success', '2026-09-14 13:05:00'),

    (20, 2800.00, 'Pending', '2026-09-15 14:05:00');
    
    # 1. Implement CRUD Operations
    # CREATE
    
    #  Add a new venue
    insert into Venues (venue_name, location, capacity) VALUES
    ('New Exhibition Hall', 'Surat', 900);
    
    # Add a new organizer
    insert into Organizers (organizer_name, contact_email, phone_number) VALUES
    ('Smart Events India', 'smart@eventsindia.com', '9876500000');
    
    # Add a new attendee
	insert into Attendees (name, email, phone_number) VALUES
    ('Raj Patel', 'raj@example.com', '9000000020');
    
    # Add a new event
    insert into Events (event_name, event_date, venue_id, organizer_id, ticket_price, total_seats, available_seats) VALUES
    ('Python Developer Conference', '2027-03-15 10:00:00', 1, 1, 2500.00, 1000, 700);
    
    # UPDATES
    # Update event ticket price
    update Events set ticket_price = 2700.00 where event_id = 1;
    
    # Update venue capacity
    update Venues set capacity = 1100 where venue_id = 1;
    
    # Update attendee phone number
    update Attendees set phone_number = '9111111111' where attendee_id = 1;
    
    # Update payment status
    update Payments set payment_status = 'Success' where payment_id = 8;
    
    # DELETE
    # Delete a pending payment
    delete from Payments where payment_id = 20 and payment_status = 'Pending';
    
    # Delete an attendee who has no bookings
    delete from Attendees where attendee_id = 15 and not exists ( select 1 from Tickets where Tickets.attendee_id = Attendees.attendee_id);
    
    # Search
    # Search events by name
    select * from Events where event_name like '%Technology%';
    
    # Search venues in Ahmedabad
    SELECT * FROM Venues WHERE location = 'Ahmedabad';
    
    # Search attendees whose name starts with A
    SELECT * FROM Attendees WHERE name LIKE 'A%';
    
    # WHERE, HAVING and LIMIT — Low Weightage
    # 2.1 Get upcoming events happening in a specific city
    SELECT e.event_id, e.event_name, e.event_date, v.venue_name, v.location FROM Events e JOIN Venues v ON e.venue_id = v.venue_id
    WHERE e.event_date > NOW() AND v.location = 'Ahmedabad' ORDER BY e.event_date;
    
    # 2.2 Retrieve the top 5 highest-revenue-generating events
    SELECT e.event_id, e.event_name, COALESCE(SUM(CASE
            WHEN p.payment_status = 'Success'
            THEN p.amount
            ELSE 0
        END ), 0) AS total_revenue
FROM Events e LEFT JOIN Tickets t ON e.event_id = t.event_id 
LEFT JOIN Payments p ON t.ticket_id = p.ticket_id GROUP BY e.event_id, e.event_name ORDER BY total_revenue DESC LIMIT 5;

	# 2.3 Find attendees who booked tickets in the last 7 days
    SELECT DISTINCT a.attendee_id, a.name, a.email, t.booking_date FROM Attendees a JOIN Tickets t ON a.attendee_id = t.attendee_id
	WHERE t.booking_date >= NOW() - INTERVAL 7 DAY ORDER BY t.booking_date DESC;
    
    # AND, OR, NOT — Medium Weightage
    # 3.1 December events having more than 50% available seats
    SELECT event_id, event_name, event_date, total_seats, available_seats,ROUND((available_seats / total_seats) * 100,2) AS available_percentage
	FROM Events WHERE MONTH(event_date) = 12 AND available_seats > total_seats * 0.50;
    
    # 3.2 List attendees who booked a ticket OR have a pending payment
    SELECT DISTINCT a.attendee_id, a.name, a.email FROM Attendees a JOIN Tickets t
    ON a.attendee_id = t.attendee_id LEFT JOIN Payments p
    ON t.ticket_id = p.ticket_id WHERE t.status = 'Confirmed' OR p.payment_status = 'Pending';
    
    # 3.3 Identify events that are NOT fully booked
    SELECT event_id, event_name, total_seats, available_seats FROM Events WHERE NOT (available_seats = 0);
    
    # ORDER BY and GROUP BY — Medium Weightage
    # 4.1 Sort events by date
    SELECT event_id, event_name, event_date FROM Events ORDER BY event_date ASC;
    
    # 4.2 Count the number of attendees per event
    SELECT e.event_id, e.event_name, COUNT(t.attendee_id) AS total_attendees FROM Events e
	LEFT JOIN Tickets t ON e.event_id = t.event_id WHERE t.status <> 'Cancelled' OR t.status IS NULL 
	GROUP BY
    e.event_id,
    e.event_name ORDER BY total_attendees DESC;
    
    # 4.3 Show total revenue generated by each event
    SELECT e.event_id, e.event_name, COALESCE( SUM( CASE WHEN p.payment_status = 'Success' THEN p.amount ELSE 0 END),0) AS total_revenue FROM Events e LEFT JOIN Tickets t ON e.event_id = t.event_id LEFT JOIN Payments p ON t.ticket_id = p.ticket_id
	GROUP BY
		e.event_id,
		e.event_name
	ORDER BY total_revenue DESC;
    
    # Aggregate Functions — High Weightage
    # 5.1 Calculate total revenue generated from all events
    SELECT SUM(amount) AS total_revenue FROM Payments WHERE payment_status = 'Success';
    
    # 5.2 Find the event with the highest number of attendees
    SELECT e.event_id, e.event_name, COUNT(t.ticket_id) AS total_attendees
	FROM Events e JOIN Tickets t ON e.event_id = t.event_id WHERE t.status = 'Confirmed'
	GROUP BY
    e.event_id,
    e.event_name ORDER BY total_attendees DESC LIMIT 1;
    
    # 5.3 Calculate average ticket price across all events
    SELECT ROUND(AVG(ticket_price), 2) AS average_ticket_price FROM Events;
    SELECT COUNT(*) AS total_events FROM Events;
	SELECT MAX(ticket_price) AS highest_ticket_price FROM Events;
    SELECT MIN(ticket_price) AS lowest_ticket_price FROM Events;
    
    # 6.Primary Key & Foreign Key Relationships 
-- Events → Venues FOREIGN KEY (venue_id) REFERENCES Venues(venue_id)

-- Events → Organizers FOREIGN KEY (organizer_id) REFERENCES Organizers(organizer_id)

-- Tickets → Events FOREIGN KEY (event_id) REFERENCES Events(event_id)

-- Tickets → Attendees FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id)

-- Payments → Tickets FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id

	# Implements JOIN — High Weightage
    # 7.1 INNER JOIN
    SELECT e.event_id, e.event_name, e.event_date, v.venue_name, v.location, v.capacity FROM Events e
	INNER JOIN Venues v ON e.venue_id = v.venue_id ORDER BY e.event_date;
    
    # 7.2 LEFT JOIN
    SELECT a.attendee_id, a.name, a.email, t.ticket_id, t.event_id, t.status FROM Attendees a
	LEFT JOIN Tickets t ON a.attendee_id = t.attendee_id ORDER BY a.attendee_id;
    
    # 7.3 RIGHT JOIN
    SELECT e.event_id, e.event_name, t.ticket_id FROM Tickets t
	RIGHT JOIN Events e ON t.event_id = e.event_id WHERE t.ticket_id IS NULL;
    
    # 7.4 FULL OUTER JOIN
    SELECT e.event_id, e.event_name, t.ticket_id, t.status FROM Events e LEFT JOIN Tickets t ON e.event_id = t.event_id
	UNION
	SELECT e.event_id, e.event_name, t.ticket_id, t.status FROM Events e RIGHT JOIN Tickets t ON e.event_id = t.event_id;
    
    # Subqueries — High Weightage
    # 8.1 Find events generating revenue above the average event revenue
    SELECT e.event_id, e.event_name, SUM(p.amount) AS event_revenue FROM Events e
	JOIN Tickets t ON e.event_id = t.event_id JOIN Payments p ON t.ticket_id = p.ticket_id WHERE p.payment_status = 'Success'
	GROUP BY
    e.event_id,
    e.event_name HAVING SUM(p.amount) >( SELECT AVG(event_revenue) FROM ( SELECT SUM(p2.amount) AS event_revenue FROM Tickets t2
	JOIN Payments p2 ON t2.ticket_id = p2.ticket_id WHERE p2.payment_status = 'Success' GROUP BY t2.event_id ) AS revenue_summary);
    
    # 8.2 Identify events that have booked attendees
    SELECT event_id, event_name FROM Events WHERE event_id IN ( SELECT DISTINCT event_id FROM Tickets WHERE status = 'Confirmed' );
    
    # 8.3 Find organizers who have managed more than 3 events
    SELECT o.organizer_id, o.organizer_name, COUNT(e.event_id) AS total_events FROM Organizers o JOIN Events e ON o.organizer_id = e.organizer_id
	GROUP BY
    o.organizer_id,
    o.organizer_name
	HAVING COUNT(e.event_id) > 3;
    
    # Date & Time Functions — High Weightage
    # 9.1 Extract month from event date
    SELECT event_id, event_name, event_date, MONTH(event_date) AS event_month FROM Events;
    
    # 9.2 Display month name
    SELECT event_id, event_name, MONTHNAME(event_date) AS month_name FROM Events;
    
    # 9.3 Calculate number of days remaining before an event
    SELECT event_id, event_name, event_date, DATEDIFF(event_date, NOW()) AS days_remaining FROM Events WHERE event_date > NOW() ORDER BY event_date;

	# 9.4 Format payment date as YYYY-MM-DD HH:MM:SS
    SELECT payment_id, ticket_id, amount, DATE_FORMAT( payment_date, '%Y-%m-%d %H:%i:%s') AS formatted_payment_date FROM Payments;
    
    # String Manipulation Functions — High Weightage
    # 10.1 Convert organizer names to uppercase
    SELECT organizer_id, UPPER(organizer_name) AS organizer_name_uppercase FROM Organizers;
    
    # 10.2 Remove extra spaces from attendee names
    SELECT attendee_id, TRIM(name) AS cleaned_name FROM Attendees;
    
    # 10.3 Replace NULL email values with Not Provided
    SELECT attendee_id, name, COALESCE(email, 'Not Provided') AS email FROM Attendees;
    
    # Window Functions — Very High Weightage
    # 11.1 Rank events based on total revenue earned
    WITH EventRevenue AS
(
    SELECT
        e.event_id,
        e.event_name,
        COALESCE(
            SUM(
                CASE
                    WHEN p.payment_status = 'Success'
                    THEN p.amount
                    ELSE 0
                END
            ),
            0
        ) AS total_revenue
    FROM Events e
    LEFT JOIN Tickets t
        ON e.event_id = t.event_id
    LEFT JOIN Payments p
        ON t.ticket_id = p.ticket_id
    GROUP BY
        e.event_id,
        e.event_name
)

SELECT
    event_id,
    event_name,
    total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank
FROM EventRevenue
ORDER BY revenue_rank;

# 11.2 Display Cumulative Sum of Tickets Sold
WITH EventTickets AS
(
    SELECT
        e.event_id,
        e.event_name,
        e.event_date,
        COUNT(
            CASE
                WHEN t.status = 'Confirmed'
                THEN t.ticket_id
            END
        ) AS tickets_sold
    FROM Events e
    LEFT JOIN Tickets t
        ON e.event_id = t.event_id
    GROUP BY
        e.event_id,
        e.event_name,
        e.event_date
)

SELECT
    event_id,
    event_name,
    event_date,
    tickets_sold,
    SUM(tickets_sold) OVER (
        ORDER BY event_date
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS cumulative_tickets_sold
FROM EventTickets
ORDER BY event_date;

# 11.3 Show Total Attendees Registered per Event
SELECT e.event_id, e.event_name, COUNT( CASE WHEN t.status = 'Confirmed' THEN t.attendee_id END) AS total_registered_attendees FROM Events e
LEFT JOIN Tickets t ON e.event_id = t.event_id GROUP BY e.event_id, e.event_name ORDER BY total_registered_attendees DESC;

# CASE Expressions — Very High Weightage
# 12.1 Categorize Events Based on Ticket Sales
SELECT
    event_id,
    event_name,
    total_seats,
    available_seats,

    CASE
        WHEN available_seats < (total_seats * 0.20)
            THEN 'High Demand'

        WHEN available_seats BETWEEN
             (total_seats * 0.20)
             AND (total_seats * 0.50)
            THEN 'Moderate Demand'

        ELSE 'Low Demand'
    END AS demand_category

FROM Events;

# 12.2 Categorize events based on ticket availability
SELECT
    payment_id,
    ticket_id,
    amount,
    payment_status,

    CASE
        WHEN payment_status = 'Success'
            THEN 'Successful'

        WHEN payment_status = 'Failed'
            THEN 'Failed'

        ELSE 'Pending'
    END AS payment_category

FROM Payments;
    
    