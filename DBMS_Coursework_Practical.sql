
-- Create Properties Table
CREATE TABLE Properties (
    PropertyID INT PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Type VARCHAR(50) CHECK (Type IN ('Residential', 'Commercial', 'Industrial')),
    Size INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Available', 'Sold', 'Rented'))
);

-- Insert Sample Records
INSERT INTO Properties (PropertyID, Address, City, Type, Size, Price, Status) VALUES
(1, '123 Kampala Rd', 'Kampala', 'Residential', 2000, 150000.00, 'Available'),
(2, '45 Jinja St', 'Jinja', 'Commercial', 5000, 500000.00, 'Sold'),
(3, '67 Entebbe Rd', 'Entebbe', 'Industrial', 10000, 800000.00, 'Rented'),
(4, '89 Mbarara St', 'Mbarara', 'Residential', 3000, 200000.00, 'Available'),
(5, '22 Mbale Rd', 'Mbale', 'Commercial', 4000, 300000.00, 'Available'),
(6, '101 Fort Portal Rd', 'Fort Portal', 'Industrial', 15000, 1000000.00, 'Sold'),
(7, '56 Arua St', 'Arua', 'Residential', 1800, 140000.00, 'Rented'),
(8, '34 Gulu Rd', 'Gulu', 'Commercial', 3500, 280000.00, 'Available'),
(9, '90 Soroti St', 'Soroti', 'Industrial', 9000, 700000.00, 'Sold'),
(10, '15 Lira Rd', 'Lira', 'Residential', 2200, 160000.00, 'Available');

-- Query Properties Available for Sale in a Specific City
SELECT * FROM Properties WHERE City = 'Kampala' AND Status = 'Available';

-- Update Property Status After Sale
UPDATE Properties SET Status = 'Sold' WHERE PropertyID = 1;
