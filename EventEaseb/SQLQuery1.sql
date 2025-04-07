 USE master;
 USE EventEaseDb;
CREATE TABLE Venue (
    VenueId INT PRIMARY KEY IDENTITY,
    VenueName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(200) NOT NULL,
    Capacity INT NOT NULL,
    ImageUrl NVARCHAR(500)
);

CREATE TABLE Event (
    EventId INT PRIMARY KEY IDENTITY,
    EventName NVARCHAR(100) NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    Description NVARCHAR(MAX),
    ImageUrl NVARCHAR(500)
);

CREATE TABLE Booking (
    BookingId INT PRIMARY KEY IDENTITY,
    EventId INT NOT NULL FOREIGN KEY REFERENCES Event(EventId),
    VenueId INT NOT NULL FOREIGN KEY REFERENCES Venue(VenueId),
    BookingDate DATETIME NOT NULL
);




-- Insert sample venues
INSERT INTO Venue (VenueName, Location, Capacity, ImageUrl)
VALUES 
('Grand Hall', '123 Main Street, City Center', 500, 'https://example.com/grandhall.jpg'),
('Conference Room A', '456 Business Ave, Downtown', 100, 'https://example.com/conferencerooma.jpg'),
('Outdoor Pavilion', '789 Parkside, Riverside', 300, 'https://example.com/pavilion.jpg');

-- Insert sample events
INSERT INTO Event (EventName, StartDate, EndDate, Description, ImageUrl)
VALUES 
('Tech Conference 2025', '2025-06-10 09:00:00', '2025-06-12 18:00:00', 'A gathering of tech enthusiasts and professionals.', 'https://example.com/techconference.jpg'),
('Wedding Reception', '2025-08-15 17:00:00', '2025-08-15 23:00:00', 'A beautiful wedding celebration.', 'https://example.com/wedding.jpg'),
('Music Festival', '2025-09-01 14:00:00', '2025-09-03 23:59:00', 'An annual music festival featuring top artists.', 'https://example.com/musicfestival.jpg');

-- Insert sample bookings
INSERT INTO Booking (EventId, VenueId, BookingDate)
VALUES 
(1, 2, '2025-06-01 10:00:00'), -- Tech Conference booked in Conference Room A
(2, 1, '2025-08-01 14:00:00'), -- Wedding Reception booked in Grand Hall
(3, 3, '2025-08-20 12:00:00'); -- Music Festival booked in Outdoor Pavilion




SELECT * FROM Venue;
SELECT * FROM Event;
SELECT * FROM Booking;
