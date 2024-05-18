DECLARE
    x NUMBER;
BEGIN
    dbms_output.put_line(SOUNDEX('x'));
    dbms_output.put_line(SOUNDEX('h'));
    dbms_output.put_line(TO_NUMBER('576'));
    dbms_output.put_line(TO_NUMBER('99'));
    x := 2/0;
    dbms_output.put_line('still executing?');
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        dbms_output.put_line('Division by zero occurred at line: ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
END;
/
