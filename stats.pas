PROGRAM stats;
VAR
  myList : LIST;
  n : INTEGER;
BEGIN
  BubbleSort(myList);
  PrintList(myList);
  Writeln('The average  = ', Average(myLIst):3:2);
  Writeln('What number are you looking for?');
  Readln(n);
  Writeln('LinearSearch');
  IF LinearSearch(myList, n) THEN Wrtieln('Found it');
  ELSE Writeln('Not there');
  Writeln('Binary search');
  IF BinarySearch(myList, n) THEN Writeln('Fount it');
  ELSE Writeln('Not there');
  Readln;
END;