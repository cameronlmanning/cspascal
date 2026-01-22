Program Graphics;
uses Graph, Crt;
CONST
  MAXX = 640;
  MAXY = 480;
TYPE
  Triangle = ARRAY[1..4] OF PointType;
var
  Gd, Gm: Integer;
  c: Char;
  x, y, i, p : Integer;
  color, MyColor : WORD;
  MyTri : Triangle;
  MyPt : PointType;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'C:\DOS\TP7\BGI');
  SetColor(Red);
  Color := GetMaxColor;
  Randomize;
  Repeat
    p := Random(100);
    FOR i := 1 TO 3 DO
    BEGIN
      IF p < 5 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2);
        MyTri[i].Y := Random(MAXY DIV 2);
      END
      ELSE IF p < 15 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2) + MAXX DIV 2;
        MyTri[i].Y := Random(MAXY DIV 2);
      END;
      ELSE IF p < 40 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2);
        MyTri[i].Y := Random(MAXY DIV 2) + MAXY DIV 2;
      END
      ELSE
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2) + MAXX DIV 2;
        MyTri[i].Y := Random(MAXY DIV 2) + MAXY DIV 2;
      END;
      MyTri[] := MyTri[1];
      MyColor := Random(Color);
      SetColor(MyColor);
      SetFillStyle(SolidFill, MyColor);
      FillPoly(4, MyTri);
    UNTIL KeyPressed;
    x := 0;
    y := 0;
     if  KeyPressed then
   { begin
      c := ReadKey;
      ClearDevice;
      if c = 'w' then y := y - 5;
      if c = 's' then y := y + 5;
      if c = 'a' then x := x - 5;
      if c = 'd' then x := x + 5;
      Circle(x + 150, y + 150, 50);
    end;
  Until c = 'q';
  CloseGraph;
end.         }