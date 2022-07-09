SELECT student_name, student_surname, grade, ROUND(AVG(average_marks.average_mark), 2) as average_mark
FROM
	(
    SELECT student_name, student_surname, grade, subject, ROUND(avg(mark), 0) as average_mark
	FROM marks
	GROUP BY (student_name, student_surname, grade, subject)
	) as average_marks
GROUP BY (student_name, student_surname, grade)
HAVING (MIN(average_marks.average_mark) >= 4);
