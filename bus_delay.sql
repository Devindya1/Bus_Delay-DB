DROP TABLE Driver;
CREATE TABLE Driver (
   DriverID INT PRIMARY KEY NOT NULL,
   FName CHAR (20),
   LName CHAR (20),
   License_num VARCHAR (15),
   Contact INT,
   Experience VARCHAR (255)
);

DROP TABLE  Bus;
CREATE TABLE Bus (
   BusID INT PRIMARY KEY NOT NULL,
   Plate_no VARCHAR (15),
   Capacity INT,
   DriverID INT,
   FOREIGN KEY (DriverID) REFERENCES Driver(DriverID) 
);

DROP TABLE Route;
CREATE TABLE Route (
   RouteID INT PRIMARY KEY NOT NULL,
   Start_Point VARCHAR (50),
   End_Point VARCHAR (50),
   Distance VARCHAR (10)
   FOREIGN KEY (DriverID) REFERENCES Driver(DriverID) 
);

DROP TABLE Schedule;
CREATE TABLE Schedule (
   ScheduleID INT PRIMARY KEY NOT NULL,
   Planned_Departure VARCHAR (50),
   Planned_Arrival VARCHAR (50),
   BusID INT,
   RouteID INT,
   FOREIGN KEY (BusID) REFERENCES Bus(BusID),
   FOREIGN KEY (RouteID) REFERENCES Route(RouteID)
); 

DROP TABLE Delayrecord;
CREATE TABLE DelayRecord (
   RecordID INT PRIMARY KEY NOT NULL,
   Actual_Departure VARCHAR (50),
   Actual_Arrival VARCHAR (50),
   Delay_Minutes NUMBER,
   ScheduleID INT,
   FOREIGN KEY (ScheduleID) REFERENCES Schedule(ScheduleID)
);


