\# Reflection — Assignment III



\*\*Student Name:\*\* Shema  

\*\*Student ID:\*\* 29799



\## Introduction



This assignment helped me understand how PL/SQL GOTO statements and user-defined

functions can be used to solve database programming problems. I completed the

tasks using Oracle Database and SQL Developer.



\## Part A — GOTO Statements



In Part A, I used GOTO statements to control the flow of PL/SQL programs. I

learned how labels work and how a GOTO statement can transfer execution to a

specific labelled section of a PL/SQL block.



I also learned that GOTO statements have restrictions. In particular, Oracle

does not allow a GOTO statement to jump into certain restricted sections of a

PL/SQL block. The illegal GOTO example demonstrated this restriction and the

corrected version showed how to place labels in valid locations.



The final task showed that structured IF/ELSIF/ELSE statements can often make

the program easier to understand than using GOTO statements.



\## Part B — Functions



Part B helped me understand how reusable PL/SQL functions can simplify

database programming. I created functions for annual salary, years of

service, tax calculation, and department name.



I also learned how functions can be called directly from SQL statements. The

B5 query demonstrated how multiple functions can be used together with

employee table data to produce useful results.



Functions make code more reusable because the same calculation can be called

from different PL/SQL blocks or SQL queries without rewriting the logic.



\## Part C — Payroll Validation



The payroll validation task combined database queries, functions, conditions,

and exception handling.



The function checks whether an employee exists, whether the gross salary

matches the employee's salary, whether tax is valid, and whether the net

salary calculation is correct.



Testing the function with valid and invalid values helped me understand the

importance of validation when working with payroll data.



\## Challenges



One of the challenges was understanding the restrictions on GOTO statements

and correcting an illegal GOTO. Another challenge was creating functions with

the correct privileges and testing them against the database tables.



Using SQL Developer made it easier to execute the PL/SQL blocks, inspect the

results, and identify errors during development.



\## What I Learned



Through this assignment, I improved my understanding of:



\- PL/SQL control flow.

\- GOTO statements and labels.

\- Restrictions on GOTO statements.

\- Creating user-defined functions.

\- Using functions inside SQL SELECT statements.

\- Exception handling.

\- Validating database information.

\- Testing PL/SQL programs.

\- Organizing database coursework using Git and GitHub.



\## Conclusion



Overall, the assignment improved my practical PL/SQL skills. I learned that

although GOTO can be used to control program flow, structured programming

using conditions is often clearer and easier to maintain.



I also learned that functions are useful for creating reusable database

logic and can be integrated directly into SQL queries. The combination of

PL/SQL, SQL Developer, Git, and GitHub provided practical experience in

developing, testing, and documenting database programs.

