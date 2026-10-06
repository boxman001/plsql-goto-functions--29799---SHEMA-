SET SERVEROUTPUT ON;

ACCEPT p_number NUMBER PROMPT 'Enter a number: '

DECLARE
    v_number NUMBER := &p_number;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    ELSIF v_number < 0 THEN
        GOTO negative_number;
    ELSE
        GOTO zero_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is POSITIVE.');
    GOTO finished;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('The number is NEGATIVE.');
    GOTO finished;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('The number is ZERO.');

    <<finished>>
    DBMS_OUTPUT.PUT_LINE('Number classification completed.');
END;
/