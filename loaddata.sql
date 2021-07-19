-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.

CONNECT TO cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.
INSERT INTO Category(cname, prioritynum) VALUES
                                                ('HealthCareWorkers', 1),
                                                ('Elderly', 1),
                                                ('ImmunCompromised', 1),
                                                ('Teachers', 2),
                                                ('Children', 2),
                                                ('EssentialWorkers', 3),
                                                ('Else', 4),
                                                ('Proxim1', 2),
                                                ('Proxim2', 3);

INSERT INTO Person VALUES
                          (00, 'John Smith', 'M', '1977-05-04', '416-100-1000', 'Toronto', 'M4N 2X5', '666 Devils Way','2020-04-25', 'Else' ),
                          (01, 'Nancy Grace', 'F', '1940-03-22', '414-601-0111', 'Guelph', 'N4L 8B2', '123 Main Street','2020-08-23', 'Elderly' ),
                          (02, 'Isaac Cain', 'M', '1990-02-14', '426-123-4321', 'Kingston', 'G2G 2F2', '80 Boofer Road','2021-01-22', 'EssentialWorkers' ),
                          (03, 'Jane Doe', 'F', '1984-01-02', '514-727-1030', 'Montreal', 'H3X 5K4', '9001 DragonBall Boulevard ','2020-10-31', 'HealthCareWorkers' ),
                          (04, 'Pip Squeak', 'M', '2013-12-04', '905-200-2000', 'Brampton', 'M3L 2Y6', '404 Error Way','2020-05-11', 'Children' );

INSERT INTO Vaccine VALUES
                           ('Pfizer', 2, 14 ),
                           ('Moderna', 2, 21),
                           ('J&J', 1, NULL),
                           ('Astra-Zeneca', 2, 28),
                           ('Osmosis Jones', 3, 7);

INSERT INTO VaccLocation VALUES
                                ('Toronto General', 'Toronto', 'M5G 2C4', '200 Elizabeth Street'),
                                ('Molson Stadium', 'Montreal', 'H2X 2K4', '3725 Rue University'),
                                ('Fort Henry', 'Kingston', 'B4B 4G4', '1812 Winner Way'),
                                ('Fauci Mart', 'Guelph', 'L7N 5J9', '19 Wuhan Street'),
                                ('BMO Field', 'Toronto', 'T2F 3C4', '300 Lakeshore Boulevard'),
                                ('Mount Sinai', 'Toronto', 'M5M 2Y5', '20 College Street'),
                                ('Hotel Dieu', 'Montreal', 'F4D G3G', '500 Avenue Des Pins'),
                                ('Weenie-Hutt General', 'Bikini Bottom', 'B0B 5Q4', '30 Neptune Road'),
                                ('Jewish General', 'Montreal', 'Q6B 1C8', '40 QC Way');

INSERT INTO VaccineBatch VALUES
('Osmosis Jones', 1, '2020-09-09', '2021-09-09', 25, 'Fort Henry'),
('Moderna', 2, '2021-02-14', '2021-08-14', 50, 'BMO Field'),
('Pfizer', 7, '2021-02-20', '2021-03-20', 15, 'Molson Stadium'),
('J&J', 12, '2021-01-24', '2023-01-24', 75, 'Fauci Mart'),
('Pfizer', 10, '2021-02-23', '2021-03-23', 30, 'Toronto General');

INSERT INTO Vial VALUES
                        ('Osmosis Jones', 1, 1),
                        ('Moderna', 2, 1),
                        ('Pfizer', 7, 4),
                        ('Pfizer', 10, 20),
                        ('J&J', 12, 5),
                        ('J&J', 12, 15),
                        ('Pfizer', 7, 6),
                        ('Pfizer', 7, 12),
                        ('Moderna', 2, 4);

INSERT INTO Hospital VALUES
                            ('Toronto General'),
                            ('Fauci Mart'),
                            ('Mount Sinai'),
                            ('Hotel Dieu'),
                            ('Weenie-Hutt General'),
                            ('Jewish General');

INSERT INTO Nurse VALUES
                         (123, 'Nick Coach', 'Toronto General'),
                         (456, 'Karen Plankton', 'Weenie-Hutt General'),
                         (999, 'Anthony Fauci', 'Fauci Mart'),
                         (404, 'Jeanne Mance', 'Hotel Dieu'),
                         (333, 'Buddy McGee', 'Mount Sinai'),
                         (789, 'Fred LaPointe', 'Jewish General');

INSERT INTO VaccDates VALUES
                            ('Fauci Mart', '2021-03-24'),
                            ('BMO Field', '2021-02-28'),
                            ('Mount Sinai', '2021-04-08'),
                            ('BMO Field', '2021-03-26'),
                            ('Fort Henry', '2021-08-11'),
                            ('Weenie-Hutt General', '2021-01-11'),
                            ('Hotel Dieu', '2021-01-22'),
                            ('Hotel Dieu', '2021-05-14'),
                            ('Hotel Dieu', '2021-02-06'),
                            ('Jewish General', '2021-03-20');

INSERT INTO VaccSlot VALUES ('Hotel Dieu', '2021-01-22', '9:00', 2, 01, '2021-02-23', 123, 'Pfizer', 7,12),
                            ('Fauci Mart', '2021-03-24', '10:00',1 ,00, '2021-02-23', 123, 'J&J', 12, 5),
                            ('Fauci Mart', '2021-03-24', '11:00',2 ,01, '2021-02-23', 123, 'Pfizer', 7, 4),
                            ('BMO Field', '2021-02-28', '15:00', 5, 01, '2021-01-24', 333, 'Pfizer', 10, 20),
                            ('Fort Henry', '2021-08-11', '13:00',4, 02, '2021-02-22', 999, 'Osmosis Jones', 1,1),
                            ('BMO Field', '2021-03-26', '15:00', 5, 04, '2021-01-24', 333, 'Moderna', 2, 1),
                            ('Hotel Dieu', '2021-02-06', '8:00', 1, 03, '2021-02-23', 404, 'Moderna', 2, 4),
                            ('Jewish General', '2021-03-20', '9:00', 1, NULL, NULL, NULL, NULL, NULL, NULL),
                            ('Jewish General', '2021-03-20', '10:00', 2, NULL, NULL, NULL, NULL, NULL, NULL),
                            ('Jewish General', '2021-03-20', '11:00', 3, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO NurseAssignments VALUES
                                    (123, 'Fauci Mart', '2021-03-24'),
                                    (333,'BMO Field', '2021-02-28'),
                                    (333, 'BMO Field', '2021-03-26'),
                                    (999, 'Fort Henry', '2021-08-11'),
                                    (333, 'Mount Sinai', '2021-04-08'),
                                    (404, 'Hotel Dieu', '2021-05-14');

