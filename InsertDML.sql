INSERT INTO Patient(email,password,name,address,gender)
VALUES
('ramesh@gmail.com','password123','Ramesh','Tamil Nadu', 'male'),
('suresh@gmail.com','password123','Suresh','Karnataka', 'male'),
('rakesh@gmail.com','password123','Rakesh','Gujarat', 'male')
('ritesh@gmail.com','password123','Ritesh','Gujarat', 'male')
('saurabh@gmail.com','password123','Saurabh','Gujarat', 'male')
('harish@gmail.com','password123','Harish','Gujarat', 'male')
('harsh@gmail.com','password123','Harsh','Gujarat', 'male')
('rohit@gmail.com','password123','Rohit','Gujarat', 'male')
('rohan@gmail.com','password123','Rohan','Gujarat', 'male')
('rajesh@gmail.com','password123','Rajesh','Gujarat', 'male')
;

INSERT INTO MedicalHistory(id,date,conditions,surgeries,medication)
VALUES
(1,'19-01-14','Pain in abdomen','Heart Surgery','Crocin'),
(2,'19-01-14','Frequent Indigestion','none','none'),
(3,'19-01-14','Body Pain','none','Iodex')
(4,'19-01-14','Covid','none','none'),
(5,'19-01-14','Pain in abdomen','Heart Surgery','Crocin'),
(6,'19-01-15','Body Pain','none','Crocin Disprin Painkiller')
(7,'19-01-15','Covid','none','none'),
(8,'19-01-15','Body Pain','none','Crocin Disprin Painkiller')
(9,'19-01-15','Frequent Indigestion','none','none'),
(10,'19-01-15','Covid','none','none'),
;

INSERT INTO Doctor(email, gender, password, name)
VALUES
('drrohit@gmail.com', 'male', 'password123', 'Dr. Rohit Anthony'),
('drramesh@gmail.com', 'male', 'password123', 'Dr. Ramesh Singh')
;

INSERT INTO Appointment(id,date,starttime,endtime,status)
VALUES
(1, '19-01-15', '09:00', '10:00', 'Done'),
(2, '19-01-16', '10:00', '11:00', 'Done'),
(3, '19-01-18', '14:00', '15:00', 'Done')
(4, '19-01-18', '14:00', '15:15', 'Done')
(5, '19-01-18', '14:00', '15:30', 'Done')
(6, '19-01-18', '14:00', '15:45', 'Done')
(7, '19-01-18', '14:00', '18:00', 'Done')
(8, '19-01-18', '14:00', '15:15', 'Pending')
(9, '19-01-18', '14:00', '15:30', 'Pending')
(10, '19-01-18', '14:00', '15:45', 'Pending')
;

INSERT INTO PatientsAttendAppointments(patient,appt,concerns,symptoms)
VALUES
('ramesh@gmail.com',1, 'none', 'itchy throat'),
('suresh@gmail.com',2, 'infection', 'fever'),
('rakesh@gmail.com',3, 'nausea', 'fever'),
('ritesh@gmail.com',4,'Infection'),
('saurabh@gmail.com',5,'password123','Saurabh','Gujarat', 'male'),
('harish@gmail.com',6,'none', 'itchy throat'),
('harsh@gmail.com',7,'Body Pain','Covid'),
('rohit@gmail.com',8,'Covid'),
('rohan@gmail.com',9,'Covid'),
('rajesh@gmail.com',10,'Stomach Ache','Body Pain','Head Ache'),
;

INSERT INTO Schedule(id,starttime,endtime,breaktime,day)
VALUES
(001,'09:00','17:00','12:00','Tuesday'),
(001,'09:00','17:00','12:00','Friday'),
(001,'09:00','17:00','12:00','Saturday'),
(001,'09:00','17:00','12:00','Sunday'),
(002,'09:00','17:00','12:00','Wednesday'),
(002,'09:00','17:00','12:00','Friday')
;

INSERT INTO PatientsFillHistory(patient,history)
VALUES
('ramesh@gmail.com', 1),
('suresh@gmail.com', 2),
('rakesh@gmail.com', 3),
('ritesh@gmail.com',4),
('saurabh@gmail.com',5),
('harish@gmail.com',6),
('harsh@gmail.com',7),
('rohit@gmail.com',8),
('rohan@gmail.com',9),
('rajesh@gmail.com',10),
;

INSERT INTO Diagnose(appt,doctor,diagnosis,prescription)
VALUES
(1,'drrohit@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(2,'drramesh@gmail.com', 'Muscle soreness', 'Stretch morning/night'),
(3,'drrohit@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(4,'drramesh@gmail.com', 'Vitamin Deficiency', 'Good Diet')
(5,'drrohit@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(6,'drramesh@gmail.com', 'Vitamin Deficiency', 'Good Diet')
(7,'drramesh@gmail.com', 'Vitamin Deficiency', 'Good Diet')
(8,'drrohit@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(9,'drramesh@gmail.com', 'Vitamin Deficiency', 'Good Diet')
(10,'drrohit@gmail.com', 'Bloating', 'Ibuprofen as needed'),
;

INSERT INTO DocsHaveSchedules(sched,doctor)
VALUES
(001,'drrohit@gmail.com'),
(002,'drramesh@gmail.com')
(003,'drrohit@gmail.com'),
(004,'drrohit@gmail.com'),
(005,'drramesh@gmail.com')
(006,'drrohit@gmail.com'),
(007,'drramesh@gmail.com')
(008,'drramesh@gmail.com')
(009,'drramesh@gmail.com')
(010,'drrohit@gmail.com'),
;

INSERT INTO DoctorViewsHistory(history,doctor)
VALUES
(1,'drrohit@gmail.com'),
(2,'drramesh@gmail.com'),
(3,'drramesh@gmail.com')
(4,'drrohit@gmail.com'),
(5,'drrohit@gmail.com'),
(6,'drrohit@gmail.com'),
(7,'drrohit@gmail.com'),
(8,'drramesh@gmail.com')
(9,'drramesh@gmail.com')
(10,'drramesh@gmail.com')
;
