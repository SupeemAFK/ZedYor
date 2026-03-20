-- ====================================================================
-- 1. BASE TABLES POPULATION
-- ====================================================================

-- 40 Persons total (1-18 Prisoners, 19-23 Nurses, 24-31 Officers, 32-35 Maintainers, 36-40 Visitors)
INSERT INTO Person (first_name, last_name, identification_no, gender, address, contact_no, age, date_of_birth, blood_type) VALUES 
('John', 'Doe', 'ID001', 'M', '123 Main St', '555-0101', 34, '1992-05-14', 'O'),
('Mike', 'Tyson', 'ID002', 'M', '456 Oak St', '555-0102', 29, '1997-08-22', 'A'),
('Bob', 'Johnson', 'ID003', 'M', '789 Pine St', '555-0103', 45, '1981-02-11', 'B'),
('Chris', 'Evans', 'ID004', 'M', '101 Elm St', '555-0104', 38, '1986-11-30', 'AB'),
('Tom', 'Brown', 'ID005', 'M', '202 Birch St', '555-0105', 50, '1974-06-15', 'O'),
('Sam', 'Smith', 'ID006', 'M', '303 Cedar St', '555-0106', 41, '1983-04-09', 'A'),
('Michael', 'Garcia', 'ID007', 'M', '404 Maple St', '555-0107', 27, '1999-01-25', 'B'),
('Paul', 'Miller', 'ID008', 'M', '505 Walnut St', '555-0108', 33, '1991-09-12', 'O'),
('David', 'Martinez', 'ID009', 'M', '606 Ash St', '555-0109', 55, '1969-12-05', 'A'),
('Luis', 'Rodriguez', 'ID010', 'M', '707 Cherry St', '555-0110', 30, '1994-07-18', 'AB'),
('James', 'Lee', 'ID011', 'M', '808 Spruce St', '555-0111', 40, '1984-03-21', 'B'),
('Rick', 'Hernandez', 'ID012', 'M', '909 Fir St', '555-0112', 48, '1976-10-08', 'O'),
('Peter', 'Parker', 'ID013', 'M', '120 Queens Blvd', '555-0113', 25, '2001-08-10', 'O'),
('Bruce', 'Wayne', 'ID014', 'M', '1007 Mountain Dr', '555-0114', 40, '1986-02-19', 'AB'),
('Clark', 'Kent', 'ID015', 'M', '344 Clinton St', '555-0115', 35, '1991-06-18', 'A'),
('Arthur', 'Curry', 'ID016', 'M', 'Amnesty Bay', '555-0116', 36, '1990-01-29', 'AB'),
('Victor', 'Stone', 'ID017', 'M', 'Detroit', '555-0117', 24, '2002-06-05', 'O'),
('Hal', 'Jordan', 'ID018', 'M', 'Coast City', '555-0118', 33, '1993-02-20', 'A'),
-- Nurses (19-23)
('Jane', 'Smith', 'ID019', 'F', '12 Gateway', '555-0119', 32, '1994-03-22', 'O'),
('Sarah', 'Connor', 'ID020', 'F', 'LA Res', '555-0120', 45, '1981-05-13', 'B'),
('Diana', 'Prince', 'ID021', 'F', 'Themyscira', '555-0121', 30, '1996-01-01', 'A'),
('Clara', 'Oswald', 'ID022', 'F', 'London', '555-0122', 29, '1997-11-23', 'O'),
('Martha', 'Jones', 'ID023', 'F', 'London', '555-0123', 31, '1995-04-12', 'AB'),
-- Officers (24-31)
('Nick', 'Fury', 'ID024', 'M', 'SHIELD HQ', '555-0124', 55, '1969-12-21', 'O'),
('Phil', 'Coulson', 'ID025', 'M', 'Tahiti', '555-0125', 48, '1976-07-08', 'A'),
('Maria', 'Hill', 'ID026', 'F', 'SHIELD HQ', '555-0126', 35, '1989-04-04', 'B'),
('Jim', 'Gordon', 'ID027', 'M', 'Gotham', '555-0127', 50, '1974-02-14', 'O'),
('Harvey', 'Bullock', 'ID028', 'M', 'Gotham', '555-0128', 52, '1972-09-09', 'AB'),
('Renee', 'Montoya', 'ID029', 'F', 'Gotham', '555-0129', 34, '1990-10-10', 'A'),
('John', 'Blake', 'ID030', 'M', 'Gotham', '555-0130', 28, '1996-05-15', 'O'),
('Olivia', 'Benson', 'ID031', 'F', 'NYC', '555-0131', 45, '1981-11-22', 'B'),
-- Maintainers (32-35)
('Mario', 'Mario', 'ID032', 'M', 'Brooklyn', '555-0132', 40, '1986-09-13', 'O'),
('Luigi', 'Mario', 'ID033', 'M', 'Brooklyn', '555-0133', 38, '1988-09-13', 'A'),
('Bob', 'Builder', 'ID034', 'M', 'Bobsville', '555-0134', 45, '1981-04-12', 'B'),
('Fixit', 'Felix', 'ID035', 'M', 'Niceland', '555-0135', 30, '1994-11-02', 'AB'),
-- Visitors (36-40)
('Mary', 'Jane', 'ID036', 'F', 'Queens', '555-0136', 25, '2001-05-05', 'O'),
('Lois', 'Lane', 'ID037', 'F', 'Metropolis', '555-0137', 33, '1993-07-14', 'A'),
('Alfred', 'Pennyworth', 'ID038', 'M', 'Gotham', '555-0138', 65, '1961-02-08', 'O'),
('Iris', 'West', 'ID039', 'F', 'Central City', '555-0139', 28, '1998-03-15', 'B'),
('Mera', 'Curry', 'ID040', 'F', 'Atlantis', '555-0140', 35, '1991-08-20', 'AB');

