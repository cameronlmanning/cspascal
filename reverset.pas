PROGRAM testreverse;
USES csp;
VAR
s : STRING;
BEGIN
Writeln('The reverse of hello is ', Reverse('hello'));
Writeln('The reverse of McIntosh is ', Reverse('McIntosh'));
Writeln('The reverse of wow is ', Reverse('wow'));
readln(s);
END.