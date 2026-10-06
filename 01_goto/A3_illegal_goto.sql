SET SERVEROUTPUT ON;

-- ILLEGAL GOTO EXAMPLE
-- This GOTO attempts to jump into an IF block.
-- Oracle rejects it with PLS-00375.

BEGIN
    GOTO inside_if;

    IF 1 = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF block');
    END IF;
END;
/

-- CORRECTED VERSION

DECLARE
    v_number NUMBER := 10;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    END IF;

    GOTO finished;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is positive.');

    <<finished>>
    DBMS_OUTPUT.PUT_LINE('Program completed.');
END;
/