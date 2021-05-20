create table employees (
    emp_no int,
    emp_title_id varchar,
    birth_date date,
    first_name varchar,
    last_name varchar,
    sex varchar,
    hire_date date,
);

create table titles (
    title_id varchar,
    title varchar,
);

create table data_departments (
    dept_no varchar,
    dept_name varchar,
);

create table department_manager (
    dept_no varchar,
    emp_no int,
);

create table department_employees (
    emp_no int,
    dept_no varchar,
);


create table salaries (
    emp_no int,
    salary int,
);
