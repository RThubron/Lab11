-- outputs the title and duedate for course COMP1234
select title, due_date
from assignments
where course_id like 'COMP1234%'

-- finds the assignment with the earliest duedate
select min(due_date) from assignments

-- finds the assignment with the latest duedate
select max(due_date) from assignments

-- outputs the title and course id for any assignments due on '2024-10-08'
select title, course_id
from assignments
where due_date = '2024-10-08'

-- outputs the title and duedate for all assignments due in october
select title, due_date
from assignments
where due_date like '2024-10%'

-- outputs the duedate of the most recently completed assignment
select * from assignments
where status = 'Completed'
order by due_date
