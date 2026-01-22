PROGRAM proc;
VAR
  m, n : INTEGER;
FUNCTION fplus(num : INTEGER) : INTEGER;
  BEGIN
    num := 8;
    fplus1 := num + 1;
  END;
PROCEDURE pplus1(VAR num : INTEGER);
  BEGIN
    n := n + 1;
  END;
BEGIN
  n := 5;
  m := fplus1(n);
   Writeln('m = ', m);
   Writeln('n = ', n);
   pplus1(n);
   Writeln('n = ', n);
   Readln(n);
END.