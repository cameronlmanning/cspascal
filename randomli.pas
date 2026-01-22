PROGRAM TestRandom;
USES csp;

VAR
  myList : LIST;
  n : INTEGER;

FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
  i, min : INTEGER;
BEGIN
  min := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] < min THEN min := aList[i];
  smallest := min;
END;

FUNCTION Largest(aList : LIST) : INTEGER;
VAR
  i, max : INTEGER;
BEGIN
  max := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] > max THEN max := aList[i];
  largest := max
END;

BEGIN
  REPEAT
    Writeln('How many elements do you want to put into random list?');
    Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
      Writeln('Pick a number between 1 and ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  PrintList(myList);
  Writeln('The mininum of the list is ', smallest(myList));
  Writeln('The maxinum of the list is ', largest(myList));
  Readln;
END.