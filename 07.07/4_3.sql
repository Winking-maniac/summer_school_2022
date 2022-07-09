SELECT student_name, student_surname, grade, subject, ROUND(avg(mark), 2) as average_mark
FROM marks
GROUP BY (student_name, student_surname, grade, subject)
ORDER BY student_name DESC, student_surname, subject DESC;
