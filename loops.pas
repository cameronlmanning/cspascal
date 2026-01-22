PROGRAM loops;
CONST
  SIZE = 7;
TYPE
  GradeList = ARRAY[1..SIZE] of INTEGER;
VAR
  num : INTEGER;
  sum : INTEGER;
  i   : INTEGER;
  times : INTEGER;
  grades : GradeList;

FUNCTION GetNum(low, high : INTEGER) : INTEGER;
VAR
  num : INTEGER;
  FUNCTION VALID(n, low, high : INTEGER) : BOOLEAN;
  BEGIN
    Valid := (n >= low) AND (num <= high);
  END;

BEGIN
  REPEAT
  Writeln('Enter a number between ', low, ' and ', high, ': ');
  Read(num);
  IF NOT Valid(num, low, high)
  THEN Writeln('Try Again');
  UNTIL Valid(num, low, high);
  GetNum := num;
END;
BEGIN
  times := GetNum(4,SIZE);
  sum := 0;

  FOR i := 1 TO times DO
  BEGIN
    num := GetNum(0,100);
    grades[i] :=  num;
  END;

  FOR i := 1 to times DO Writeln('grades[', i, ']');

  FOR i := 1 to times DO sum := sum + grades[i];

  Writeln('Average = ', sum/times);
  Read(num);
END.