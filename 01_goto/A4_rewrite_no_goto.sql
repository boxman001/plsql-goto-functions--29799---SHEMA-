SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 10;
BEGIN
    IF v_number > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number is positive.');

    ELSIF v_number < 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number is negative.');

    ELSE
        DBMS_OUTPUT.PUT_LINE('The number is zero.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Program completed.');
END;
/