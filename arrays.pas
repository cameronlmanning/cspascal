PROGRAM arrays;
TYPE
  list = array [1..10] of INTEGER;

VAR
  max, min, i : INTEGER;
  myList : List;
  FUNCTION Listmin(alist : list) : INTEGER;
  Var min, i : INTEGER;
  BEGIN
  min := aList[1];
  for i := 2 to 10 do
  if alist[i] < min then min := aList[i];
  Listmin := min
  END;
BEGIN
  Randomize;
  FOR i := 1 TO 10 DO
   myList[i] := Random(50);

   Max := myList[1];
   min := myList[1];

   FOR i := 2 TO 10 Do
   Begin
     if mylist[i] > max then max := mylist[i];
   Write(myList[i], ' ');
   End;
   Writeln(' ');
   Writeln('Max of list = ', max);
   Writeln('Min of list = ', Listmin(mylist) );

   Readln(i)

END.