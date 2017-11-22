DECLARE
a number(3);
b number(3);
c number(3);
avrg number(5,2);
BEGIN
dbms_output.put_line('Enter 3 numbers');
a:=&a;
b:=&b;
c:=&c;
avrg:=((a+b+c)/3);
dbms_output.put_line('Average of a, b, c is: '||avrg);
END;
/
