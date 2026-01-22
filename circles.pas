PROGRAM circles; { Draw 10 circles in random spots }
USES graph;
VAR
  x, y, gm, gd, r, i : INTEGER;
BEGIN
  Randomize; { Setup random number generator }
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI'); { Setup for graphics }

  { Screen size is 640x480 }

FOR i := 10 Downto 1 do
  Begin
  r := random(120);
  x := Random(640);
  y := Random(480);
  setcolor (random (16));
  Circle(X, Y, random(120) );
  End;

  Read(x);
  CloseGraph;
END.
