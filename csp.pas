UNIT csp;

INTERFACE

{ List Data Type }
CONST
  SIZE = 225;

TYPE
  LIST = ARRAY[0..SIZE] of INTEGER;

{ List Functions/Procedures }
FUNCTION Length(aList : LIST) : INTEGER;
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
PROCEDURE PrintList(aList : LIST);
{ List Data Functions/Procedure }
FUNCTION Sum(aList : LIST) : INTEGER;
FUNCTION Average(aList : LIST) : REAL;
FUNCTION IsInList(aList : LIST; val : INTEGER) : BOOLEAN;
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
FUNCTION Smallest(aList : LIST) : INTEGER;
FUNCTION Largest(aList : LIST) : INTEGER;
PROCEDURE BubbleSort(VAR aList : LIST);
FUNCTION Median(aList : LIST) : REAL;
FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION BinarySearch(aList : LIST ; value : INTEGER) : BOOLEAN;
PROCEDURE Swap(VAR a, b : INTEGER);
PROCEDURE SelectionSort(VAR aList : LIST);
PROCEDURE InsertionSort(VAR aList : LIST);
{FUNCTION PosInList(aList : LIST; val : INTEGER) : INTEGER;}


{ String Functions }
FUNCTION Len(s : STRING) : INTEGER;
FUNCTION Concat(s1, s2 : STRING) : STRING;
FUNCTION Reverse(s : STRING) : STRING;
FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
FUNCTION Substring(s : STRING; start : INTEGER; n : INTEGER) : STRING;

IMPLEMENTATION

{ List Function/Procedures }
FUNCTION Length(aList : LIST) : INTEGER;
BEGIN
  Length  := aList[0];
END;

PROCEDURE Append(VAR aList : LIST; value : INTEGER);
BEGIN
  IF Length(aList) < SIZE THEN
  BEGIN
    aList[0] := Length(aList) + 1;
    aList[Length(aList)] := value;
  END;
END;

PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
VAR
index : INTEGER;
BEGIN
  IF i > Length(aList) THEN Append(aList, value)
  ELSE IF (i > 0) AND (Length(aList) < SIZE) THEN
  BEGIN
    aList[0] := Length(aList) + 1;
    FOR index := Length(aList) DOWNTO i + 1 DO
      aList[index] := aList[index - 1]
  END;
  aList[i] := value;
END;

PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF (i <= Length(aList)) AND (i > 0) THEN
    BEGIN
      aList[0] := Length(aList) - 1;
      FOR index := i TO Length(aList) DO
        aList[index] := aList[index + 1];
    END;
END;

PROCEDURE PrintList(aList : LIST);
VAR
  i : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) DO
    Writeln('The element at index ', i, ' = ', aList[i]);
END;

{ List Data Functions/Procedures }
FUNCTION Sum(aList : LIST) : INTEGER;
VAR
  total, i : INTEGER;
BEGIN
  total := 0;
  IF Length(aList) > 0 THEN
    FOR i := 1 TO Length(aList) DO
      total := aList[i] + total;
  sum := total
END;

FUNCTION Average(aList : LIST) : REAL;
BEGIN
  Average := Sum(aList) / Length(aList);
END;

FUNCTION IsInList(aList : LIST; val : INTEGER) : BOOLEAN;
VAR
  i : INTEGER;
  found : BOOLEAN;
BEGIN
  found := false;
  FOR i := 1 TO Length(aList) DO
    IF aList[i] = val THEN
    BEGIN
      found := true;
      break
    END;
  IsInList := found
END;

PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO n DO
    Append(aList, Random(100));
END;

FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
  i, min : INTEGER;
BEGIN
  min := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] < min THEN min := aList[i];
  smallest := min;
END;

FUNCTION Largest(aList : LIST) : INTEGER;
VAR
  i, max : INTEGER;
BEGIN
  max := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] > max THEN max := aList[i];
  largest := max
END;

