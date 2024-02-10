CREATE DATABASE HMS;
USE HMS;

CREATE TABLE Patient(
email varchar(50) PRIMARY KEY,
password varchar(30) NOT NULL,
name varchar(50) NOT NULL,
address varchar(60) NOT NULL,
gender VARCHAR(20) NOT NULL
);

CREATE TABLE MedicalHistory(
id int PRIMARY KEY,
date DATE NOT NULL,
conditions VARCHAR(100) NOT NULL, 
surgeries VARCHAR(100) NOT NULL, 
medication VARCHAR(100) NOT NULL
);

CREATE TABLE Doctor(
email varchar(50) PRIMARY KEY,
gender varchar(20) NOT NULL,
password varchar(30) NOT NULL,
name varchar(50) NOT NULL
);

CREATE TABLE Appointment(
id int PRIMARY KEY,
date DATE NOT NULL,
starttime TIME NOT NULL,
endtime TIME NOT NULL,
status varchar(15) NOT NULL
);

CREATE TABLE PatientsAttendAppointments(
patient varchar(50) NOT NULL,
appt int NOT NULL,
concerns varchar(40) NOT NULL,
symptoms varchar(40) NOT NULL,
FOREIGN KEY (patient) REFERENCES Patient (email) ON DELETE CASCADE,
FOREIGN KEY (appt) REFERENCES Appointment (id) ON DELETE CASCADE,
PRIMARY KEY (patient, appt)
);

CREATE TABLE Schedule(
id int NOT NULL,
starttime TIME NOT NULL,
endtime TIME NOT NULL,
breaktime TIME NOT NULL,
day varchar(20) NOT NULL,
PRIMARY KEY (id, starttime, endtime, breaktime, day)
);

CREATE TABLE PatientsFillHistory(
patient varchar(50) NOT NULL,
history int NOT NULL,
FOREIGN KEY (patient) REFERENCES Patient (email) ON DELETE CASCADE,
FOREIGN KEY (history) REFERENCES MedicalHistory (id) ON DELETE CASCADE,
PRIMARY KEY (history)
);

CREATE TABLE Diagnose(
appt int NOT NULL,
doctor varchar(50) NOT NULL,
diagnosis varchar(40) NOT NULL,
prescription varchar(50) NOT NULL,
FOREIGN KEY (appt) REFERENCES Appointment (id) ON DELETE CASCADE,
FOREIGN KEY (doctor) REFERENCES Doctor (email) ON DELETE CASCADE,
PRIMARY KEY (appt, doctor)
);

CREATE TABLE DocsHaveSchedules(
sched int NOT NULL,
doctor varchar(50) NOT NULL,
FOREIGN KEY (sched) REFERENCES Schedule (id) ON DELETE CASCADE,
FOREIGN KEY (doctor) REFERENCES Doctor (email) ON DELETE CASCADE,
PRIMARY KEY (sched, doctor)
);

CREATE TABLE DoctorViewsHistory(
history int NOT NULL,
doctor varchar(50) NOT NULL,
FOREIGN KEY (doctor) REFERENCES Doctor (email) ON DELETE CASCADE,
FOREIGN KEY (history) REFERENCES MedicalHistory (id) ON DELETE CASCADE,
PRIMARY KEY (history, doctor)
);

-- Inserting data into Patient table
INSERT INTO Patient(email, password, name, address, gender)
VALUES
('ramesh@gmail.com', 'password123', 'Ramesh', 'Tamil Nadu', 'male'),
('suresh@gmail.com', 'password123', 'Suresh', 'Karnataka', 'male'),
('rakesh@gmail.com', 'password123', 'Rakesh', 'Gujarat', 'male'),
('ritesh@gmail.com', 'password123', 'Ritesh', 'Gujarat', 'male'),
('saurabh@gmail.com', 'password123', 'Saurabh', 'Gujarat', 'male'),
('harish@gmail.com', 'password123', 'Harish', 'Gujarat', 'male'),
('harsh@gmail.com', 'password123', 'Harsh', 'Gujarat', 'male'),
('rohit@gmail.com', 'password123', 'Rohit', 'Gujarat', 'male'),
('rohan@gmail.com', 'password123', 'Rohan', 'Gujarat', 'male'),
('rajesh@gmail.com', 'password123', 'Rajesh', 'Gujarat', 'male');

-- Inserting data into MedicalHistory table
INSERT INTO MedicalHistory(id, date, conditions, surgeries, medication)
VALUES
(1, '2019-01-14', 'Pain in abdomen', 'Heart Surgery', 'Crocin'),
(2, '2019-01-14', 'Frequent Indigestion', 'none', 'none'),
(3, '2019-01-14', 'Body Pain', 'none', 'Iodex'),
(4, '2019-01-14', 'Covid', 'none', 'none'),
(5, '2019-01-14', 'Pain in abdomen', 'Heart Surgery', 'Crocin'),
(6, '2019-01-15', 'Body Pain', 'none', 'Crocin Disprin Painkiller'),
(7, '2019-01-15', 'Covid', 'none', 'none'),
(8, '2019-01-15', 'Body Pain', 'none', 'Crocin Disprin Painkiller'),
(9, '2019-01-15', 'Frequent Indigestion', 'none', 'none'),
(10, '2019-01-15', 'Covid', 'none', 'none');

