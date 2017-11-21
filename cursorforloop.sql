DECLARE
CURSOR s_detail IS
SELECT name, street, city, course_name, marks,
CASE WHEN marks <= 100 AND marks >= 90 THEN 'S'
     WHEN marks < 90 AND marks >= 80 THEN 'A'
     WHEN marks < 80 AND marks >= 70 THEN 'B'
     WHEN marks < 70 AND marks >= 60 THEN 'C'
     WHEN marks < 60 AND marks >= 50 THEN 'D'
     WHEN marks < 50 AND marks >= 40 THEN 'E'
     ELSE 'F' END AS grade
FROM student;
BEGIN
dbms_output.put_line(rpad('Name',15)||rpad('Street',15)||rpad('City',15)||rpad('Course',20)||rpad('Marks',7)||rpad('Grade',5));
dbms_output.put_line(rpad('-',15,'-')||rpad('-',15,'-')||rpad('-',15,'-')||rpad('-',20,'-')||rpad('-',7,'-')||rpad('-',5,'-'));
FOR row IN s_detail
LOOP
dbms_output.put_line(rpad(row.name,15)||rpad(row.street,15)||rpad(row.city,15)||rpad(row.course_name,20)||rpad(row.marks,7)||rpad(row.grade,5));		
END LOOP;
END;
/