-- 15 Prison Locations
INSERT INTO PrisonLocation (name, code, purpose, max_capacity) VALUES 
('Block A', 'LOC-A', 'General Population', 500),
('Block B', 'LOC-B', 'Maximum Security', 200),
('Block C', 'LOC-C', 'Minimum Security', 300),
('Infirmary', 'LOC-INF', 'Medical Care', 50),
('Cafeteria', 'LOC-CAF', 'Dining', 300),
('Yard Area 1', 'LOC-Y1', 'Recreation', 400),
('Yard Area 2', 'LOC-Y2', 'Recreation', 400),
('Solitary 1', 'LOC-S1', 'Isolation', 20),
('Workshop', 'LOC-WRK', 'Labor/Training', 100),
('Library', 'LOC-LIB', 'Study/Reading', 60),
('Solitary 2', 'LOC-S2', 'Isolation', 20),
('Visitation Room', 'LOC-VIS', 'Guest Visits', 80),
('Guard Quarters', 'LOC-GQ', 'Staff Rest Area', 40),
('Gymnasium', 'LOC-GYM', 'Indoor Exercise', 150),
('Admin Block', 'LOC-ADM', 'Offices', 50);

-- 15 Medicines
INSERT INTO Medicine (name, generic_name, code, caution) VALUES 
('Tylenol', 'Acetaminophen', 1001, 'Liver warning'),
('Advil', 'Ibuprofen', 1002, 'Stomach bleeding warning'),
('Amoxil', 'Amoxicillin', 1003, 'Penicillin allergy'),
('Zoloft', 'Sertraline', 1004, 'Suicidal thoughts warning'),
('Lipitor', 'Atorvastatin', 1005, 'Muscle pain'),
('Prinivil', 'Lisinopril', 1006, 'Pregnancy warning'),
('Glucophage', 'Metformin', 1007, 'Lactic acidosis'),
('Synthroid', 'Levothyroxine', 1008, 'Do not use for weight loss'),
('ProAir', 'Albuterol', 1009, 'Heart rate increase'),
('Nexium', 'Esomeprazole', 1010, 'Bone fracture risk'),
('Claritin', 'Loratadine', 1011, 'Drowsiness'),
('Cipro', 'Ciprofloxacin', 1012, 'Tendon rupture'),
('Valium', 'Diazepam', 1013, 'Addiction risk'),
('Prozac', 'Fluoxetine', 1014, 'Insomnia'),
('Lasix', 'Furosemide', 1015, 'Dehydration');