-- Drver table records
INSERT ALL
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (1, 'Kasun', 'Perera', 'B1234567', 711234567, '5 years driving buses')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (2, 'Dilani', 'Silva', 'C2345678', 772345678, '8 years intercity routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (3, 'Nimal', 'Fernando', 'A3456789', 763456789, '10 years express routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (4, 'Chamari', 'Bandara', 'D4567890', 704567890, '3 years local routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (5, 'Sunil', 'Rajapaksha', 'E5678901', 755678901, '12 years long-haul routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (6, 'Priya', 'Jayawardena', 'F6789012', 726789012, '7 years mountain roads')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (7, 'Anura', 'Kumara', 'G7890123', 787890123, '6 years night shifts')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (8, 'Lakshmi', 'Gunawardena', 'H8901234', 718901234, '9 years highway driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (9, 'Mahesh', 'Wickramasinghe', 'I9012345', 779012345, '4 years urban routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (10, 'Samanthi', 'Perera', 'J0123456', 760123456, '11 years school transport')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (11, 'Tharanga', 'Silva', 'K1234567', 701234567, '2 years substitute driver')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (12, 'Ranjith', 'Fernando', 'L2345678', 752345678, '15 years accident-free')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (13, 'Kumari', 'Bandara', 'M3456789', 723456789, '6 years tour bus driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (14, 'Gamini', 'Rajapaksha', 'N4567890', 784567890, '8 years heavy vehicle')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (15, 'Dilrukshi', 'Jayawardena', 'O5678901', 715678901, '3 years short routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (16, 'Upul', 'Kumara', 'P6789012', 776789012, '10 years all-weather driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (17, 'Nadee', 'Gunawardena', 'Q7890123', 767890123, '5 years public transport')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (18, 'Asanka', 'Wickramasinghe', 'R8901234', 708901234, '7 years rural routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (19, 'Renuka', 'Perera', 'S9012345', 759012345, '9 years passenger safety')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (20, 'Jagath', 'Silva', 'T0123456', 720123456, '4 years quick turnaround')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (21, 'Lalith', 'Fernando', 'U1234567', 781234567, '14 years city driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (22, 'Chathuri', 'Bandara', 'V2345678', 712345678, '6 years executive transport')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (23, 'Samantha', 'Rajapaksha', 'W3456789', 773456789, '8 years cross-country')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (24, 'Madhavi', 'Jayawardena', 'X4567890', 764567890, '3 years special events')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (25, 'Sudath', 'Kumara', 'Y5678901', 705678901, '11 years night driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (26, 'Sajith', 'Gunawardena', 'Z6789012', 756789012, '5 years difficult terrain')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (27, 'Sanduni', 'Wickramasinghe', 'AA789012', 727890123, '7 years tourist routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (28, 'Dhammika', 'Perera', 'BB890123', 788901234, '9 years suburban routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (29, 'Ruwan', 'Silva', 'CC901234', 719012345, '4 years new driver mentor')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (30, 'Deepani', 'Fernando', 'DD012345', 770123456, '12 years customer service')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (31, 'Hiran', 'Bandara', 'EE123456', 761234567, '6 years highway patrol')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (32, 'Menaka', 'Rajapaksha', 'FF234567', 702345678, '8 years shuttle service')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (33, 'Prasanna', 'Jayawardena', 'GG345678', 753456789, '3 years express delivery')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (34, 'Gayani', 'Kumara', 'HH456789', 724567890, '10 years long distances')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (35, 'Niranjan', 'Gunawardena', 'II567890', 785678901, '5 years reliable service')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (36, 'Upeksha', 'Wickramasinghe', 'JJ678901', 716789012, '7 years precise timing')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (37, 'Amal', 'Perera', 'KK789012', 777890123, '9 years school routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (38, 'Chandra', 'Silva', 'LL890123', 768901234, '4 years airport transfers')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (39, 'Harsha', 'Fernando', 'MM901234', 709012345, '13 years safe driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (40, 'Ishara', 'Bandara', 'NN012345', 750123456, '6 years chartered trips')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (41, 'Dilip', 'Rajapaksha', 'OO123456', 721234567, '8 years special needs transport')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (42, 'Ruwani', 'Jayawardena', 'PP234567', 782345678, '3 years short commutes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (43, 'Janaka', 'Kumara', 'QQ345678', 713456789, '10 years intercity routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (44, 'Thilini', 'Gunawardena', 'RR456789', 774567890, '5 years city navigation')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (45, 'Sudesh', 'Wickramasinghe', 'SS567890', 765678901, '7 years rural delivery')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (46, 'Wasana', 'Perera', 'TT678901', 706789012, '9 years passenger comfort')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (47, 'Asiri', 'Silva', 'UU789012', 757890123, '4 years emergency driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (48, 'Indika', 'Fernando', 'VV890123', 728901234, '14 years heavy traffic')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (49, 'Kanchana', 'Bandara', 'WW901234', 789012345, '6 years express service')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (50, 'Malith', 'Rajapaksha', 'XX012345', 710123456, '8 years difficult roads')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (51, 'Sithara', 'Jayawardena', 'YY123456', 771234567, '3 years school bus')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (52, 'Dinesh', 'Kumara', 'ZZ234567', 762345678, '11 years long routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (53, 'Renuka', 'Gunawardena', 'AB345678', 703456789, '5 years local area')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (54, 'Thusitha', 'Wickramasinghe', 'CD456789', 754567890, '7 years night routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (55, 'Shiromi', 'Perera', 'EF567890', 725678901, '9 years public transport')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (56, 'Gayan', 'Silva', 'GH678901', 786789012, '4 years short trips')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (57, 'Dilshan', 'Fernando', 'IJ789012', 717890123, '13 years safe record')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (58, 'Piumi', 'Bandara', 'KL890123', 778901234, '6 years airport shuttle')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (59, 'Chanaka', 'Rajapaksha', 'MN901234', 769012345, '8 years cross-country')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (60, 'Nilmini', 'Jayawardena', 'OP012345', 700123456, '3 years tourist transport')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (61, 'Ruwantha', 'Kumara', 'QR123456', 751234567, '10 years all conditions')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (62, 'Subhashini', 'Gunawardena', 'ST234567', 722345678, '5 years urban routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (63, 'Anjana', 'Wickramasinghe', 'UV345678', 783456789, '7 years rural routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (64, 'Nishanthi', 'Perera', 'WX456789', 714567890, '9 years school runs')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (65, 'Thilina', 'Silva', 'YZ567890', 775678901, '4 years quick turns')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (66, 'Sampath', 'Fernando', 'ZA678901', 766789012, '14 years city routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (67, 'Udayangi', 'Bandara', 'BC789012', 707890123, '6 years executive buses')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (68, 'Charith', 'Rajapaksha', 'DE890123', 758901234, '8 years cross-country')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (69, 'Dulani', 'Jayawardena', 'FG901234', 729012345, '3 years special events')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (70, 'Krishan', 'Kumara', 'HI012345', 780123456, '11 years night driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (71, 'Sankha', 'Gunawardena', 'JK123456', 711234567, '5 years challenging roads')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (72, 'Priyanka', 'Wickramasinghe', 'LM234567', 772345678, '7 years tourist routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (73, 'Nuwan', 'Perera', 'NO345678', 763456789, '9 years suburban routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (74, 'Nirosha', 'Silva', 'PQ456789', 704567890, '4 years new drivers')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (75, 'Akila', 'Fernando', 'RS567890', 755678901, '12 years customer service')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (76, 'Dinithi', 'Bandara', 'TU678901', 726789012, '6 years highway trips')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (77, 'Sasith', 'Rajapaksha', 'VW789012', 787890123, '8 years shuttle service')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (78, 'Pavithra', 'Jayawardena', 'XY890123', 718901234, '3 years express routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (79, 'Kusal', 'Kumara', 'ZA901234', 779012345, '10 years long distances')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (80, 'Thushari', 'Gunawardena', 'AB012345', 760123456, '5 years reliable routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (81, 'Suresh', 'Wickramasinghe', 'CD123456', 701234567, '7 years precise schedules')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (82, 'Chamodi', 'Perera', 'EF234567', 752345678, '9 years school contracts')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (83, 'Pasindu', 'Silva', 'GH345678', 723456789, '4 years airport runs')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (84, 'Gayathri', 'Fernando', 'IJ456789', 784567890, '13 years safe record')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (85, 'Dushan', 'Bandara', 'KL567890', 715678901, '6 years chartered services')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (86, 'Malinda', 'Rajapaksha', 'MN678901', 776789012, '8 years special transport')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (87, 'Nadeesha', 'Jayawardena', 'OP789012', 767890123, '3 years short trips')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (88, 'Viraj', 'Kumara', 'QR890123', 708901234, '10 years intercity routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (89, 'Rochelle', 'Gunawardena', 'ST901234', 759012345, '5 years city driving')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (90, 'Pradeep', 'Wickramasinghe', 'UV012345', 720123456, '7 years rural routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (91, 'Hiruni', 'Perera', 'WX123456', 781234567, '9 years passenger focus')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (92, 'Sanjaya', 'Silva', 'YZ234567', 712345678, '4 years emergency calls')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (93, 'Ayesh', 'Fernando', 'ZA345678', 773456789, '14 years heavy traffic')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (94, 'Hashini', 'Bandara', 'BC456789', 764567890, '6 years express service')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (95, 'Pathum', 'Rajapaksha', 'DE567890', 705678901, '8 years challenging terrain')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (96, 'Janani', 'Jayawardena', 'FG678901', 756789012, '3 years local bus')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (97, 'Chamara', 'Kumara', 'HI789012', 727890123, '11 years long routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (98, 'Dharshani', 'Gunawardena', 'JK890123', 788901234, '5 years city routes')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (99, 'Kalum', 'Wickramasinghe', 'LM901234', 719012345, '7 years night shifts')
  INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (100, 'Shashini', 'Perera', 'NO012345', 770123456, '9 years highway routes')
SELECT 1 FROM DUAL;

-- Bus table Records
INSERT ALL
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (1, 'NP-1001', 50, 1)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (2, 'NW-2002', 45, 2)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (3, 'WP-3003', 60, 3)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (4, 'SP-4004', 40, 4)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (5, 'CP-5005', 55, 5)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (6, 'EP-6006', 50, 6)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (7, 'UVA-7007', 48, 7)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (8, 'SG-8008', 52, 8)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (9, 'NC-9009', 42, 9)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (10, 'S-1010', 58, 10)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (11, 'NP-1011', 50, 11)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (12, 'NW-2012', 45, 12)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (13, 'WP-3013', 60, 13)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (14, 'SP-4014', 40, 14)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (15, 'CP-5015', 55, 15)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (16, 'EP-6016', 50, 16)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (17, 'UVA-7017', 48, 17)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (18, 'SG-8018', 52, 18)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (19, 'NC-9019', 42, 19)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (20, 'S-1020', 58, 20)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (21, 'NP-1021', 50, 21)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (22, 'NW-2022', 45, 22)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (23, 'WP-3023', 60, 23)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (24, 'SP-4024', 40, 24)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (25, 'CP-5025', 55, 25)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (26, 'EP-6026', 50, 26)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (27, 'UVA-7027', 48, 27)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (28, 'SG-8028', 52, 28)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (29, 'NC-9029', 42, 29)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (30, 'S-1030', 58, 30)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (31, 'NP-1031', 50, 31)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (32, 'NW-2032', 45, 32)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (33, 'WP-3033', 60, 33)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (34, 'SP-4034', 40, 34)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (35, 'CP-5035', 55, 35)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (36, 'EP-6036', 50, 36)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (37, 'UVA-7037', 48, 37)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (38, 'SG-8038', 52, 38)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (39, 'NC-9039', 42, 39)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (40, 'S-1040', 58, 40)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (41, 'NP-1041', 50, 41)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (42, 'NW-2042', 45, 42)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (43, 'WP-3043', 60, 43)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (44, 'SP-4044', 40, 44)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (45, 'CP-5045', 55, 45)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (46, 'EP-6046', 50, 46)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (47, 'UVA-7047', 48, 47)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (48, 'SG-8048', 52, 48)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (49, 'NC-9049', 42, 49)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (50, 'S-1050', 58, 50)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (51, 'NP-1051', 50, 51)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (52, 'NW-2052', 45, 52)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (53, 'WP-3053', 60, 53)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (54, 'SP-4054', 40, 54)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (55, 'CP-5055', 55, 55)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (56, 'EP-6056', 50, 56)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (57, 'UVA-7057', 48, 57)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (58, 'SG-8058', 52, 58)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (59, 'NC-9059', 42, 59)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (60, 'S-1060', 58, 60)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (61, 'NP-1061', 50, 61)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (62, 'NW-2062', 45, 62)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (63, 'WP-3063', 60, 63)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (64, 'SP-4064', 40, 64)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (65, 'CP-5065', 55, 65)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (66, 'EP-6066', 50, 66)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (67, 'UVA-7067', 48, 67)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (68, 'SG-8068', 52, 68)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (69, 'NC-9069', 42, 69)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (70, 'S-1070', 58, 70)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (71, 'NP-1071', 50, 71)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (72, 'NW-2072', 45, 72)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (73, 'WP-3073', 60, 73)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (74, 'SP-4074', 40, 74)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (75, 'CP-5075', 55, 75)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (76, 'EP-6076', 50, 76)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (77, 'UVA-7077', 48, 77)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (78, 'SG-8078', 52, 78)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (79, 'NC-9079', 42, 79)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (80, 'S-1080', 58, 80)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (81, 'NP-1081', 50, 81)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (82, 'NW-2082', 45, 82)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (83, 'WP-3083', 60, 83)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (84, 'SP-4084', 40, 84)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (85, 'CP-5085', 55, 85)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (86, 'EP-6086', 50, 86)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (87, 'UVA-7087', 48, 87)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (88, 'SG-8088', 52, 88)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (89, 'NC-9089', 42, 89)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (90, 'S-1090', 58, 90)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (91, 'NP-1091', 50, 91)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (92, 'NW-2092', 45, 92)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (93, 'WP-3093', 60, 93)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (94, 'SP-4094', 40, 94)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (95, 'CP-5095', 55, 95)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (96, 'EP-6096', 50, 96)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (97, 'UVA-7097', 48, 97)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (98, 'SG-8098', 52, 98)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (99, 'NC-9099', 42, 99)
  INTO Bus (BusID, Plate_no, Capacity, DriverID) VALUES (100, 'S-1100', 58, 100)
SELECT 1 FROM DUAL;

--- Route table record

INSERT ALL
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (1, 'Colombo', 'Kandy', '120 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (2, 'Kandy', 'Galle', '160 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (3, 'Galle', 'Jaffna', '400 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (4, 'Jaffna', 'Trincomalee', '180 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (5, 'Trincomalee', 'Anuradhapura', '100 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (6, 'Anuradhapura', 'Polonnaruwa', '70 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (7, 'Polonnaruwa', 'Sigiriya', '60 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (8, 'Sigiriya', 'Dambulla', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (9, 'Dambulla', 'Nuwara Eliya', '100 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (10, 'Nuwara Eliya', 'Ella', '60 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (11, 'Ella', 'Mirissa', '150 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (12, 'Mirissa', 'Hambantota', '50 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (13, 'Hambantota', 'Batticaloa', '250 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (14, 'Batticaloa', 'Negombo', '280 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (15, 'Negombo', 'Colombo', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (16, 'Colombo', 'Badulla', '200 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (17, 'Badulla', 'Monaragala', '70 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (18, 'Monaragala', 'Ampara', '110 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (19, 'Ampara', 'Pottuvil', '60 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (20, 'Pottuvil', 'Arugam Bay', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (21, 'Arugam Bay', 'Kataragama', '120 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (22, 'Kataragama', 'Tissamaharama', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (23, 'Tissamaharama', 'Tangalle', '50 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (24, 'Tangalle', 'Matara', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (25, 'Matara', 'Unawatuna', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (26, 'Unawatuna', 'Hikkaduwa', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (27, 'Hikkaduwa', 'Bentota', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (28, 'Bentota', 'Kalutara', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (29, 'Kalutara', 'Panadura', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (30, 'Panadura', 'Mount Lavinia', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (31, 'Mount Lavinia', 'Dehiwala', '5 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (32, 'Dehiwala', 'Kiribathgoda', '25 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (33, 'Kiribathgoda', 'Kadawatha', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (34, 'Kadawatha', 'Gampaha', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (35, 'Gampaha', 'Veyangoda', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (36, 'Veyangoda', 'Negombo', '25 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (37, 'Negombo', 'Chilaw', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (38, 'Chilaw', 'Puttalam', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (39, 'Puttalam', 'Mannar', '100 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (40, 'Mannar', 'Vavuniya', '60 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (41, 'Vavuniya', 'Kilinochchi', '70 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (42, 'Kilinochchi', 'Jaffna', '80 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (43, 'Jaffna', 'Point Pedro', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (44, 'Point Pedro', 'Kankesanthurai', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (45, 'Kankesanthurai', 'Mullaitivu', '90 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (46, 'Mullaitivu', 'Kokkilai', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (47, 'Kokkilai', 'Pulmoddai', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (48, 'Pulmoddai', 'Trincomalee', '50 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (49, 'Trincomalee', 'Nilaveli', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (50, 'Nilaveli', 'Kinniya', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (51, 'Kinniya', 'Kantale', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (52, 'Kantale', 'Habarana', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (53, 'Habarana', 'Medirigiriya', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (54, 'Medirigiriya', 'Minneriya', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (55, 'Minneriya', 'Dimbulagala', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (56, 'Dimbulagala', 'Mahiyanganaya', '80 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (57, 'Mahiyanganaya', 'Kandy', '90 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (58, 'Kandy', 'Matale', '25 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (59, 'Matale', 'Naula', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (60, 'Naula', 'Galewela', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (61, 'Galewela', 'Kurunegala', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (62, 'Kurunegala', 'Kegalle', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (63, 'Kegalle', 'Avissawella', '25 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (64, 'Avissawella', 'Ratnapura', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (65, 'Ratnapura', 'Embilipitiya', '60 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (66, 'Embilipitiya', 'Suriyawewa', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (67, 'Suriyawewa', 'Ridiyagama', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (68, 'Ridiyagama', 'Ambalantota', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (69, 'Ambalantota', 'Tangalle', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (70, 'Tangalle', 'Beliatta', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (71, 'Beliatta', 'Weligama', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (72, 'Weligama', 'Mirissa', '5 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (73, 'Mirissa', 'Dickwella', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (74, 'Dickwella', 'Matara', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (75, 'Matara', 'Akuressa', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (76, 'Akuressa', 'Morawaka', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (77, 'Morawaka', 'Deniyaya', '25 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (78, 'Deniyaya', 'Rakwana', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (79, 'Rakwana', 'Balangoda', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (80, 'Balangoda', 'Haputale', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (81, 'Haputale', 'Bandarawela', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (82, 'Bandarawela', 'Ella', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (83, 'Ella', 'Badulla', '25 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (84, 'Badulla', 'Passara', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (85, 'Passara', 'Lunugala', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (86, 'Lunugala', 'Bibila', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (87, 'Bibila', 'Monaragala', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (88, 'Monaragala', 'Wellawaya', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (89, 'Wellawaya', 'Thanamalwila', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (90, 'Thanamalwila', 'Udawalawa', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (91, 'Udawalawa', 'Pelmadulla', '30 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (92, 'Pelmadulla', 'Godakawela', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (93, 'Godakawela', 'Nivitigala', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (94, 'Nivitigala', 'Kalawana', '20 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (95, 'Kalawana', 'Horana', '40 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (96, 'Horana', 'Ingiriya', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (97, 'Ingiriya', 'Padukka', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (98, 'Padukka', 'Homagama', '15 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (99, 'Homagama', 'Kottawa', '10 KM')
  INTO Route (RouteID, Start_Point, End_Point, Distance) VALUES (100, 'Kottawa', 'Colombo', '20 KM')
SELECT 1 FROM DUAL;

---Schedule table records

INSERT ALL
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (1, '05:55 AM', '09:00 AM', 1, 1)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (2, '07:00 AM', '11:00 AM', 2, 2)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (3, '08:00 AM', '04:00 PM', 3, 3)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (4, '09:00 AM', '01:00 PM', 4, 4)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (5, '09:53 AM', '12:00 PM', 5, 5)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (6, '11:00 AM', '12:30 PM', 6, 6)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (7, '12:00 PM', '01:00 PM', 7, 7)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (8, '01:00 PM', '01:30 PM', 8, 8)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (9, '02:00 PM', '04:30 PM', 9, 9)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (10, '03:00 PM', '04:00 PM', 10, 1)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (11, '06:30 AM', '09:30 AM', 11, 11)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (12, '07:20 AM', '10:30 AM', 12, 12)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (13, '08:25 AM', '03:30 PM', 13, 13)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (14, '09:20 AM', '01:30 PM', 14, 14)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (15, '10:25 AM', '12:30 PM', 15, 15)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (16, '11:30 AM', '01:00 PM', 16, 1)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (17, '12:20 PM', '01:30 PM', 17, 17)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (18, '01:30 PM', '02:00 PM', 18, 18)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (19, '02:30 PM', '05:00 PM', 19, 19)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (20, '03:25 PM', '04:30 PM', 20, 20)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (21, '06:55 AM', '09:00 AM', 21, 21)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (22, '08:00 AM', '10:00 AM', 22, 22)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (23, '09:00 AM', '01:00 PM', 23, 23)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (24, '09:50 AM', '02:00 PM', 24, 24)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (25, '11:00 AM', '01:00 PM', 25, 25)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (26, '11:50 AM', '01:30 PM', 26, 26)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (27, '01:00 PM', '02:00 PM', 27, 27)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (28, '02:00 PM', '02:30 PM', 28, 28)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (29, '02:50 PM', '05:30 PM', 29, 29)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (30, '04:00 PM', '05:00 PM', 30, 30)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (31, '07:30 AM', '10:00 AM', 31, 31)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (32, '08:20 AM', '11:30 AM', 32, 32)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (33, '09:20 AM', '02:30 PM', 33, 33)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (34, '10:30 AM', '02:30 PM', 34, 34)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (35, '11:25 AM', '01:30 PM', 35, 35)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (36, '12:30 PM', '02:00 PM', 36, 36)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (37, '01:30 PM', '02:30 PM', 37, 37)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (38, '02:30 PM', '03:00 PM', 38, 38)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (39, '03:30 PM', '06:00 PM', 39, 39)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (40, '04:30 PM', '05:30 PM', 40, 40)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (41, '08:00 AM', '10:00 AM', 41, 41)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (42, '09:00 AM', '11:00 AM', 42, 42)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (43, '10:00 AM', '02:00 PM', 43, 43)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (44, '10:55 AM', '03:00 PM', 44, 44)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (45, '12:00 PM', '02:00 PM', 45, 45)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (46, '01:00 PM', '02:30 PM', 46, 46)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (47, '02:00 PM', '03:00 PM', 47, 47)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (48, '03:00 PM', '03:30 PM', 48, 48)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (49, '04:00 PM', '06:30 PM', 49, 49)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (50, '04:45 PM', '06:00 PM', 50, 50)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (51, '08:30 AM', '11:00 AM', 51, 51)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (52, '09:30 AM', '12:30 PM', 52, 52)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (53, '10:30 AM', '03:30 PM', 53, 53)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (54, '11:20 AM', '03:30 PM', 54, 54)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (55, '12:25 PM', '02:30 PM', 55, 55)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (56, '01:30 PM', '03:00 PM', 56, 56)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (57, '02:30 PM', '03:30 PM', 57, 57)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (58, '03:35 PM', '04:00 PM', 58, 58)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (59, '04:30 PM', '07:00 PM', 59, 59)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (60, '05:30 PM', '06:30 PM', 60, 60)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (61, '09:00 AM', '11:00 AM', 61, 61)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (62, '10:00 AM', '12:00 PM', 62, 62)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (63, '11:10 AM', '03:00 PM', 63, 63)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (64, '12:00 PM', '04:00 PM', 64, 64)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (65, '01:00 PM', '03:00 PM', 65, 65)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (66, '02:00 PM', '03:30 PM', 66, 66)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (67, '03:00 PM', '04:00 PM', 67, 67)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (68, '04:00 PM', '04:30 PM', 68, 68)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (69, '05:00 PM', '07:30 PM', 69, 69)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (70, '06:00 PM', '07:00 PM', 70, 70)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (71, '09:30 AM', '12:00 PM', 71, 71)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (72, '10:30 AM', '01:30 PM', 72, 72)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (73, '11:30 AM', '04:30 PM', 73, 73)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (74, '12:30 PM', '04:30 PM', 74, 74)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (75, '01:15 PM', '03:30 PM', 75, 75)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (76, '02:30 PM', '04:00 PM', 76, 76)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (77, '03:10 PM', '04:30 PM', 77, 77)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (78, '04:30 PM', '05:00 PM', 78, 78)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (79, '05:20 PM', '08:00 PM', 79, 79)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (80, '06:25 PM', '07:30 PM', 80, 80)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (81, '10:00 AM', '12:00 PM', 81, 81)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (82, '11:00 AM', '01:00 PM', 82, 82)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (83, '12:00 PM', '04:00 PM', 83, 83)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (84, '01:00 PM', '05:00 PM', 84, 84)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (85, '02:00 PM', '04:00 PM', 85, 85)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (86, '03:00 PM', '04:30 PM', 86, 86)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (87, '04:00 PM', '05:00 PM', 87, 87)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (88, '05:00 PM', '05:30 PM', 88, 88)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (89, '06:00 PM', '08:30 PM', 89, 89)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (90, '07:00 PM', '08:00 PM', 90, 90)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (91, '10:30 AM', '01:00 PM', 91, 91)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (92, '11:30 AM', '02:30 PM', 92, 92)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (93, '12:30 PM', '05:30 PM', 93, 93)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (94, '01:30 PM', '05:30 PM', 94, 94)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (95, '02:30 PM', '04:30 PM', 95, 95)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (96, '03:30 PM', '05:00 PM', 96, 96)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (97, '04:30 PM', '05:30 PM', 97, 97)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (98, '05:30 PM', '06:00 PM', 98, 98)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (99, '06:30 PM', '09:00 PM', 99, 99)
  INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID) VALUES (100, '07:30 PM', '08:30 PM', 100, 100)
SELECT 1 FROM DUAL;

---DelayRecord table records

INSERT ALL
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (1, '06:05 AM', '09:10 AM', 10, 1)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (2, '07:15 AM', '11:20 AM', 20, 2)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (3, '08:25 AM', '04:30 PM', 30, 3)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (4, '09:00 AM', '01:00 PM', 0, 4)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (5, '10:08 AM', '12:15 PM', 15, 5)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (6, '11:12 AM', '12:45 PM', 15, 6)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (7, '12:20 PM', '01:25 PM', 25, 7)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (8, '01:00 PM', '01:30 PM', 0, 8)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (9, '02:35 PM', '05:15 PM', 45, 9)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (10, '03:10 PM', '04:20 PM', 20, 10)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (11, '06:30 AM', '09:30 AM', 0, 11)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (12, '07:40 AM', '10:50 AM', 20, 12)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (13, '08:50 AM', '03:55 PM', 25, 13)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (14, '09:35 AM', '01:45 PM', 15, 14)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (15, '10:45 AM', '12:50 PM', 20, 15)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (16, '11:30 AM', '01:00 PM', 0, 16)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (17, '12:40 PM', '01:50 PM', 20, 17)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (18, '01:50 PM', '02:20 PM', 20, 18)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (19, '02:30 PM', '05:00 PM', 0, 19)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (20, '03:55 PM', '05:00 PM', 30, 20)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (21, '07:15 AM', '09:20 AM', 20, 21)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (22, '08:00 AM', '10:00 AM', 0, 22)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (23, '09:20 AM', '01:25 PM', 25, 23)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (24, '10:30 AM', '02:40 PM', 40, 24)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (25, '11:00 AM', '01:00 PM', 0, 25)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (26, '12:05 PM', '01:45 PM', 15, 26)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (27, '01:10 PM', '02:20 PM', 20, 27)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (28, '02:20 PM', '02:50 PM', 20, 28)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (29, '03:15 PM', '05:55 PM', 25, 29)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (30, '04:00 PM', '05:00 PM', 0, 30)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (31, '07:30 AM', '10:00 AM', 0, 31)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (32, '08:50 AM', '12:00 PM', 30, 32)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (33, '09:50 AM', '03:00 PM', 30, 33)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (34, '10:30 AM', '02:30 PM', 0, 34)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (35, '11:55 AM', '02:00 PM', 30, 35)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (36, '12:30 PM', '02:00 PM', 0, 36)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (37, '01:30 PM', '02:30 PM', 0, 37)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (38, '02:40 PM', '03:10 PM', 10, 38)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (39, '03:45 PM', '06:15 PM', 15, 39)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (40, '04:30 PM', '05:30 PM', 0, 40)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (41, '08:00 AM', '10:00 AM', 0, 41)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (42, '09:00 AM', '11:00 AM', 0, 42)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (43, '10:10 AM', '02:20 PM', 20, 43)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (44, '11:25 AM', '03:30 PM', 30, 44)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (45, '12:10 PM', '02:15 PM', 15, 45)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (46, '01:00 PM', '02:30 PM', 0, 46)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (47, '02:00 PM', '03:00 PM', 0, 47)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (48, '03:20 PM', '03:50 PM', 20, 48)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (49, '04:30 PM', '07:00 PM', 30, 49)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (50, '05:15 PM', '06:30 PM', 30, 50)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (51, '08:30 AM', '11:00 AM', 0, 51)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (52, '09:30 AM', '12:30 PM', 0, 52)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (53, '10:40 AM', '03:50 PM', 20, 55)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (54, '11:45 AM', '03:55 PM', 25, 54)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (55, '12:50 PM', '02:55 PM', 25, 55)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (56, '01:50 PM', '03:20 PM', 20, 56)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (57, '02:30 PM', '03:30 PM', 0, 57)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (58, '03:50 PM', '04:15 PM', 15, 58)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (59, '04:40 PM', '07:10 PM', 10, 59)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (60, '05:30 PM', '06:30 PM', 0, 60)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (61, '09:05 AM', '11:10 AM', 10, 61)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (62, '10:20 AM', '12:30 PM', 30, 62)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (63, '11:10 AM', '03:00 PM', 0, 63)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (64, '12:30 PM', '04:30 PM', 30, 64)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (65, '01:00 PM', '03:00 PM', 0, 65)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (66, '02:25 PM', '03:50 PM', 25, 66)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (67, '03:00 PM', '04:00 PM', 0, 67)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (68, '04:15 PM', '04:50 PM', 20, 68)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (69, '05:20 PM', '07:50 PM', 20, 69)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (70, '06:00 PM', '07:00 PM', 0, 70)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (71, '09:50 AM', '12:20 PM', 20, 71)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (72, '10:30 AM', '01:30 PM', 0, 72)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (73, '11:30 AM', '04:30 PM', 0, 73)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (74, '12:50 PM', '04:50 PM', 20, 74)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (75, '01:45 PM', '04:00 PM', 30, 75)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (76, '02:50 PM', '04:20 PM', 20, 76)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (77, '03:55 PM', '05:15 PM', 45, 77)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (78, '04:30 PM', '05:00 PM', 0, 78)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (79, '05:40 PM', '08:20 PM', 20, 79)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (80, '06:45 PM', '07:50 PM', 20, 80)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (81, '10:20 AM', '12:30 PM', 30, 81)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (82, '11:00 AM', '01:00 PM', 0, 82)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (83, '12:10 PM', '04:20 PM', 20, 83)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (84, '01:25 PM', '05:30 PM', 30, 84)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (85, '02:00 PM', '04:00 PM', 0, 85)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (86, '03:15 PM', '04:45 PM', 15, 86)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (87, '04:10 PM', '05:20 PM', 20, 87)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (88, '05:00 PM', '05:30 PM', 0, 88)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (89, '06:20 PM', '08:50 PM', 20, 89)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (90, '07:10 PM', '08:20 PM', 20, 90)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (91, '10:50 AM', '01:20 PM', 20, 91)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (92, '11:45 AM', '02:50 PM', 20, 92)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (93, '12:40 PM', '05:50 PM', 20, 93)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (94, '01:30 PM', '05:30 PM', 0, 94)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (95, '02:50 PM', '05:00 PM', 30, 95)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (96, '03:30 PM', '05:00 PM', 0, 96)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (97, '04:50 PM', '06:00 PM', 30, 97)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (98, '05:30 PM', '06:00 PM', 0, 98)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (99, '06:50 PM', '09:20 PM', 20, 99)
  INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID) VALUES (100, '07:45 PM', '09:00 PM', 30, 100)
SELECT 1 FROM DUAL;


SELECT * FROM Driver;
SELECT * FROM Bus;
SELECT * FROM Route;
SELECT * FROM Schedule;
SELECT * FROM DelayRecord;

-- Get the records of buses with their drivers and routes (SELECT)
SELECT b.BusID, b.Plate_no, d.FName || ' ' || d.LName AS DriverName, r.Start_Point, r.End_Point
FROM Bus b
JOIN Driver d ON b.DriverID = d.DriverID
JOIN Schedule s ON b.BusID = s.BusID
JOIN Route r ON s.RouteID = r.RouteID;


-- INSERT the new records to tables
-- Insert into Driver
INSERT INTO Driver (DriverID, FName, LName, License_num, Contact, Experience)
VALUES (101, 'Amila', 'Sadaruwan', 'L123456459', 771234567, '5 years exprience with night drive');

-- Insert into Bus
INSERT INTO Bus (BusID, Plate_no, Capacity, DriverID)
VALUES (101, 'SP-1234', 50, 101);

-- Insert into Route
INSERT INTO Route (RouteID, Start_Point, End_Point, Distance)
VALUES (101, 'Kandy', 'Colombo', '115km');

-- Insert into Schedule
INSERT INTO Schedule (ScheduleID, Planned_Departure, Planned_Arrival, BusID, RouteID)
VALUES (101, '06:00 AM', '09:30 AM', 101, 101);

-- Insert into DelayRecord
INSERT INTO DelayRecord (RecordID, Actual_Departure, Actual_Arrival, Delay_Minutes, ScheduleID)
VALUES (101, '06:15 AM', '10:00 AM', 30, 101);

-- UPDATE the records
UPDATE Bus SET Capacity = 60 WHERE BusID = 30;
SELECT BusID,Plate_no,Capacity FROM Bus WHERE BusID = 30;

UPDATE Driver SET Contact = 772345678 WHERE DriverID = 21;
SELECT FName, Contact FROM Driver WHERE DriverID = 21;

-- DELETE the records
DELETE FROM DelayRecord WHERE RecordID = 101;
DELETE FROM Schedule WHERE ScheduleID = 101;
DELETE FROM Route WHERE RouteID = 101;
DELETE FROM Bus WHERE BusID = 101;
DELETE FROM Driver WHERE DriverID = 101;

-- Create procedure to instert new driver into driver table
DROP PROCEDURE AddNewDriver;
CREATE OR REPLACE PROCEDURE AddNewDriver (
   New_DriverID      IN INT,
   New_FName         IN CHAR,
   New_LName         IN CHAR,
   New_License_num   IN VARCHAR2,
   New_Contact       IN INT,
   New_Experience    IN VARCHAR2
)
IS
BEGIN
   INSERT INTO Driver (DriverID, FName, LName, License_num, Contact, Experience) VALUES (
      New_DriverID, New_FName, New_LName, New_License_num, New_Contact, New_Experience
   );
   DBMS_OUTPUT.PUT_LINE('Driver added successfully.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error adding driver: ');
END;
/

EXEC AddNewDriver(101, 'Arun', 'Perera', 'LIC120X', 776655443, '3 years experience with school contracts');

SELECT * FROM Driver;

-- Calculates the total delay in minutes
DROP FUNCTION CalTotalDelay;
CREATE OR REPLACE FUNCTION CalTotalDelay (New_BusID IN INT) RETURN NUMBER
IS
   TotalDelay NUMBER := 0;
BEGIN
   SELECT SUM(d.Delay_Minutes)
   INTO TotalDelay
   FROM DelayRecord d
   JOIN Schedule s ON d.ScheduleID = s.ScheduleID
   WHERE s.BusID = New_BusID;

   RETURN NVL(TotalDelay, 0);
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RETURN 0;
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error calculating delay: ' );
      RETURN -1;
END;
/

SELECT CalTotalDelay(55)AS TotalDelay FROM dual;

-- Creating index
CREATE INDEX idx_schedule_busid ON Schedule(BusID);

SELECT * FROM Schedule WHERE BusID = 20;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);


-- Create view to get summery report 
DROP VIEW DelayedBusReport;
CREATE OR REPLACE VIEW DelayedBusReport AS
SELECT b.BusID, b.Plate_no, s.ScheduleID, s.Planned_Departure,s.Planned_Arrival,
    r.RouteID, r.Start_Point, r.End_Point, dr.Actual_Departure,dr.Actual_Arrival,
    dr.Delay_Minutes
FROM
    Schedule s
    JOIN DelayRecord dr ON s.ScheduleID = dr.ScheduleID
    JOIN Bus b       ON s.BusID      = b.BusID
    JOIN Route r     ON s.RouteID    = r.RouteID
WHERE
    dr.Delay_Minutes > 0;  -- only include schedules with a delay


SELECT * FROM DelayedBusReport
ORDER BY Delay_Minutes DESC;

-- avoid select all
SELECT s.ScheduleID, d.Actual_Departure, d.Delay_Minutes 
FROM Schedule s 
JOIN DelayRecord d ON s.ScheduleID = d.ScheduleID 
WHERE s.BusID = 60;








