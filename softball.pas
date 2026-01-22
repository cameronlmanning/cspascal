PROGRAM softballHeights(input, output);
CONST
  MAXTEAM = 22;
TYPE
  List = ARRAY[1..MAXTEAM] of INTEGER;
VAR
  heights : List;
  teamNum : INTEGER;
  average : REAL;
  i : INTEGER;

FUNCTION AverageHeight(heightlist : List; num : INTEGER) : REAL;
  VAR sum, i : INTEGER;
  BEGIN
    sum := 0;
    FOR i := 1 TO num DO sum := sum + heightList[i];
    AverageHeight := sum/num;
  END;

BEGIN
  Writeln('How many players are on the team?: ');
  Readln(teamNum);
  FOR i := 1 TO teamNum DO
  BEGIN
    Writeln('What is player #', i, ' height?: ');
    Readln(heights[i]);
  END;
  sum := 0;
  FOR i := 1 TO teamNum DO sum := sum + heights[i];
  Writeln('Sum = ', sum);
  average := sum/teamNum;
  Writeln('The teams average height is ', average);
  Readln(Average);
END.