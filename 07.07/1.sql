CREATE TABLE marks (
    mark_id        SERIAL NOT NULL,
    student_name    TEXT NOT NULL,
    student_surname TEXT NOT NULL,
    grade           TEXT NOT NULL,
    subject         TEXT NOT NULL,
    lesson_date     DATE NOT NULL DEFAULT current_date,
    mark            INTEGER NOT NULL,

    PRIMARY KEY(mark_id),
    CHECK(subject IN ('maths', 'physics', 'informatics')),
    CHECK(lesson_date <= current_date),
    CHECK(mark BETWEEN 2 AND 5)
);
