PROGRAM Conditionals;
VAR
  a, b, i : INTEGER;
BEGIN
  Randomize;
  b := random(10);

  REPEAT
  Write('Guess the number between 0 and 10: ');
  Readln(a);

  IF a < b THEN Writeln('Too low')
  ELSE IF a > b THEN Writeln('Too high')
  ELSE
  BEGIN
    Writeln ('That is correct');
  END;
  UNTIL a = b;
 Writeln('Thanks for playing');
  Readln(a);
END.