-- 18 Intakes (One for each prisoner we will create)
INSERT INTO PrisonerIntake (intake_date, initial_health_status) VALUES 
('2024-01-10 08:30:00', 'Cleared'),
('2024-01-15 14:00:00', 'Observation'),
('2024-02-01 09:15:00', 'Cleared'),
('2024-02-20 11:45:00', 'Routine Follow-up'),
('2024-03-05 16:20:00', 'Cleared'),
('2024-03-12 10:00:00', 'Observation'),
('2024-04-02 13:30:00', 'Cleared'),
('2024-04-18 08:00:00', 'Routine Follow-up'),
('2024-05-01 15:10:00', 'Cleared'),
('2024-05-22 09:45:00', 'Observation'),
('2024-06-11 11:00:00', 'Cleared'),
('2024-06-25 14:30:00', 'Cleared'),
('2024-07-10 10:15:00', 'Observation'),
('2024-07-20 09:00:00', 'Routine Follow-up'),
('2024-08-05 13:45:00', 'Cleared'),
('2024-08-15 11:20:00', 'Observation'),
('2024-09-01 16:10:00', 'Cleared'),
('2024-09-12 14:00:00', 'Routine Follow-up');

-- 12 Irregularities
INSERT INTO Irregularity (description, prison_location_id, severity, type) VALUES 
('Unaccounted tool in workshop', 9, 'Medium', 'ItemLost'),
('Inmate not at bed check', 1, 'High', 'MissingPrisoner'),
('Contraband phone found', 2, 'High', 'ProbihitedItem'),
('Missing kitchen knife', 5, 'High', 'ItemLost'),
('Unauthorized movement detected', 6, 'Medium', 'MissingPrisoner'),
('Suspected drugs in cell', 1, 'High', 'ProbihitedItem'),
('Broken window in library', 10, 'Low', 'ItemLost'),
('Missing medical supplies', 4, 'Medium', 'ItemLost'),
('Weapons stash discovered', 2, 'High', 'ProbihitedItem'),
('Inmate out of bounds', 8, 'Medium', 'MissingPrisoner'),
('Shiv found under mattress', 3, 'High', 'ProbihitedItem'),
('Missing cafeteria tray', 5, 'Low', 'ItemLost');

-- ====================================================================
-- 2. LEVEL 1 TABLES POPULATION (Roles & Documents)
-- ====================================================================

