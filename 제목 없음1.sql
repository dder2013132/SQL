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
--WHERE  hire_date BETWEEN '14/01/01' AND '14/12/31';
WHERE  hire_date LIKE '14%';

--8. 관리자가 없는 모든 사원의 이름과 업무를 표시하시오.
SELECT last_name,
       job_id
FROM   employees
WHERE  manager_id IS NULL;

--10. 이름의 세번째 문자가 a인 모든 사원의 이름을 표시하시오.
SELECT last_name
FROM   employees
WHERE  last_name LIKE '__a%';

--11. 이름에 a와 e가 있는 모든 사원의 이름을 표시하시오.
SELECT last_name
FROM   employees
WHERE  last_name LIKE '%a%'
  AND  last_name LIKE '%e%';
--
--12. 업무가 영업 사원(SA_REP) 또는 사무원(ST_CLERK)이면서 
--    급여가 2,500, 3,500, 7,000이 아닌 모든 사원의 이름, 업무 및 급여를 표시하시오.
SELECT last_name,
       job_id,
       salary
FROM   employees
WHERE  job_id IN ('SA_REP','ST_CLERK') AND
       salary NOT IN ('2500','3500','7000');
--
--13. 커미션 비율(commission_pct)이 20%인 모든 사원의 이름, 급여 및 커미션을 표시하도록 
--    명령문을 작성하여 실행하시오.
SELECT last_name,
       salary,
       commission_pct
FROM   employees
WHERE  commission_pct = 0.2;

SELECT   last_name,
         job_id,
         department_id,
         hire_date
FROM     employees
ORDER BY hire_date;

SELECT   last_name,
         job_id,
         department_id,
         hire_date
FROM     employees
ORDER BY hire_date DESC;

SELECT   employee_id,
         last_name,
         salary*12 annsal
FROM     employees
ORDER BY annsal; /*수식 그대로 사용 가능*/

SELECT   last_name,
         department_id,
         salary
FROM     employees
ORDER BY department_id,
         salary DESC;
         
SELECT   last_name,
         job_id,
         hire_date
FROM     employees
ORDER BY department_id;

SELECT   last_name,
         department_id,
         hire_date
FROM     employees
WHERE    last_name IN ('Matos','Taylor')
ORDER BY hire_date;

SELECT   last_name,
         department_id
FROM     employees
WHERE    department_id IN ('20','50')
ORDER BY last_name;

SELECT   last_name,
         salary,
         commission_pct
FROM     employees
WHERE    commission_pct IS NOT NULL
ORDER BY salary DESC,
         commission_pct DESC;
         
SELECT employee_id,
       last_name,
       salary,
       department_id
FROM   employees
WHERE  employee_id = &employee_num;

SELECT last_name,
       department_id,
       salary*12
FROM   employees
WHERE  job_id = '&job_title';

SELECT employee_id,
       last_name,
       job_id,
       &&column_name
FROM employees
ORDER BY &column_name;

UNDEFINE column_name;

DESC dual;

SELECT SYSDATE
FROM employees;

SELECT 'The job id for '
       || UPPER(last_name)
       || ' is '
       || LOWER(job_id)
             AS "EMPLOYEE DETAILS"
FROM employees;

SELECT employee_id,
       last_name,
       department_id
FROM   employees
WHERE  last_name = 'higgins';

SELECT employee_id,
       last_name,
       department_id
FROM   employees
WHERE  LOWER(last_name) = 'higgins';

SELECT INITCAP(job_id)
FROM   employees;

SELECT employee_id,
       CONCAT(first_name, last_name) NAME,
       job_id,
       LENGTH(last_name),
       INSTR(last_name, 'a') "Contains 'a'?"
FROM   employees;

SELECT SUBSTR('seokangjoong', 4),
       SUBSTR('seokangjoong', 4, 4),
       SUBSTR('seokangjoong', -5),
       SUBSTR('seokangjoong', -5, 3)
FROM   dual;

SELECT LPAD('yedam', 10, '*'),
       RPAD('yedam', 10, '*')
FROM   dual;

SELECT LPAD(CONCAT(first_name, last_name), 30, '-')
FROM   employees;

SELECT TRIM('y' FROM 'yyeydamy')
FROM   dual;

SELECT TRIM('_' FROM '__Orcale__')
FROM   dual;

SELECT LTRIM('yedam', 'ey')
FROM   dual;

SELECT ROUND(45.923),
       ROUND(45.923,0),
       ROUND(45.923,2),
       ROUND(45.923,-1)
FROM   dual;

