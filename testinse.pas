PROGRAM testlist;
USES csp;
VAR
  myList : List;
BEGIN
  Append(myList, 8);
  Append(myList, 10);
  Append(myList, 12);
  Append(myList, 7);
  Insert(myList, 3, 100);
  Remove(myList, 3);
  PrintList(myList);
  Writeln('The sum of the list is ', sum(myList));
  Writeln('The list average is ', average(myList));
  readln;
END.