PROGRAM graphics;
USES Graph;
VAR
  gd, gm : INTEGER;
BEGIN
  gd := Detect; { Detect is a function with 0 inputs, no parenthesis }
  InitGraph(gd, gm, 'C:/TPWDB\BGI');

  SetColor(4);
  Line(200, 200, 300, 100);
  Line(300, 100, 400, 200);

  SetColor(8);
  Rectangle(400, 400, 200, 200);
  SetColor(9);
  Rectangle(330, 400, 265, 300);

  Readln(gd);
  CloseGraph; { CloseGraph is a procedure with 0 inputs, no parenthesis }
END.