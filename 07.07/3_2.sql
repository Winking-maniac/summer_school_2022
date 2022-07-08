UPDATE marks
SET mark = 4
WHERE lesson_date = '2022-06-30' AND subject = 'physics' AND (mark = 2 OR mark = 3);
