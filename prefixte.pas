PROGRAM prefixtest;
USES csp;
VAR
s : STRING;
BEGIN
Writeln('The first 6 letters of house are ', prefix('house', 6));
Readln(s);
END.