SELECT TRUNC(45.923),
       TRUNC(45.923,0),
       TRUNC(45.923,2),
       TRUNC(45.923,-1)
FROM   dual;

SELECT last_name,
       salary,
       MOD(salary, 5000)
FROM   employees;

SELECT last_name,
       (SYSDATE-hire_date)/7 AS WEEKS
FROM   employees
WHERE  department_id = 90;

SELECT employee_id,
       hire_date,
       MONTHS_BETWEEN(SYSDATE, hire_date) TENURE,
       ADD_MONTHS(hire_date, 6) REVIEW,
       NEXT_DAY(hire_date, '금'),
       LAST_DAY(hire_date)
FROM   employees;

SELECT NEXT_DAY(SYSDATE, '수'),
       NEXT_DAY(SYSDATE, '화')
FROM   dual;

SELECT SYSDATE,
       ROUND(SYSDATE) ROUND1,
       ROUND(SYSDATE, 'DD') ROUND2, -- 일 기준 반올림(정오)
       ROUND(SYSDATE, 'DAY') ROUND3, -- 주 기준 반올림(수요일)
       ROUND(SYSDATE, 'MON') ROUND4, -- 월 기준 반올림(15일 자정)
       ROUND(SYSDATE, 'YEAR') ROUND5 -- 년 기준 반올림(7월 1일 자정)
FROM   dual;

SELECT SYSDATE,
       TRUNC(SYSDATE) ROUND1,
       TRUNC(SYSDATE, 'DD') ROUND2,
       TRUNC(SYSDATE, 'DAY') ROUND3,
       TRUNC(SYSDATE, 'MON') ROUND4,
       TRUNC(SYSDATE, 'YEAR') ROUND5
FROM   dual;

SELECT last_name,
       department_id
FROM employees
WHERE department_id = '90';

ALTER SESSION SET
NLS_DATE_LANGUAGE = AMERICAN;

SELECT last_name,
       hire_date,
       TO_CHAR(hire_date, 'fmDD Month YYYY') 
          AS HIREDATE
FROM   employees;

SELECT last_name,
       TO_CHAR(hire_date,
       'fmDdspth "of" Month YYYY fmHH:MI:SS AM')
         AS  HRIEDATE
FROM   employees;

SELECT last_name,
       hire_date
FROM   employees
WHERE  TO_CHAR(hire_date, 'YYYY/MM/DD') > '2013/12/31';

SELECT TO_CHAR(salary, '$99,999.00') SALARY
FROM   employees;

--1. 현재 날짜를 표시하는 질의를 작성하고 열 레이블을 Date로 지정하시오.
SELECT SYSDATE AS "Date"
FROM dual;

--2. 각 사원에 대해 사원 번호, 이름, 급여 및 15% 인상된 급여를 정수로 표시하시오. 
--   인상된 급여 열의 레이블을 New Salary로 지정하시오. 
SELECT employee_id,
       last_name,
       salary,
       ROUND(salary * 1.15 , 0) AS "New salary"
FROM   employees;

--3. 2번 질의를 수정하여 새 급여에서 이전 급여를 빼는 새 열을 추가하고 레이블을 Increase로 지정하고 수정한 질의를 실행하시오.
SELECT employee_id,
       last_name,
       salary,
       ROUND((salary * 1.15) - salary , 0) AS "Increase"
FROM employees;

--4. 이름이 J, A 또는 M으로 시작하는 모든 사원의 이름(대문자 표시) 및 이름 길이를 표시하는 질의를 작성하고 각열에 적합한 레이블을 지정하시오. 결과를 사원의 이름에 따라 정렬하시오.
SELECT UPPER(first_name) AS "name",
       LENGTH(first_name)
FROM   employees
WHERE  SUBSTR(first_name,1,1) IN ('J','A','M')
ORDER BY "name";

--5. 각 사원의 이름을 표시하고 근무 달 수(입사일로부터 현재까지의 달 수)를 계산하여 열 레이블을 MONTHS_WORKED로 지정하시오. 결과는 정수로 반올림하여 표시하시오.
SELECT last_name,
       ROUND((SYSDATE - hire_date),0) MONTHS_WORKED
FROM   employees;

--6. 모든 사원의 성 및 급여를 표시하기 위한 query를 작성합니다. 급여가 15자 길이로 표시되고 왼쪽에 $ 기호가 채워지도록 형식을 지정하시오. 열 레이블을 SALARY 로 지정합니다.
SELECT last_name,
       LPAD(salary,15,'$') SALARY
FROM   employees;

