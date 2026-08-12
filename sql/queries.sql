-- Database and table setup
CREATE DATABASE student_records;
USE student_records;

CREATE TABLE RESTART (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    RestartCity VARCHAR(100),
    GraduationDate DATETIME
);

CREATE TABLE CLOUD_PRACTITIONER (
    StudentID INT,
    CertificationDate DATE,
    FOREIGN KEY (StudentID) REFERENCES RESTART(StudentID)
);

-- Sample data queries
SELECT * FROM RESTART;
SELECT * FROM CLOUD_PRACTITIONER;

-- Join query: combine student info with certification records
SELECT
    R.StudentID,
    R.StudentName,
    C.CertificationDate
FROM RESTART R
INNER JOIN CLOUD_PRACTITIONER C
    ON R.StudentID = C.StudentID;
