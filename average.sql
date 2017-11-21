DECLARE

s_stud student%rowtype;

BEGIN

SELECT * INTO s_stud
FROM student
WHERE street='Route 101';
dbms_output.put_line('Number of students selected: '||sql%rowcount);

END;
/