SELECT last_name,
       salary,
       12*salary+100
FROM   employees;

SELECT last_name,
       salary,
       12*(salary+100)
FROM   employees;

SELECT last_name,
       job_id,
       salary,
       commission_pct
FROM   employees;

SELECT last_name,
       job_id,
       salary,
       NVL(commission_pct, 0)
FROM   employees;

SELECT last_name,
       commission_pct,
       12*salary*commission_pct
FROM   employees;

SELECT last_name,
       commission_pct,
       12*salary*NVL(commission_pct, 1)
FROM   employees;

SELECT last_name AS name,
       commission_pct comm
FROM   employees;

SELECT last_name "Name",
       salary*12 "Annual salary"
FROM   employees;

SELECT last_name||job_id AS "Employees"
FROM   employees;

SELECT last_name||' is a '||job_id
       AS "Employee Details"
FROM   employees;

SELECT last_name||' is a '||job_id||7
       AS "Employee Details"
FROM   employees;

SELECT department_id
FROM   employees;

SELECT DISTINCT department_id
FROM   employees;

--SELECT DISTINCT department_id,
--       job_id
--FROM   employees;

--1. DEPARTMENTS 테이블의 모든 데이터를 조회하시오.
SELECT department_id,
       department_name,
       manager_id,
       location_id
FROM   departments;

--2. EMPLOYEES 테이블에서
--  사원 번호가 가장 앞에 오고 이어서 각 사원의 이름(last_name), 업무 코드(job_id), 
--입사일(hire_date)이 오도록 질의를 작성하시오. HIRE_DATE 열에 STARTDATE라는 별칭을 지정하시오. 
SELECT employee_id,
       last_name,
       job_id,
       hire_date AS startdate
FROM   employees;

--3. EMPLOYEES 테이블의 업무 코드(job_id)를 중복되지 않게 표시하는 질의를 작성하시오.
SELECT DISTINCT job_id
FROM   employees;

--4. 2번의 명령문을 복사하시오. 머리글을 각각 Emp #, Employee, Job 및 Hire Date로 
--명명한 다음 질의를 다시 실행하시오.
SELECT employee_id AS "Emp #",
       last_name AS "Employee",
       job_id AS "Job",
       hire_date AS "Hire Date"
FROM   employees;

--5. 업무 ID(job_id)와 이름(last_name)을 연결한 다음 쉼표 및 공백으로 구분하여 표시하고 
--열 이름을 Employee and Title로 지정하시오.
SELECT job_id||' , '||last_name AS "Employee and Title"
FROM   employees;

SELECT employee_id,
       last_name,
       job_id,
       department_id
FROM   employees
WHERE  department_id = 90;

SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  last_name = 'Whalen';

SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  hire_date = '14/02/17';

SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  hire_date in ('13/09/17','14/02/17');

SELECT last_name,
       salary
FROM   employees
WHERE  salary <= 3000;

SELECT last_name,
       salary
FROM   employees
WHERE  hire_date <= '14/01/01';

SELECT last_name,
       salary
FROM   employees
WHERE  last_name LIKE 'H%i%';

SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 2500 AND 3500;

SELECT last_name,
       salary
FROM   employees
WHERE  last_name BETWEEN 'K' AND 'Szzzzzzz';

SELECT employee_id,
       last_name,
       salary,
       manager_id
FROM   employees
WHERE  manager_id IN (100, 101, 201);

SELECT employee_id,
       manager_id,
       department_id
FROM   employees
WHERE  last_name IN ('Hartstein', 'Vargas');

SELECT first_name
FROM   employees
WHERE  first_name LIKE 'S%';

SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date LIKE '14%';

SELECT last_name
FROM   employees
WHERE  last_name LIKE '_o%';

SELECT job_id
FROM   employees
WHERE  job_id LIKE '%a_%' ESCAPE 'a';

SELECT last_name,
       manager_id
FROM   employees
WHERE  manager_id IS NULL;

SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary >= 10000
  AND  job_id LIKE '%MAN%';
  
SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary >= 10000
   OR  job_id LIKE '%MAN%';
   
SELECT last_name,
       salary
FROM   employees
WHERE  salary NOT BETWEEN 2500 AND 3500;

SELECT employee_id,
       last_name,
       salary,
       manager_id
FROM   employees
WHERE  manager_id NOT IN (100, 101, 201);

SELECT first_name
FROM   employees
WHERE  first_name NOT LIKE 'S%';

SELECT last_name,
       manager_id
FROM   employees
WHERE  manager_id IS NOT NULL;

--1. 급여가 12,000를 넘는 사원의 이름과 급여를 표시하는 질의를 실행하시오.
SELECT last_name,
       salary
FROM   employees
WHERE  salary > 12000;

--2. 사원 번호가 176인 사원의 이름과 부서 번호를 표시하는 질의를 실행하시오.
SELECT last_name,
       department_id
FROM   employees
WHERE  employee_id = 176;

--3. 급여가 5,000에서 12,000 사이에 포함되지 않는 
--   모든 사원의 이름과 급여를 표시하도록 질의를 실행하시오.
SELECT last_name,
       salary
FROM   employees
WHERE  salary NOT BETWEEN 5000 AND 12000;

--4. last name이 Matos와 Taylor인 사원의 last_name, 업무 ID, 그리고 입사일을 표시하시오.
SELECT last_name,
       department_id,
       hire_date
FROM   employees
WHERE  last_name IN ('Matos','Taylor');

--6. 급여가 5,000와 12,000 사이이고 부서 번호가 20 또는 50인 사원의 이름과 급여를 나열하도록 질의를 작성하시오. 
--   열 레이블은 Employee와 Monthly Salary로 각각 지정하시오.
SELECT last_name AS "Employee",
       salary AS "Monthly Salary"
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000
  AND  department_id IN ('20', '50');

--7. 2014년에 입사한 모든 사원의 이름과 입사일을 표시하시오.
SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date BETWEEN '14/01/01' AND '14/12/31';

--8. 관리자가 없는 모든 사원의 이름과 업무를 표시하시오.
SELECT last_name,
       job_id
FROM   employees
WHERE  manager_id IS NULL;

--10. 이름의 세번째 문자가 a인 모든 사원의 이름을 표시하시오.
SELECT last_name
FROM   employees
WHERE  

--11. 이름에 a와 e가 있는 모든 사원의 이름을 표시하시오.
--
--12. 업무가 영업 사원(SA_REP) 또는 사무원(ST_CLERK)이면서 
--    급여가 2,500, 3,500, 7,000이 아닌 모든 사원의 이름, 업무 및 급여를 표시하시오.
--
--13. 커미션 비율(commission_pct)이 20%인 모든 사원의 이름, 급여 및 커미션을 표시하도록 
--    명령문을 작성하여 실행하시오.