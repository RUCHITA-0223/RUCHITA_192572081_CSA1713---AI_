
% Student-Teacher-Subject Code Database

student_teacher_sub(ravi, kumar, cs101).
student_teacher_sub(priya, priya_teacher, cs102).
student_teacher_sub(ajay, mohan, cs103).
student_teacher_sub(divya, kumar, cs104).
student_teacher_sub(rahul, mohan, cs101).

% Display all records
show_all :-
    student_teacher_sub(Student, Teacher, SubCode),
    write('Student: '),
    write(Student),
    write(', Teacher: '),
    write(Teacher),
    write(', Subject Code: '),
    write(SubCode),
    nl,
    fail.
show_all.
