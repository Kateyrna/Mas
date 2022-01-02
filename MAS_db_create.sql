CREATE SCHEMA MAS;

GO

-- tables
-- Table: User
CREATE TABLE MAS.User (
    IdUser int  NOT NULL IDENTITY,
    Username nvarchar(50)  NOT NULL,
    Password nvarchar(100)  NOT NULL,
    CONSTRAINT User_pk PRIMARY KEY  (IdUser)
);

-- Table: Account
CREATE TABLE MAS.Account (
    IdAccount int  NOT NULL IDENTITY,
    AccountUserId int,
    AccountName nvarchar(100)  NOT NULL,
    AccountCreatedAt datetime  NOT NULL,
    AccountType int  NOT NULL,
    CONSTRAINT Account_pk PRIMARY KEY  (IdAccount)
);

-- Table: Appointment
CREATE TABLE MAS.Appointment (
    IdAppointment int  NOT NULL IDENTITY,
    AppointmentPatientId int NOT NULL,
    AppointmentSecretaryId int  NOT NULL,
    AppointmentVisitDate date  NOT NULL,
    AppointmentVisitSlot int  NOT NULL,
    AppointmentCreatedAt datetime  NOT NULL,
    CONSTRAINT Appointment_pk PRIMARY KEY  (IdAppointment)
);

-- Table: Visit
CREATE TABLE MAS.Visit (
    IdVisit int  NOT NULL IDENTITY,
    VisitAppointmentId int NOT NULL,
    VisitDoctorId int NOT NULL,
    VisitReason nvarchar(200) NOT NULL,
    VisitDiagnosis nvarchar(200) NOT NULL,
    VisitNotes nvarchar(200),
    VisitDate date NOT NULL,
    CONSTRAINT Visit_pk PRIMARY KEY  (IdVisit)
);

-- Table: Prescription
CREATE TABLE MAS.Prescription (
    IdPrescription int  NOT NULL IDENTITY,
    PrescriptionAppointmentId int NOT NULL,
    PrescriptionDoctorId int NOT NULL,
    PrescriptionMedication nvarchar (50),
    PrescriptionStrength nvarchar (50),
    PrescriptionAmount nvarchar (50),
    PrescriptionReason nvarchar (100),
    PrescriptionRoute nvarchar (50),
    PrescriptionFrequency nvarchar (50),
    PrescriptionDispenceAmount nvarchar (50),
    PrescriptionRefill nvarchar (50),
    PrescriptionIssueDate datetime,
    CONSTRAINT Prescription_pk PRIMARY KEY  (IdPrescription)
);

-- End of file.