PROCEDURE BubbleSort(VAR aList : LIST);
VAR
  i, j, temp : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
    FOR j := 1 TO Length(aList) - i DO
      IF aList[j] > aList[j + 1] THEN
        Swap(aList[j], aList[j + 1]);
END;

FUNCTION Median(aList : LIST) : REAL; {Requires a sorted list}
VAR
  med : REAL;
BEGIN
  IF Length(aList) MOD 2 = 1 THEN
    med := aList[Length(aList) DIV 2 + 1]
  ELSE
    med := (aList[Length(aList) DIV 2] + aList[Length(aList) DIV 2 + 1]) / 2;
    median := med;
END;

FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
VAR
increase : BOOLEAN;
i : INTEGER;
n : INTEGER;
BEGIN
  n := aList[1];
  increase := FALSE;
  FOR i := 2 TO Length(aList) - 1 DO
  BEGIN
    IF aList[i] >= aList[n] THEN increase := TRUE;
    n := aList[i]
  END;
  IsIncreasing := increase;
END;

FUNCTION BinarySearch(aList : LIST ; value : INTEGER) : BOOLEAN;
VAR
  i, l, r, mid, count : INTEGER;
  Found : BOOLEAN;
  BEGIN
  Found := FALSE;
  l := 1;
  r := Length(aList);
  count := 0;
  REPEAT
    count := count + 1;
    mid := (l + r) DIV 2;
    IF aList[mid] = value THEN BEGIN
      Found := TRUE;
      Break;
    END
    ELSE IF aList[mid] < value THEN l := mid + 1
    ELSE r := mid - 1;
  UNTIL l > r;
  Writeln('Number of Searches = ', count);
  BinarySearch := FOUND;
END;

FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  i, count : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  count := 0;
  FOR i := 1 TO Length(aLIst) DO
  BEGIN
    count := count + 1;
    IF aList[i] = value THEN
    BEGIN
      Found := TRUE;
      Break;
    END;
  END;
  Writeln('Number of searches = ', count);
  LinearSearch := Found;
END;

PROCEDURE Swap(VAR a, b : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp;
END;

PROCEDURE SelectionSort(VAR aList : LIST);
VAR
  i, j, min : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    min := i;
    FOR j := i + 1 TO Length(aList) DO
      IF aList[j] < aList[min] THEN min := j;
    Swap(aList[i], aList[min]);
  END;
END;

PROCEDURE InsertionSort(VAR aList : LIST);
VAR
  i, j : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    FOR j := i + 1 TO Length(aList) DO
    REPEAT
    IF aList[j] < aList[i] THEN Swap(aList[j], aList[i])
    ELSE Break;
    UNTIL aList[j] < aList[i];
END;

{ String Functions }
FUNCTION Len(s : STRING) : INTEGER;
BEGIN
  Len := ord(s[0]);
END;

FUNCTION Concat(s1, s2 : STRING) : STRING;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
  FOR i := 1 to len(s1) DO
    temps[i] := s1[i];
  FOR i := 1 TO len(s2) DO
    temps[len(s1) + i] := s2[i];
  temps[0] := chr(len(s1) + len(s2));
  Concat := temps;
END;

FUNCTION Reverse(s : STRING) : STRING;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
  FOR i := 1 TO len(s) DO
    temps[i] := s[(len(s) - i) + 1];
  temps[0] := chr(len(s));
  reverse := temps;
END;

FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
  IF n > len(s) THEN n := len(s);
  FOR i := 1 TO n DO
    temps[i] := s[i];
  temps[0] := chr(n);
  prefix := temps;
END;

FUNCTION Substring(s : STRING; start : INTEGER; n : INTEGER) : STRING;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
  IF n > len(s) - start + 1 THEN n := Len(s) - start + 1;
  IF len(s) < start THEN Substring := ''
  ELSE
  BEGIN
    FOR i := 1 TO n DO
      temps[i] := s[start + i - 1];
    temps[0] := chr(n);
    substring := temps;
  END;
END;

END.