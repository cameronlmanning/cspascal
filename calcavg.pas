PROGRAM calculateavg(input, output);
CONST
MAXGRADES = 10;
TYPE
List = Array[1..MAXGRADES] OF REAL;
VAR
NumGrades : INTEGER;
grades : LIST;
i : INTEGER;
average : REAL;
Letter : CHAR;

FUNCTION GetAssignmentNum :
VAR num : INTEGER;
BEGIN
  REPEAT
  Writeln('How many assignments are in the class? ');
  Readln(assignmentNum);
  IF (num < 1) of (num > MAXGRADES) THEN
    Writeln('Try Again')
  UNTIL (num >= 1) AND (num <= MAXGRADES);
  GetAssingmentNum := num;
  END;

FUNCTION CalcAverage(gradeList : List, num : INTEGER) : REAL;
VAR
sum : REAL
i : INTEGER
  BEGIN
  sum := 0
  FOR i := 1 TO num DO sum := sum + gradeList[i];
  BEGIN
    Writeln('Enter grade for assignment #', i, ': ');
    Readln(grades[i]);
  END;
  average := CalcAverage(grades, numGradres);
  letter := ClassifyGrade(average);

  Writeln('Your grade average is ', average);
  Writeln(Your letter grades is ', letter);
  Read(i);

  NumGrades := GetAssignmentNum;

  FUNCTION ClassifyGrade(gradeavg : REAL) : CHAR
  BEGIN
  IF (average >= 90) THEN letter := 'A'
  ELSE IF (average >= 80) THEN letter := 'B'
  ELSE IF (average >= 70) THEN letter := 'C'
  ELSE IF (average >= 60) THEN letter := 'D'
  ELSE letter := 'F';
  END;
END.