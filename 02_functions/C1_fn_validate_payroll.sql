CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN employees.employee_id%TYPE,
    p_gross_salary IN NUMBER,
    p_tax IN NUMBER,
    p_net_salary IN NUMBER
)
RETURN VARCHAR2
IS
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    IF p_gross_salary <> v_salary THEN
        RETURN 'INVALID: Gross salary does not match employee salary';
    ELSIF p_tax < 0 THEN
        RETURN 'INVALID: Tax cannot be negative';
    ELSIF p_net_salary <> p_gross_salary - p_tax THEN
        RETURN 'INVALID: Net salary calculation is incorrect';
    ELSE
        RETURN 'VALID: Payroll record is correct';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee not found';
END;
/