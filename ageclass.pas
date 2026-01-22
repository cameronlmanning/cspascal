PROGRAM AgeClassifier(Input, Output);
VAR
  age : INTEGER;
  class : CHAR;
PROCEDURE PrintClass(class : CHAR);
  BEGIN
  IF Class = 'a' THEN
  Writeln('You are an adult')
  ELSE IF Class= 't'
  THEN Writeln('You are a teenager')
  ELSE Writeln('You are a child');
  END;
FUNCTION ClassifyAGE(age : INTEGER) : CHAR;
  BEGIN
  IF (age >=  20) THEN
  ClassifyAge := 'a'
  ELSE IF (age <= 12) THEN
  ClassifyAge := 'c'
  ELSE ClassifyAge := 't'
  END;

FUNCTION GetAge : INTEGER;
  VAR
    age : INTEGER;
  BEGIN
  REPEAT
  Write('Enter your age: ');
  Read(age);
  IF (age < 0) OR (age > 120) THEN Writeln('That age is out of range');
  UNTIL (age >= 0)  AND (age <= 120);
  GETAGE := age;
  END;

BEGIN
  age := GetAge;
  Class := ClassifyAge(age);
  PrintClass(class);
  Read(age);
END.