-- Inserting data into Doctor table
INSERT INTO Doctor(email, gender, password, name)
VALUES
('drrohit@gmail.com', 'male', 'securepassword', 'Dr. Rohit Anthony'),
('drramesh@gmail.com', 'male', 'securepassword', 'Dr. Ramesh Singh');

-- Inserting data into Appointment table
INSERT INTO Appointment(id, date, starttime, endtime, status)
VALUES
(1, '2019-01-15', '09:00', '10:00', 'Done'),
(2, '2019-01-16', '10:00', '11:00', 'Done'),
(3, '2019-01-18', '14:00', '15:00', 'Done'),
(4, '2019-01-18', '14:00', '15:15', 'Done'),
(5, '2019-01-18', '14:00', '15:30', 'Done'),
(6, '2019-01-18', '14:00', '15:45', 'Done'),
(7, '2019-01-18', '14:00', '18:00', 'Done'),
(8, '2019-01-18', '14:00', '15:15', 'Pending'),
(9, '2019-01-18', '14:00', '15:30', 'Pending'),
(10, '2019-01-18', '14:00', '15:45', 'Pending');

-- Inserting data into PatientsAttendAppointments table
INSERT INTO PatientsAttendAppointments(patient, appt, concerns, symptoms)
VALUES
('ramesh@gmail.com', 1, 'none', 'itchy throat'),
('suresh@gmail.com', 2, 'infection', 'fever'),
('rakesh@gmail.com', 3, 'nausea', 'fever'),
('ritesh@gmail.com', 4, 'Infection', 'Cough'),
('saurabh@gmail.com', 5, 'Fever', 'Body Ache'),
('harish@gmail.com', 6, 'none', 'itchy throat'),
('harsh@gmail.com', 7, 'Body Pain', 'Covid'),
('rohit@gmail.com', 8, 'Covid', 'Breathing Difficulty'),
('rohan@gmail.com', 9, 'Covid', 'Fever'),
('rajesh@gmail.com', 10, 'Stomach Ache', 'Body Pain');

-- Inserting data into Schedule table
INSERT INTO Schedule(id, starttime, endtime, breaktime, day)
VALUES
(1, '09:00', '17:00', '12:00', 'Tuesday'),
(2, '09:00', '17:00', '12:00', 'Friday'),
(3, '09:00', '17:00', '12:00', 'Saturday'),
(4, '09:00', '17:00', '12:00', 'Sunday'),
(5, '09:00', '17:00', '12:00', 'Wednesday'),
(6, '09:00', '17:00', '12:00', 'Friday');

-- Inserting data into PatientsFillHistory table
INSERT INTO PatientsFillHistory(patient, history)
VALUES
('ramesh@gmail.com', 1),
('suresh@gmail.com', 2),
('rakesh@gmail.com', 3),
('ritesh@gmail.com', 4),
('saurabh@gmail.com', 5),
('harish@gmail.com', 6),
('harsh@gmail.com', 7),
('rohit@gmail.com', 8),
('rohan@gmail.com', 9),
('rajesh@gmail.com', 10);

-- Inserting data into Diagnose table
INSERT INTO Diagnose(appt, doctor, diagnosis, prescription)
VALUES
(1, 'drrohit@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(2, 'drramesh@gmail.com', 'Muscle soreness', 'Stretch morning/night'),
(3, 'drrohit@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(4, 'drramesh@gmail.com', 'Vitamin Deficiency', 'Good Diet'),
(5, 'drrohit@gmail.com', 'Fever', 'Paracetamol'),
(6, 'drramesh@gmail.com', 'Covid', 'Quarantine and Rest'),
(7, 'drramesh@gmail.com', 'Covid', 'Quarantine and Rest'),
(8, 'drrohit@gmail.com', 'Breathing Difficulty', 'Hospitalization'),
(9, 'drramesh@gmail.com', 'Fever', 'Paracetamol'),
(10, 'drramesh@gmail.com', 'Stomach Infection', 'Antibiotics');

-- Inserting data into DocsHaveSchedules table
-- Inserting data into DocsHaveSchedules table
INSERT INTO DocsHaveSchedules(sched, doctor)
VALUES
(1, 'drrohit@gmail.com'),
(2, 'drramesh@gmail.com');



-- Inserting data into DoctorViewsHistory table
INSERT INTO DoctorViewsHistory(history, doctor)
VALUES
(1, 'drrohit@gmail.com'),
(2, 'drramesh@gmail.com'),
(3, 'drramesh@gmail.com'),
(4, 'drrohit@gmail.com'),
(5, 'drrohit@gmail.com'),
(6, 'drrohit@gmail.com'),
(7, 'drrohit@gmail.com'),
(8, 'drramesh@gmail.com'),
(9, 'drramesh@gmail.com'),
(10, 'drramesh@gmail.com');


-- use hms;
-- SELECT *
-- FROM DocsHaveSchedules AS dhs
-- JOIN Schedule AS s ON dhs.sched = s.id
-- WHERE doctor = 'drrohit@gmail.com';
