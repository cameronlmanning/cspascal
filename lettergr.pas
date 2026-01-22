PROGRAM LetterGradeClassify;
VAR
  Grade : INTEGER;
  LETTERGRADE : CHAR;
PROCEDURE PrintLetterGrade(LetterGrade : CHAR);
  BEGIN
  IF LetterGrade = 'a' THEN
  Writeln('Your grade in an A')
  ELSE IF LetterGrade = 'b'
  THEN Writeln('Your grade in a B')
  ELSE IF LetterGrade = 'c'
  THEN Writeln('Your grade is a C')
  ELSE IF LetterGrade = 'd'
  THEN Writeln('Your grade is a D')
  ELSE Writeln('Your grade is an F');
  END;
FUNCTION ClassifyGrade(Grade : INTEGER) : CHAR;
  BEGIN
  IF (Grade >= 90) THEN ClassifyGrade := 'a'
  ELSE IF (Grade >= 80) THEN ClassifyGrade := 'b'
  ELSE IF (Grade >= 70) THEN ClassifyGrade := 'c'
  ELSE IF (Grade >= 60) THEN ClassifyGrade := 'd'
  ELSE ClassifyGrade := 'f'
  END;
FUNCTION GetGrade : INTEGER;
VAR
  Grade : INTEGER;
  BEGIN
  REPEAT
  Write('Please enter your numeric grade ');
  Read(grade);
  IF (grade < 0) OR (grade > 100)
  THEN Writeln('That age is out of range');
  UNTIL (grade >=  0) AND (grade <= 100);
  GETGRADE := grade;
  END;

BEGIN
  Grade := GetGrade;
  LetterGrade := ClassifyGrade(grade);
  PrintLetterGrade(lettergrade);
  Read(grade);
END.