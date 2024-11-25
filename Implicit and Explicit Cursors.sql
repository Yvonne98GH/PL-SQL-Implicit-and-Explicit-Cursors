--Create two fictional tables tables, employees and people, for use in the exercise
CREATE TABLE Employees(
Employee_ID NUMBER PRIMARY KEY,
First_Name VARCHAR2(20),
Last_Name VARCHAR2(25),
Email VARCHAR2(25),
Phone_Number VARCHAR2(20),
Hire_Date DATE,
Job_ID VARCHAR2(10),
Salary NUMBER,
Commission_PCT NUMBER,
Manager_ID NUMBER,
Department_ID NUMBER,
FOREIGN KEY (Department_ID) references Departments(Department_ID)
);

CREATE TABLE People (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    department_id NUMBER,
    salary NUMBER(10, 2),
    hire_date DATE);

--Populate the tables
INSERT INTO employees VALUES 
   (100, 'Steven', 'King', 'SKING', '515.123.4567' , TO_DATE('17-JUN-1987', 'dd-MON-yyyy'),
   'AD_PRES', 24000, NULL, NULL, 90);
   
INSERT INTO employees VALUES 
   (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TO_DATE('21-SEP-1989', 'dd-MON-yyyy'),
   'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES 
   (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', TO_DATE('13-JAN-1993', 'dd-MON-yyyy'),
   'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES 
   (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', TO_DATE('03-JAN-1990', 'dd-MON-yyyy'),
   'IT_PROG', 9000, NULL, 102, 60);
INSERT INTO employees VALUES 
   (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', TO_DATE('21-MAY-1991', 'dd-MON-yyyy'),
   'IT_PROG', 6000, NULL, 103, 60);
INSERT INTO employees VALUES 
   (105, 'David', 'Austin', 'DAUSTIN' , '590.423.4569', TO_DATE('25-JUN-1997', 'dd-MON-yyyy'),
   'IT_PROG', 4800, NULL, 103, 60);
INSERT INTO employees VALUES 
   (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', TO_DATE('05-FEB-1998', 'dd-MON-yyyy'),
   'IT_PROG', 4800, NULL, 103, 60);
INSERT INTO employees VALUES 
   (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', TO_DATE('07-FEB-1999', 'dd-MON-yyyy'),
   'IT_PROG' , 4200, NULL, 103, 60);
INSERT INTO employees VALUES 
   (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', TO_DATE('17-AUG-1994', 'dd-MON-yyyy'),
   'FI_MGR', 12000, NULL, 101, 100);
INSERT INTO employees VALUES 
   (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', TO_DATE('16-AUG-1994', 'dd-MON-yyyy'),
   'FI_ACCOUNT', 9000, NULL, 108, 100);
INSERT INTO employees VALUES 
   (110, 'John', 'Chen', 'JCHEN', '515.124.4269', TO_DATE('28-SEP-1997', 'dd-MON-yyyy'),
   'FI_ACCOUNT', 8200, NULL, 108, 100);
INSERT INTO employees VALUES
   (111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', TO_DATE('30-SEP-1997', 'dd-MON-yyyy'),
   'FI_ACCOUNT', 7700, NULL, 108, 100);
INSERT INTO employees VALUES 
   (112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', TO_DATE('07-MAR-1998', 'dd-MON-yyyy'),
   'FI_ACCOUNT', 7800, NULL, 108, 100);
INSERT INTO employees VALUES 
   (113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', TO_DATE('07-DEC-1999', 'dd-MON-yyyy'),
   'FI_ACCOUNT', 6900, NULL, 108, 100);
INSERT INTO employees VALUES 
   (114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', TO_DATE('07-DEC-1994', 'dd-MON-yyyy'),
   'PU_MAN', 11000, NULL, 100, 30);
INSERT INTO employees VALUES
   (115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', TO_DATE('18-MAY-1995', 'dd-MON-yyyy'),
   'PU_CLERK', 3100, NULL, 114, 30);
INSERT INTO employees VALUES
   (116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563' , TO_DATE('24-DEC-1997', 'dd-MON-yyyy'),
   'PU_CLERK', 2900, NULL, 114, 30);
INSERT INTO employees VALUES
   (117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', TO_DATE('24-JUL-1997', 'dd-MON-yyyy'),
   'PU_CLERK', 2800, NULL, 114, 30);
INSERT INTO employees VALUES
   (118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', TO_DATE('15-NOV-1998', 'dd-MON-yyyy'),
   'PU_CLERK', 2600, NULL, 114, 30);
INSERT INTO employees VALUES
   (119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', TO_DATE('10-AUG-1999', 'dd-MON-yyyy'),
   'PU_CLERK', 2500, NULL, 114, 30);
INSERT INTO employees VALUES
   (120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', TO_DATE('18-JUL-1996', 'dd-MON-yyyy'),
   'ST_MAN', 8000, NULL, 100, 50);
INSERT INTO employees VALUES
   (121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', TO_DATE('10-APR-1997', 'dd-MON-yyyy'),
   'ST_MAN' , 8200, NULL, 100, 50);
INSERT INTO employees VALUES
   (122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', TO_DATE('01-MAY-1995', 'dd-MON-yyyy'),
   'ST_MAN', 7900, NULL, 100, 50);
INSERT INTO employees VALUES
   (123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', TO_DATE('10-OCT-1997', 'dd-MON-yyyy'),
   'ST_MAN', 6500, NULL, 100, 50);
INSERT INTO employees VALUES 
   (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', TO_DATE('16-NOV-1999', 'dd-MON-yyyy'),
   'ST_MAN', 5800, NULL, 100, 50);
INSERT INTO employees VALUES 
   (125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', TO_DATE('16-JUL-1997', 'dd-MON-yyyy'),
   'ST_CLERK', 3200, NULL, 120, 50);
INSERT INTO employees VALUES 
   (126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', TO_DATE('28-SEP-1998', 'dd-MON-yyyy'),                                                   
   'ST_CLERK', 2700, NULL, 120, 50);
INSERT INTO employees VALUES 
   (127, 'James', 'Landry', 'JLANDRY', '650.124.1334', TO_DATE('14-JAN-1999', 'dd-MON-yyyy'),
   'ST_CLERK', 2400, NULL, 120, 50);
INSERT INTO employees VALUES 
   (128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', TO_DATE('08-MAR-2000', 'dd-MON-yyyy'),
   'ST_CLERK', 2200, NULL, 120, 50);
   
INSERT INTO People VALUES (1, 'Alice', 'Brown', 10, 50000, DATE '2019-05-01');
INSERT INTO People VALUES (2, 'Bob', 'Smith', 20, 60000, DATE '2020-06-15');
INSERT INTO People VALUES (3, 'Charlie', 'Davis', 10, 55000, DATE '2018-04-20');
INSERT INTO People VALUES (4, 'Diana', 'White', 30, 70000, DATE '2017-07-30');
INSERT INTO People VALUES (5, 'Eve', 'Green', 20, 45000, DATE '2021-03-01');
COMMIT;

--QUESTIONS ON IMPLICIT CURSORS
--1. Write a PL/SQL block to fetch and print employee_id and names from the employees table using an implicit cursor.
begin
   for a in (select * from employees) loop
   dbms_output.put_line(a.employee_id || ':' || a.first_name || ' ' || a.last_name);
   end loop; 
end;


--2. What happens when an implicit cursor fetches zero rows? Demonstrate this using an example.
declare
    f_name varchar2(15);
begin
 select first_name into f_name from people
 where employee_id = 8;
 dbms_output.put_line(f_name); --Returns an error (no data found)
end;

--To handle the above error
declare
    f_name varchar2(15);
begin
    begin
     select first_name into f_name from people
     where employee_id = 8;
     dbms_output.put_line('f_name');
    exception
     when no_data_found then
     dbms_output.put_line('No rows found');
    end;
end;

/* 3. Write a PL/SQL block that attempts to fetch a single record using an implicit cursor but ends up
fetching multiple records. How does Oracle handle this situation? */
declare
    b varchar2(20);
    s integer;
begin
    select first_name, salary into b, s from employees;
    dbms_output.put_line(b);  --returns error, 'exact fetch returns more than requested number of rows.'
end;

--To handle multiple records, use a cursor or a FOR loop. In this case, let's use a for loop
begin
    for c in (select * from employees)
        loop
         dbms_output.put_line('First name is ' || c.first_name || ' and salary is ' || c.salary );
        end loop;
end;

-- 4. Use an implicit cursor to update the salary of an employee by their ID

begin
    update employees
    set salary = salary + 3000 where employee_id between 100 and 130;
    
    for e in (select employee_id, salary from employees where employee_id between 100 and 130)
    loop
    dbms_output.put_line(e.employee_id || ':' || e.salary);
    end loop;
end;

/* 5. Use an implicit cursor to update the salary of an employee by their ID
and handle the case where no rows are affected.*/
begin
     update employees
     set salary = salary - 1000
     where employee_id = 01;
     
     if sql%rowcount = 0 then
     dbms_output.put_line('no updates found');
     else
     dbms_output.put_line('salary updated');
     end if;
end;

-- 6. Demonstrate how to use SQL%FOUND with an implicit cursor to check if an update statement succeeded.
begin
    update people
    set salary = salary * 1.1
    where last_name = 'Smith';
    
    if sql%found then
    dbms_output.put_line('Smith salary updated');
    else
    dbms_output.put_line('last name not found');
    end if;
end;

-- 7. Write a PL/SQL block to delete all employees in department 10 and display the number of rows deleted.
begin
    delete from people
    where department_id = 10;
    
    dbms_output.put_line('The numbers of rows deleted is ' || sql%rowcount);
end;

-- QUESTIONS ON EXPLICIT CURSORS
/* 1. Write a PL/SQL block to declare, open, fetch from, and close an explicit cursor
that retrieves all employees in department 20.*/
declare
    cursor curone IS select * from employees
    where department_id = 20;
    varone employees%rowtype;
begin
    open curone;
    loop
    fetch curone into varone;
    exit when curone%notfound;
    dbms_output.put_line(varone.first_name || ' ' || varone.last_name);
    end loop;
    close curone;
end;

/* 2. How do you pass parameters to an explicit cursor?
Write a cursor that fetches employees by department ID.*/
declare
    cursor curtwo(curattwo integer) is select first_name, department_id from employees;
    vartwo employees%rowtype;
begin
    open curtwo(20);
    dbms_output.put_line(vartwo.first_name || ' ' || vartwo.employee_id);
    close curtwo;
end;

/* 3. Create an explicit cursor to retrieve employee details with a salary greater than
a specified value. Use a parameter for the threshold.*/

declare
    cursor curthree (curatthree integer) is select * from employees
    where salary > curatthree;
    varthree employees%rowtype;
begin
    open curthree(15000);
    fetch curthree into varthree;
    dbms_output.put_line(varthree.first_name || ' ' || varthree.salary);
    close curthree;
end;

-- 4. Write a cursor loop to fetch and print the full names of all employees in ascending order of salary.
declare
    cursor cursfour is select * from employees
    order by salary asc;
begin
    for varifour in cursfour loop
    dbms_output.put_line(varifour.first_name || ' ' || varifour.last_name);
    end loop;
end;


-- 5. Use an explicit cursor with a FOR UPDATE clause to lock rows while updating their salaries.
declare
    cursor curfive is select * from employees
    where department_id = 20 for update;
    varfive employees%rowtype;
begin
    open curfive;
    fetch curfive into varfive;
    update employees set salary = salary * 1.1
    where department_id = 20;
    commit;
    close curfive;
end;

-- 6. Show the %NOTFOUND attribute of an explicit cursor with an example.

set serveroutput on;
declare
    cursor cursix is select * from employees
    where salary > 30000;
    varsix employees%rowtype;
begin
    open cursix;
    fetch cursix into varsix;
    if cursix%notfound then
    dbms_output.put_line('No records found');
    else
    dbms_output.put_line(varsix.first_name || ' ' || varsix.salary);
    end if;
    close cursix;
end;

/* 7. Write a PL/SQL block that uses an explicit cursor to retrieve
and display employees hired before 1997.*/

declare
    cursor curseven is select * from employees
    where hire_date < date '1997-01-01'
    order by hire_date desc;
    varseven employees%rowtype;
begin
    open curseven;
    loop
    fetch curseven into varseven;
    exit when curseven%notfound;
    dbms_output.put_line(varseven.first_name || ':' || varseven.hire_date);
    end loop;
    close curseven;
end;

/* 8. What is the difference between %ROWTYPE and %TYPE when used with
explicit cursors? Illustrate with an example.*/

DECLARE
  CURSOR cureight IS
    SELECT * FROM employees;
  vareight cureight%ROWTYPE; -- matches the entire row structure of a table or cursor
  vareightwo employees.salary%TYPE; -- matches only salary column type
BEGIN
  OPEN cureight;
  loop
  FETCH cureight INTO vareight;
  exit when cureight%notfound;
  DBMS_OUTPUT.PUT_LINE(vareight.first_name || ' ' || vareight.last_name);
  end loop;
  CLOSE cureight;
END;