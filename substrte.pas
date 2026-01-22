PROGRAM substrtest;
USES csp;
VAR
s : INTEGER;
BEGIN
Writeln('The 3rd-4th letters of house are', substring('house', 3, 4));
Writeln('The 2nd-3rd letters of time are', substring('time', 2, 3));
Readln(s);
END.