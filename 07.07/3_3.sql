UPDATE marks
SET mark = 5
WHERE grade = '9В' AND lesson_date BETWEEN current_date - 2 AND current_date;
