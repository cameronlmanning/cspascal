PROGRAM FindMedian;
USES CSP;
VAR
  myList : LIST;
  n : INTEGER;
BEGIN
 { REPEAT
    Writeln('How many random items for your list?');
    Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
      Writeln('Please enter a number greater than 0 and less than ', SIZE + 1);
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  BubbleSort(myList);
  PrintList(myList);
  Writeln('Average of myList = ', average(myList):3:2);
  Writeln('The median of myList = ', median(myList):3:2);}
  Append(myList, 5);
  Append(myList, 4);
  Append(myList, 3);
  PrintList(myList);
  IF IsIncreasing(myList) THEN writeln('is increasing')
  ELSE writeln('not increasing');
  Readln;
END.