DELIMITER $

CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(19,2)
DETERMINISTIC
BEGIN
	DECLARE average_grade DECIMAL(19,2);
    SET average_grade := (SELECT AVG(sc.grade)
    FROM courses c 
    JOIN students_courses sc ON sc.course_id = c.id
    JOIN students s ON sc.student_id = s.id
    WHERE s.is_graduated = 1 AND c.name = course_name
    GROUP BY c.name);
    RETURN average_grade;
END $

DELIMITER ;

 -- SELECT AVG(sc.grade)
--     FROM courses c 
--     JOIN students_courses sc ON sc.course_id = c.id
--     JOIN students s ON sc.student_id = s.id
--     WHERE s.is_graduated = 1
--     GROUP BY c.name;