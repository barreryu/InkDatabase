-- Inserting mock data into Users table
INSERT INTO Users (username, password, role)
VALUES 
('alice', 'password123', 'admin'),
('bob', 'password123', 'user'),
('carol', 'password123', 'user'),
('dave', 'password123', 'admin'),
('eve', 'password123', 'user');

-- Inserting mock data into Inks table
INSERT INTO Inks (ink_name, production_type)
VALUES 
('Red Ink', 'Batch'),
('Blue Ink', 'Batch'),
('Green Ink', 'Continuous'),
('Yellow Ink', 'Batch'),
('Black Ink', 'Continuous');

-- Inserting mock data into Labs table
INSERT INTO Labs (lab_name, asset_one, asset_two, asset_three)
VALUES 
('Lab A', 'Mixer A1', 'Heater A1', 'Cooler A1'),
('Lab B', 'Mixer B1', 'Heater B1', 'Cooler B1'),
('Lab C', 'Mixer C1', 'Heater C1', 'Cooler C1'),
('Lab D', 'Mixer D1', 'Heater D1', NULL),
('Lab E', 'Mixer E1', NULL, NULL);

-- Inserting mock data into ProductionYields table
INSERT INTO ProductionYields (user_id, ink_id, ink_lot, lab_id, vehicle_mass_built, vehicle_mass_used, inherent_vehicle_loss, ink_produced, ink_packaged, inherent_product_loss, build_time, manufactured_date)
VALUES 
(1, 1, 'LOT001', 1, 100.0, 95.0, 5.0, 90.0, 85.0, 5.0, 2.5, '2023-07-01'),
(2, 2, 'LOT002', 2, 110.0, 105.0, 5.0, 100.0, 95.0, 5.0, 3.0, '2023-07-02'),
(3, 3, 'LOT003', 3, 120.0, 115.0, 5.0, 110.0, 105.0, 5.0, 3.5, '2023-07-03'),
(4, 4, 'LOT004', 4, 130.0, 125.0, 5.0, 120.0, 115.0, 5.0, 4.0, '2023-07-04'),
(5, 5, 'LOT005', 5, 140.0, 135.0, 5.0, 130.0, 125.0, 5.0, 4.5, '2023-07-05');