-- 18 Documents for the 18 Prisoners (Mix of NULLs and Links)
INSERT INTO Document (person_id, national_id_number, national_id_file_key, house_registration_number, house_registration_file_key, birth_certificate_number, birth_certificate_file_key) VALUES 
(1, 1000001, 's3://bucket/nid_1.jpg', 2000001, 's3://bucket/hr_1.jpg', 3000001, 's3://bucket/bc_1.jpg'),
(2, 1000002, NULL, 2000002, NULL, 3000002, NULL), 
(3, 1000003, 's3://bucket/nid_3.jpg', 2000003, 's3://bucket/hr_3.jpg', 3000003, NULL),
(4, 1000004, 's3://bucket/nid_4.jpg', 2000004, NULL, 3000004, 's3://bucket/bc_4.jpg'),
(5, 1000005, NULL, 2000005, 's3://bucket/hr_5.jpg', 3000005, 's3://bucket/bc_5.jpg'),
(6, 1000006, 's3://bucket/nid_6.jpg', 2000006, 's3://bucket/hr_6.jpg', 3000006, 's3://bucket/bc_6.jpg'),
(7, 1000007, NULL, 2000007, NULL, 3000007, 's3://bucket/bc_7.jpg'),
(8, 1000008, 's3://bucket/nid_8.jpg', 2000008, 's3://bucket/hr_8.jpg', 3000008, NULL),
(9, 1000009, 's3://bucket/nid_9.jpg', 2000009, NULL, 3000009, 's3://bucket/bc_9.jpg'),
(10, 1000010, NULL, 2000010, 's3://bucket/hr_10.jpg', 3000010, 's3://bucket/bc_10.jpg'),
(11, 1000011, 's3://bucket/nid_11.jpg', 2000011, 's3://bucket/hr_11.jpg', 3000011, 's3://bucket/bc_11.jpg'),
(12, 1000012, NULL, 2000012, NULL, 3000012, NULL),
(13, 1000013, 's3://bucket/nid_13.jpg', 2000013, 's3://bucket/hr_13.jpg', 3000013, 's3://bucket/bc_13.jpg'),
(14, 1000014, 's3://bucket/nid_14.jpg', 2000014, NULL, 3000014, 's3://bucket/bc_14.jpg'),
(15, 1000015, NULL, 2000015, 's3://bucket/hr_15.jpg', 3000015, 's3://bucket/bc_15.jpg'),
(16, 1000016, 's3://bucket/nid_16.jpg', 2000016, 's3://bucket/hr_16.jpg', 3000016, 's3://bucket/bc_16.jpg'),
(17, 1000017, NULL, 2000017, NULL, 3000017, 's3://bucket/bc_17.jpg'),
(18, 1000018, 's3://bucket/nid_18.jpg', 2000018, 's3://bucket/hr_18.jpg', 3000018, NULL);

-- 5 Nurses mapped to Person 19-23
INSERT INTO Nurse (first_name, last_name, gender, code, person_id) VALUES 
('Jane', 'Smith', 'F', 'N-001', 19),
('Sarah', 'Connor', 'F', 'N-002', 20),
('Diana', 'Prince', 'F', 'N-003', 21),
('Clara', 'Oswald', 'F', 'N-004', 22),
('Martha', 'Jones', 'F', 'N-005', 23);

-- 8 Officers mapped to Person 24-31
INSERT INTO Officer (first_name, last_name, gender, code, rank, person_id) VALUES 
('Nick', 'Fury', 'M', 5001, 'Warden', 24),
('Phil', 'Coulson', 'M', 5002, 'Chief Jailer', 25),
('Maria', 'Hill', 'F', 5003, 'Chief Jailer', 26),
('Jim', 'Gordon', 'M', 5004, 'Guard', 27),
('Harvey', 'Bullock', 'M', 5005, 'Guard', 28),
('Renee', 'Montoya', 'F', 5006, 'Guard', 29),
('John', 'Blake', 'M', 5007, 'Guard', 30),
('Olivia', 'Benson', 'F', 5008, 'Guard', 31);

-- 4 Maintainers mapped to Person 32-35
INSERT INTO Maintainer (person_id, maintainance_skill, skill_description, company_name, primary_trade) VALUES 
(32, 'Plumbing', 'Master Plumber', 'Mushroom Kingdom Pipes', 'Plumbing'),
(33, 'Electrical', 'Certified Electrician', 'Mushroom Kingdom Pipes', 'Electrical'),
(34, 'Carpentry', 'General Builder', 'Bobsville Builders', 'Plumbing'),
(35, 'HVAC', 'HVAC Specialist', 'Niceland Fixers', 'Electrical');

