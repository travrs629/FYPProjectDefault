-- BINARY(16) refers to the use of uuid for id.
-- BOOLEAN is an alias for TINYINT(1), which allows TRUE or FALSE, represented by 1 and 0.
-- TIMESTAMP is used to record any changes for the record.
-- ON UPDATE CURRENT_TIMESTAMP means the column value will be updated automatically when a record is updated.

-- special_view expects values such as NULL, "Mountain", and "Harbour", in which the prices increase by HKD around 100 (150) and 150 (200).
-- The special_view also has less NULL values in better rooms.

CREATE TABLE hotel_rooms (
  id BINARY(16) NOT NULL PRIMARY KEY,
  room_number INT(11) AUTO_INCREMENT NOT NULL,
  room_type VARCHAR(255) NOT NULL,
  special_view VARCHAR(255) DEFAULT NULL,
  room_capacity INT(11) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  availability BOOLEAN NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert 100 Standard rooms.
INSERT INTO hotel_rooms (id, room_number, room_type, special_view, room_capacity, price, availability, created_at, updated_at)
VALUES
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),

-- Insert 80 Standard rooms.
INSERT INTO hotel_rooms (id, room_number, room_type, special_view, room_capacity, price, availability, created_at, updated_at)
VALUES
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Harbour', 2, 900.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', 'Mountain', 2, 750.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Standard', NULL, 2, 650.00, 1, NOW(), NOW()),

-- Insert 80 Deluxe rooms.
INSERT INTO hotel_rooms (id, room_number, room_type, special_view, room_capacity, price, availability, created_at, updated_at)
VALUES
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Harbour', 2, 1250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Harbour', 2, 1250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Harbour', 2, 1250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Harbour', 2, 1250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Harbour', 2, 1250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Harbour', 2, 1250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Mountain', 2, 1100.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', NULL, 2, 1000.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Deluxe', 'Harbour', 2, 1250.00, 1, NOW(), NOW()),

-- Insert 40 Grand Deluxe rooms.
INSERT INTO hotel_rooms (id, room_number, room_type, special_view, room_capacity, price, availability, created_at, updated_at)
VALUES
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Harbour', 2, 1600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Mountain', 2, 1450.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Mountain', 2, 1450.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Harbour', 2, 1600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Mountain', 2, 1450.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Harbour', 2, 1600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Harbour', 2, 1600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Mountain', 2, 1450.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Mountain', 2, 1450.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Mountain', 2, 1450.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', NULL, 2, 1350.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Grand Deluxe', 'Mountain', 2, 1450.00, 1, NOW(), NOW()),

-- Insert 25 Junior Suite rooms.
INSERT INTO hotel_rooms (id, room_number, room_type, special_view, room_capacity, price, availability, created_at, updated_at)
VALUES
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Harbour', 3, 2600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Mountain', 3, 2400.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Harbour', 3, 2600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Mountain', 3, 2400.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Mountain', 3, 2400.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Mountain', 3, 2400.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Harbour', 3, 2600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Mountain', 3, 2400.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Harbour', 3, 2600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Harbour', 3, 2600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Mountain', 3, 2400.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Mountain', 3, 2400.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Mountain', 3, 2400.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Harbour', 3, 2600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Harbour', 3, 2600.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', NULL, 3, 2250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Junior Suite', 'Harbour', 3, 2600.00, 1, NOW(), NOW()),

-- Insert 10 Junior Suite rooms.
INSERT INTO hotel_rooms (id, room_number, room_type, special_view, room_capacity, price, availability, created_at, updated_at)
VALUES
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', 'Harbour', 4, 3950.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', 'Harbour', 4, 3950.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', NULL, 4, 3500.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', 'Mountain', 4, 3700.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', 'Harbour', 4, 3950.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', NULL, 4, 3500.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', 'Mountain', 4, 3700.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', 'Mountain', 4, 3700.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', 'Mountain', 4, 3700.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Executive Suite', 'Harbour', 4, 3950.00, 1, NOW(), NOW()),

-- Insert 2 Presidential Suite rooms.
INSERT INTO hotel_rooms (id, room_number, room_type, special_view, room_capacity, price, availability, created_at, updated_at)
VALUES
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Presidential Suite', 'Harbour', 5, 9250.00, 1, NOW(), NOW()),
(UNHEX(REPLACE(UUID(),'-','')), NULL, 'Presidential Suite', 'Harbour', 5, 9250.00, 1, NOW(), NOW()),