--7. 부서 90의 모든 사원에 대해 성(last_name) 및 재직 기간(주 단위)을 표시하도록 query 를 작성하시오. 주를 나타내는 숫자 열의 레이블로 TENURE를 지정하고 주를 나타내는 숫자 값을 정수로 나타내시오.
SELECT last_name,
       ROUND(((SYSDATE - hire_date)/7),0) TENURE
FROM   employees;

SELECT TO_NUMBER('$15,000', '$99,999')
FROM   dual;

SELECT TO_DATE('2024년, 03월, 04일', 'YYYY"년",MM"월",DD"일"')
FROM   dual;

SELECT last_name,
       hire_date
FROM   employees
WHERE  TO_CHAR(hire_date, 'YYYY') = '2014';

SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date < TO_DATE('140111', 'YYMMDD')
ORDER BY hire_date DESC;

SELECT last_name,
       salary,
       NVL(commission_pct, 0),
       (salary * 12) + (salary * 12 * commission_pct),
       (salary * 12) + (salary * 12 * NVL(commission_pct, 0)) AS AN_SAL
FROM   employees;

SELECT last_name,
       NVL(TO_CHAR(commission_pct), '커미션없음')
FROM   employees;

SELECT last_name,
       salary,
       commission_pct,
       NVL2(commission_pct, 'SAL+COMM', 'SAL') income
FROM   employees;

SELECT first_name,
       NULLIF(LENGTH(first_name), LENGTH(last_name)) result
FROM employees;

SELECT last_name,
       job_id,
       salary,
       CASE job_id WHEN 'IT_PROG'  THEN 1.10*salary
                   WHEN 'ST_CLERK' THEN 1.15*salary
                   WHEN 'SA_REP'   THEN 1.20*salary
                                   ELSE salary
       END  AS "REVISED_SALARY"
FROM   employees;

SELECT last_name,
       job_id,
       salary,
       CASE WHEN job_id = 'IT_PROG'  THEN 1.10*salary
            WHEN job_id = 'ST_CLERK' THEN 1.15*salary
            WHEN job_id = 'SA_REP'   THEN 1.20*salary
                                     ELSE salary
       END  AS "REVISED_SALARY"
FROM   employees;

SELECT last_name,
       salary,
       CASE WHEN salary<5000  THEN 'Low'
            WHEN salary<10000 THEN 'Medium'
            WHEN salary<20000 THEN 'Good'
                              ELSE 'Excellent'
       END  qualified_salary
FROM   employees;

SELECT last_name,
       job_id,
       salary,
       DECODE(job_id, 'IT_PROG',  1.10*salary,
                      'ST_CLERK', 1.15*salary,
                      'SA_REP',   1.20*salary,
                                  salary)
       "REVISED_SALARY"
FROM   employees;

--1. 각 사원에 대해 다음 항목을 생성하는 질의를 작성하고 
--   열 레이블을 Dream Salaries로 지정하시오. (변환 함수, 연결 연산자)
--<employee last_name> earns <salary> monthly but wants <salary의 3배>. 
--<예시> Matos earns $2,600.00 monthly but wants $7,800.00.
SELECT last_name||' earns'||TO_CHAR(salary,'$999,999.99')||' monthly but watns'||TO_CHAR(salary*3,'$999,999.99')
FROM   employees;

--2. 사원의 이름, 입사일 및 급여 검토일을 표시하시오.
--   급여 검토일은 여섯 달이 경과한 후 첫번째 월요일입니다.
--   열 레이블을 REVIEW로 지정하고 
--   날짜는 "2010.03.31 월요일"과 같은 형식으로 표시되도록 지정하시오. (날짜 함수)
SELECT last_name,
       hire_date,
       NEXT_DAY(ADD_MONTHS(hire_date, 6),'Monday') REVIEW
FROM   employees;
       

--3. 이름, 입사일 및 업무 시작 요일을 표시하고
--   열 레이블을 DAY로 지정하시오. (날짜 함수)
--   월요일을 시작으로 해서 요일을 기준으로 결과를 정렬하시오. (산수)

--4. 사원의 이름과 커미션을 표시하는 질의를 작성하시오.
--   커미션을 받지 않는 사원일 경우 “No Commission”을 표시하시오. (NVL 함수)
--   열 레이블은 COMM으로 지정하시오.
--
--5. CASE 구문을 사용하여 
--   다음 데이터에 따라 JOB_ID 열의 값을 기준으로 
--   모든 사원의 등급을 표시하는 질의를 작성하시오.
--
--업무         등급
--AD_PRES     A
--ST_MAN      B
--IT_PROG     C
--SA_REP      D
--ST_CLERK    E
--그외         0