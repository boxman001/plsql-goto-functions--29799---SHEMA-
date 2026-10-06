SET SERVEROUTPUT ON;

DECLARE
    v_employee_id employees.employee_id%TYPE := 101;
    v_salary      employees.salary%TYPE;
    v_name        VARCHAR2(100);
BEGIN
    SELECT first_name || ' ' || last_name, salary
    INTO v_name, v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

    IF v_salary >= 1000000 THEN
        GOTO high_salary;

    ELSIF v_salary >= 600000 THEN
        GOTO average_salary;

    ELSE
        GOTO low_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: HIGH SALARY');
    GOTO finished;

    <<average_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: AVERAGE SALARY');
    GOTO finished;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: LOW SALARY');

    <<finished>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/