-- 18 Prisoners mapped to Person 1-18 and Intake 1-18
INSERT INTO Prisoner (code, person_id, mugshot_img_key, evaluation, evaluation_score, prison_intake_id) VALUES 
('P-1001', 1, 's3://bucket/mug_001.jpg', 'Compliant', 85, 1),
('P-1002', 2, NULL, 'Aggressive', 40, 2), 
('P-1003', 3, 's3://bucket/mug_003.jpg', 'Neutral', 70, 3),
('P-1004', 4, 's3://bucket/mug_004.jpg', 'Compliant', 90, 4),
('P-1005', 5, NULL, 'Depressed', 50, 5), 
('P-1006', 6, 's3://bucket/mug_006.jpg', 'Neutral', 75, 6),
('P-1007', 7, 's3://bucket/mug_007.jpg', 'Aggressive', 35, 7),
('P-1008', 8, NULL, 'Compliant', 88, 8), 
('P-1009', 9, 's3://bucket/mug_009.jpg', 'Compliant', 95, 9),
('P-1010', 10, 's3://bucket/mug_010.jpg', 'Aggressive', 20, 10),
('P-1011', 11, NULL, 'Neutral', 65, 11),
('P-1012', 12, 's3://bucket/mug_012.jpg', 'Compliant', 82, 12),
('P-1013', 13, 's3://bucket/mug_013.jpg', 'Depressed', 55, 13),
('P-1014', 14, NULL, 'Neutral', 72, 14),
('P-1015', 15, 's3://bucket/mug_015.jpg', 'Compliant', 91, 15),
('P-1016', 16, 's3://bucket/mug_016.jpg', 'Aggressive', 45, 16),
('P-1017', 17, NULL, 'Compliant', 86, 17),
('P-1018', 18, 's3://bucket/mug_018.jpg', 'Neutral', 68, 18);

-- ====================================================================
-- 3. LEVEL 2 TABLES POPULATION (Events & Transactions)
-- ====================================================================

-- 15 Confiscated Items linked to Intakes
INSERT INTO ConfiscatedItem (item_name, quantity, remarks, PrisonerIntake_id) VALUES 
('Pocket Knife', 1, 'Found in shoe', 2),
('Cell Phone', 1, 'Hidden in bag', 4),
('Lighter', 2, 'Pockets', 6),
('Unmarked Pills', 10, 'Jacket lining', 8),
('Shoelace', 2, 'Restricted item', 5),
('Metal spoon', 1, 'Sharpened edge', 7),
('Brass Knuckles', 1, 'Jacket pocket', 10),
('Flash drive', 1, 'Swallowed', 12),
('Screwdriver', 1, 'Sock', 14),
('Chewing gum', 5, 'Banned item', 16),
('Cigarettes', 20, 'Bag lining', 18),
('Rope', 1, 'Wrapped around waist', 3),
('Glass shard', 1, 'Shoe heel', 9),
('Battery', 4, 'Pocket', 11),
('Wire', 1, 'Belt loop', 15);

-- 12 Routines
INSERT INTO RoutinesSchedule (routine_name, prison_location_id, routines_schedule_date, type) VALUES 
('Morning Block A Check', 1, '2026-03-21', 'Inspection'),
('Yard Patrol Shift 1', 6, '2026-03-21', 'Patrol'),
('Max Security Guarding', 2, '2026-03-21', 'Guard Post'),
('Night Lockup Block A', 1, '2026-03-21', 'Inspection'),
('Cafeteria Duty Lunch', 5, '2026-03-22', 'Guard Post'),
('Infirmary Night Watch', 4, '2026-03-22', 'Patrol'),
('Workshop Overseer', 9, '2026-03-23', 'Guard Post'),
('Library Walkthrough', 10, '2026-03-23', 'Patrol'),
('Solitary Check', 8, '2026-03-24', 'Inspection'),
('Gymnasium Guard', 14, '2026-03-24', 'Guard Post'),
('Admin Block Security', 15, '2026-03-25', 'Patrol'),
('Block C Contraband Sweep', 3, '2026-03-25', 'Inspection');

