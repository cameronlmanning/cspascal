PROGRAM TestSort;
USES csp;
VAR
  myList : LIST;
  i, j, temp : INTEGER;
BEGIN
  RandomList(myList, 3);
  Writeln('Your unsorted list is: ');
  PrintList(myList);
  Readln;
  BubbleSort(myList);
  Writeln('Your sorted list is: ');
  PrintList(myList);
  Readln;
END.