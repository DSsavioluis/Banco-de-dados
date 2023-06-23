show databases;
use prova_bd;

# Item A
SELECT COUNT(country_name) AS total
FROM country;

# Item B
SELECT *
FROM ranking_system;

# Item C
SELECT COUNT(DISTINCT university_name) AS total_universidades
FROM university;

# Item D
SELECT AVG(student_staff_ratio) AS media_student_staff_ratio
FROM university_year;

# Item E
SELECT
    CONSTRAINT_NAME,
    COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'prova_bd';