-- 15 Visitments
INSERT INTO Visitment (prisoner_id, visitment_date, description, status, duration) VALUES 
(1, '2026-03-22', 'Family visit', 'scheduled', 60),
(2, '2026-03-23', 'Legal counsel', 'completed', 120),
(3, '2026-03-24', 'Spouse visit', 'scheduled', 60),
(4, '2026-03-20', 'Family visit', 'cancelled', 0),
(5, '2026-03-25', 'Clergy visit', 'scheduled', 30),
(6, '2026-03-26', 'Family visit', 'scheduled', 60),
(7, '2026-03-27', 'Legal counsel', 'scheduled', 90),
(8, '2026-03-21', 'Spouse visit', 'completed', 60),
(9, '2026-03-28', 'Family visit', 'scheduled', 60),
(10, '2026-03-19', 'Legal counsel', 'cancelled', 0),
(11, '2026-03-29', 'Friend visit', 'scheduled', 45),
(12, '2026-03-30', 'Spouse visit', 'scheduled', 60),
(13, '2026-03-22', 'Family visit', 'completed', 60),
(14, '2026-03-31', 'Legal counsel', 'scheduled', 120),
(15, '2026-04-01', 'Clergy visit', 'scheduled', 30);

-- 15 Treatments 
INSERT INTO Treatment (prisoner_id, nurse_id, description, diagnose_date) VALUES 
(1, 1, 'Routine checkup', '2026-03-10'),
(2, 2, 'Wound care', '2026-03-15'),
(3, 1, 'Fever assessment', '2026-03-18'),
(5, 3, 'Psychiatric eval', '2026-03-19'),
(7, 2, 'Sprained ankle', '2026-03-20'),
(8, 4, 'Allergy test', '2026-03-21'),
(10, 5, 'Stitches removal', '2026-03-22'),
(11, 1, 'Flu symptoms', '2026-03-23'),
(12, 3, 'Blood pressure check', '2026-03-24'),
(14, 2, 'Dental pain', '2026-03-25'),
(15, 4, 'Routine checkup', '2026-03-26'),
(16, 5, 'Burn treatment', '2026-03-27'),
(17, 1, 'Vision test', '2026-03-28'),
(18, 2, 'Insomnia eval', '2026-03-29'),
(4, 3, 'Knee pain', '2026-03-30');

-- 10 Maintenances
INSERT INTO Maintainance (prison_location_id, maintainance_date, maintainance_cost, status) VALUES 
(1, '2026-03-01', 500, 'Done'),
(5, '2026-03-15', 1200, 'In progress'),
(2, '2026-03-25', 300, 'In progress'),
(9, '2026-03-28', 450, 'In progress'), 
(4, '2026-03-30', 800, 'In progress'),
(14, '2026-04-02', 250, 'In progress'),
(12, '2026-04-05', 600, 'In progress'),
(3, '2026-03-10', 150, 'Done'),
(7, '2026-03-12', 400, 'Done'),
(10, '2026-04-10', 900, 'In progress');

-- 10 Prisoner Incidents
INSERT INTO PrisonerIncidents (incident_datetime, description, prison_location_id, reporting_officer_id) VALUES 
('2026-03-19 14:00:00', 'Fight in the yard', 6, 4),
('2026-03-18 22:00:00', 'Attempted contraband smuggling', 10, 5),
('2026-03-20 09:30:00', 'Refusal to obey orders', 5, 6),
('2026-03-21 11:15:00', 'Theft in cafeteria', 5, 7),
('2026-03-22 15:45:00', 'Vandalism of cell', 1, 8),
('2026-03-23 08:00:00', 'Unauthorized area access', 15, 4),
('2026-03-24 18:30:00', 'Assault on guard', 2, 5),
('2026-03-25 20:00:00', 'Suspicious gathering', 7, 6),
('2026-03-26 12:00:00', 'Argument in library', 10, 7),
('2026-03-27 10:30:00', 'Smuggling attempt during visit', 12, 8);

-- ====================================================================
-- 4. LEVEL 3 TABLES POPULATION (Junctions & Results)
-- ====================================================================

