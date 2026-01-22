PROGRAM concattest;
USES CSP;
VAR
  s : STRING;
BEGIN
  Writeln('Concat(hello , world) = ', Concat('hello ', 'world'));
  Writeln('Concat(cup,cake) = ', Concat('cup', 'cake'));
  Writeln('Concat(top, hat) = ', Concat('top ', 'hat'));
  Writeln('Concat(McIntosh, High School) = ', Concat('McIntosh ', 'High School'));
  Writeln('Concat(Booth Middle,School) = ', Concat('Booth Middle', 'School'));
  Readln(s);
END.