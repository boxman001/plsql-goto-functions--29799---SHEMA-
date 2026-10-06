SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        fn_validate_payroll(101, 800000, 80000, 720000)
    );

    DBMS_OUTPUT.PUT_LINE(
        fn_validate_payroll(101, 800000, 80000, 700000)
    );

    DBMS_OUTPUT.PUT_LINE(
        fn_validate_payroll(999, 800000, 80000, 720000)
    );
END;
/