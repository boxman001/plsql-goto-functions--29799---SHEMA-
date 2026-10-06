-- Assignment III - Database Setup
-- Student: Shema
-- Student ID: 29799

-- Departments
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

-- Employees
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    department_id NUMBER,
    salary NUMBER(12,2),
    hire_date DATE,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- Payroll
CREATE TABLE payroll (
    payroll_id NUMBER PRIMARY KEY,
    employee_id NUMBER NOT NULL,
    gross_salary NUMBER(12,2),
    tax NUMBER(12,2),
    net_salary NUMBER(12,2),
    payroll_date DATE,
    CONSTRAINT fk_payroll_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

-- Departments data
INSERT INTO departments VALUES (10, 'Human Resources');
INSERT INTO departments VALUES (20, 'Information Technology');
INSERT INTO departments VALUES (30, 'Finance');
INSERT INTO departments VALUES (40, 'Marketing');
INSERT INTO departments VALUES (50, 'Operations');

-- Employees data
INSERT INTO employees VALUES
(101, 'John', 'Doe', 20, 800000, DATE '2021-01-15');

INSERT INTO employees VALUES
(102, 'Alice', 'Smith', 10, 600000, DATE '2022-03-10');

INSERT INTO employees VALUES
(103, 'David', 'Brown', 30, 950000, DATE '2019-06-20');

INSERT INTO employees VALUES
(104, 'Mary', 'Jones', 40, 500000, DATE '2023-02-01');

INSERT INTO employees VALUES
(105, 'Peter', 'Wilson', 20, 1200000, DATE '2018-09-12');

-- Payroll data
INSERT INTO payroll VALUES
(1, 101, 800000, 80000, 720000, DATE '2026-09-30');

INSERT INTO payroll VALUES
(2, 102, 600000, 60000, 540000, DATE '2026-09-30');

INSERT INTO payroll VALUES
(3, 103, 950000, 95000, 855000, DATE '2026-09-30');

INSERT INTO payroll VALUES
(4, 104, 500000, 50000, 450000, DATE '2026-09-30');

INSERT INTO payroll VALUES
(5, 105, 1200000, 120000, 1080000, DATE '2026-09-30');

COMMIT;