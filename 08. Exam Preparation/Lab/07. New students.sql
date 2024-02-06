SELECT * FROM students;

SELECT CONCAT(first_name,' ',last_name) AS full_name, substring(email,2,10) AS username, reverse(phone) AS password
FROM students s
LEFT JOIN students_courses sc ON s.id = sc.student_id
WHERE sc.student_id IS NULL
ORDER BY password DESC;