-- 15 Routine Officers mappings
INSERT INTO RoutinesOfficer (officer_id, routine_id) VALUES 
(4, 1), (5, 2), (4, 3), (5, 4), (6, 5), 
(6, 6), (7, 7), (8, 8), (4, 9), (5, 10), 
(6, 11), (7, 12), (8, 1), (7, 3), (8, 5);

-- 8 Inspections (Must link strictly 1-to-1 with routines by constraint)
INSERT INTO Inspection (reason, routine_id) VALUES 
('Daily contraband sweep', 1),
('Nightly head count', 4),
('Solitary confinement wellness check', 9),
('Block C Random Search', 12),
('Yard area hazard check', 2),
('Library missing books audit', 8),
('Cafeteria utensil count', 5),
('Infirmary drug cabinet audit', 6);

-- 10 Labor Tasks linking Maintenance 1-10 to Maintainers 1-4
INSERT INTO Labor (maintainance_id, maintainer_id, labor_task) VALUES 
(1, 1, 'Fixed leaking pipes in Block A'),
(2, 2, 'Rewiring cafeteria kitchen equipment'),
(3, 4, 'Fixing AC unit in Max Security'),
(4, 3, 'Repairing broken workbenches'),
(5, 2, 'Replacing light fixtures in Infirmary'),
(6, 4, 'Fixing gym ventilation'),
(7, 3, 'Building new visitation partition'),
(8, 1, 'Unclogging Block C toilets'),
(9, 3, 'Patching hole in yard fence'),
(10, 2, 'Rewiring library computers');

-- 12 Involved Prisoners in Incidents
INSERT INTO InvolvedPrisoner (prisoner_incicent_id, prisoner_id) VALUES 
(1, 2), (1, 7), (2, 10), (3, 5), (4, 16), 
(4, 12), (5, 2), (6, 18), (7, 7), (8, 9), 
(9, 11), (10, 15);

-- 15 Medication Prescriptions linking Treatments to Medicines
INSERT INTO MedicationPrescription (treatment_id, medicine_id, dosage, frequency, duration) VALUES 
(1, 1, 500, 2, 7),
(2, 12, 250, 3, 10),
(3, 2, 200, 2, 5),
(4, 14, 20, 1, 30),
(5, 2, 400, 3, 7),
(6, 11, 10, 1, 14),
(7, 1, 500, 2, 3),
(8, 9, 2, 4, 30),
(9, 6, 10, 1, 90),
(10, 2, 200, 2, 5),
(11, 10, 40, 1, 14),
(12, 12, 500, 2, 10),
(13, 1, 500, 1, 1),
(14, 13, 5, 1, 7),
(15, 2, 400, 2, 5);

-- ====================================================================
-- 5. LEVEL 4 TABLES POPULATION
-- ====================================================================

-- 15 Visitment Line Items linking Visitment to Person 36-40 (Visitors)
INSERT INTO VisitmentLineItem (visitment_id, person_id) VALUES 
(1, 36), (2, 37), (3, 38), (4, 39), (5, 40), 
(6, 36), (7, 37), (8, 38), (9, 39), (10, 40), 
(11, 36), (12, 37), (13, 38), (14, 39), (15, 40);

-- 8 Inspection Results linking Inspections 1-8 to Irregularities
INSERT INTO InspectionResult (inspection_id, found_irregularity_id, result_description) VALUES 
(1, 6, 'Found suspected drugs taped under a bunk during routine sweep.'),
(2, 2, 'Inmate missing during night lockup count.'),
(3, 11, 'Found shiv hidden in solitary cell bed.'),
(4, 3, 'Found burner phone in Block C laundry.'),
(5, 5, 'Detected inmate near restricted fence line.'),
(6, 7, 'Window cracked, likely attempt to pass items.'),
(7, 4, 'Kitchen knife missing after lunch rush.'),
(8, 8, 'Bandages and painkillers unaccounted for.');