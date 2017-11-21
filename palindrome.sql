DECLARE

g varchar2(20);
r varchar2(20);
i number(4);

BEGIN
dbms_output.put_line('Enter a number');
g:='&g';
dbms_output.put_line('The number you entered is:');
dbms_output.put_line(g);

FOR i IN REVERSE 1.. length(g) LOOP
r:=r || substr(g,i,1);
END LOOP;

dbms_output.put_line('Reversed Number is ' || r);

IF r=g THEN
dbms_output.put_line('Number is Palindrome');

ELSE
dbms_output.put_line('Number is not Palindrome');
END IF;

END;
/
