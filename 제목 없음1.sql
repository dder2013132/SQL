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
SELECT last_name||' earns'||TO_CHAR(salary,'$999,999.00')||' monthly but watns'||TO_CHAR(salary*3,'$999,999.00')
FROM   employees;

--2. 사원의 이름, 입사일 및 급여 검토일을 표시하시오.
--   급여 검토일은 여섯 달이 경과한 후 첫번째 월요일입니다.
--   열 레이블을 REVIEW로 지정하고 
--   날짜는 "2010.03.31 월요일"과 같은 형식으로 표시되도록 지정하시오. (날짜 함수)
SELECT last_name,
       hire_date,
       NEXT_DAY(ADD_MONTHS(hire_date, 6),'월') REVIEW
FROM   employees;
       

--3. 이름, 입사일 및 업무 시작 요일을 표시하고
--   열 레이블을 DAY로 지정하시오. (날짜 함수)
--   월요일을 시작으로 해서 요일을 기준으로 결과를 정렬하시오. (산수)
SELECT last_name,
       hire_date,
       TO_CHAR(hire_date,'DAY') DAY
FROM   employees
ORDER BY TO_CHAR(hire_date-1, 'd');

SELECT TO_CHAR(hire_date, 'DAY'),
       TO_CHAR(hire_date-1, 'DAY'),
       TO_CHAR(hire_date, 'd'),
       TO_CHAR(hire_date-1, 'd')
FROM   employees;

--4. 사원의 이름과 커미션을 표시하는 질의를 작성하시오.
--   커미션을 받지 않는 사원일 경우 “No Commission”을 표시하시오. (NVL 함수)
--   열 레이블은 COMM으로 지정하시오.
SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No Commission') COMM
FROM   employees;

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

SELECT job_id,
       CASE   WHEN job_id = 'AD_PRES'  THEN 'A'
              WHEN job_id = 'ST_MAN'   THEN 'B'
              WHEN job_id = 'IT_PROG'  THEN 'C'
              WHEN job_id = 'SA_REP'   THEN 'D'
              WHEN job_id = 'ST_CLERK' THEN 'E'
                                       ELSE '0'
       END AS grade
FROM   employees;

SELECT AVG(salary), 
       MAX(salary),
       MIN(salary),
       SUM(salary)
FROM   employees;

SELECT MIN(hire_date),
       MAX(hire_date)
FROM   employees;

SELECT MIN(last_name),
       MAX(last_name)
FROM   employees;

SELECT COUNT(*)
FROM employees
WHERE department_id = 50;

SELECT COUNT(commission_pct)
FROM employees
WHERE department_id = 80;

SELECT AVG(commission_pct),
       AVG(NVL(commission_pct, 0))
FROM   employees;

SELECT COUNT(commission_pct),
       COUNT(NVL(commission_pct, 0))
FROM   employees;
SELECT COUNT(commission_pct),
       COUNT(NVL(commission_pct, 0))
FROM   employees;

SELECT COUNT(department_id),
       COUNT(DISTINCT department_id)
FROM   employees;

SELECT   department_id,
         AVG(salary)
FROM     employees
GROUP BY department_id;

SELECT   AVG(salary)
FROM     employees
GROUP BY department_id;

SELECT   department_id,
         AVG(salary)
FROM     employees
GROUP BY department_id
ORDER BY AVG(salary);

SELECT   department_id,
         job_id,
         sum(salary)
FROM     employees
GROUP BY department_id,
         job_id
ORDER BY job_id;

SELECT   department_id,
         job_id,
         sum(salary)
FROM     employees
WHERE    department_id > 40
GROUP BY department_id,
         job_id
ORDER BY department_id;

--WHERE 절에는 GROUP 함수를 쓸 수 없다, HAVING 절에서 사용
--실행 순서
--5 SELECT
--1 FROM
--2 WHERE
--3 GROUP BY
--4 HAVING
--6 ORDER BY

SELECT    department_id,
          MAX(salary)
FROM      employees
GROUP BY  department_id
HAVING    MAX(salary)>10000;

SELECT   department_id,
         AVG(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary)>10000;

SELECT    job_id,
          SUM(salary) PAYROLL
FROM      employees
WHERE     job_id NOT LIKE '%REP%'
GROUP BY  job_id
HAVING    SUM(salary) > 13000
ORDER BY  SUM(salary);

SELECT    MAX(AVG(salary))
FROM      employees
GROUP BY  department_id;

SELECT    department_id, --GROUP함수가 있을 때는 SELECT 절에 어떠한 COLUMN도 오면 안된다
          MAX(AVG(salary))
FROM      employees
GROUP BY  department_id;

--다음 세 문장의 유효성을 판별하여 True 또는 False로 답하시오.
--1. 그룹 함수는 여러 행에 적용되어 그룹 당 하나의 결과를 출력한다.
-- TRUE
--2. 그룹 함수는 계산에 널을 포함한다.
-- FALSE
--3. WHERE 절은 그룹 계산에 행(row)을 포함시키기 전에 행을 제한한다.
-- FALSE
--4. 모든 사원의 급여 최고액, 최저액, 총액 및 평균액을 표시하시오. 열 레이블을 각각 Maximum, Minimum, Sum 및 Average로 지정하고 결과를 정수로 반올림하도록 작성하시오.
SELECT MAX(salary) Maximum,
       MIN(salary) Minimum,
       SUM(salary) Sum,
       ROUND(AVG(salary),0) Average
FROM   employees;

--5. 위의 질의를 수정하여 각 업무 유형(job_id)별로 급여 최고액, 최저액, 총액 및 평균액을 표시하시오. 
SELECT job_id,
       ROUND(MAX(salary)) "Maximum",
       ROUND(MIN(salary)) "Minimum",
       ROUND(SUM(salary)) "Sum",
       ROUND(AVG(salary)) "Average"
FROM   employees
GROUP BY job_id;

--6. 업무별 사원 수를 표시하는 질의를 작성하시오.
SELECT job_id,
       COUNT(*)
FROM   employees
GROUP BY job_id;

--7. 관리자 수를 확인하시오. 열 레이블은 Number of Managers로 지정하시오. (힌트: MANAGER_ID 열을 사용)
SELECT COUNT(DISTINCT manager_id) AS "Number of Managers"
FROM   employees;

--8. 최고 급여와 최저 급여의 차액을 표시하는 질의를 작성하고 열 레이블을 DIFFERENCE로 지정하시오.
SELECT MAX(salary)-MIN(salary) DIFFERENCE
FROM employees;

--9. 관리자 번호 및 해당 관리자에 속한 사원의 최저 급여를 표시하시오.
--관리자를 알 수 없는 사원 및 최저 급여가 6,000 미만인 그룹은 제외시키고 결과를 급여에 대한 내림차순으로 정렬하시오.
SELECT   manager_id,
         MIN(salary)
FROM     employees
WHERE    manager_id IS NOT NULL
GROUP BY manager_id
HAVING   MIN(salary) >= 6000
ORDER BY MIN(salary);

SELECT *
FROM   employees;

SELECT *
FROM   departments;

SELECT employee_id, department_name
FROM   employees, departments;

SELECT employee_id, department_name
FROM   employees CROSS JOIN departments;

-- n개의 테이블을 함께 조인하려면, 최소 (n-1)개의 조인 조건문이 필요

SELECT *
FROM   job_history;

SELECT   *
FROM     job_history
ORDER BY employee_id;

SELECT *
FROM   employees;

SELECT employee_id,
       job_id
FROM   employees
UNION
SELECT employee_id,
       job_id
FROM   job_history;

ALTER SESSION SET
NLS_DATE_LANGUAGE=AMERICAN;

SELECT *
FROM   job_history;

SELECT *
FROM   employees;

SELECT employee_id,
       job_id
FROM   employees
UNION
SELECT employee_id,
       job_id
FROM   job_history;

commit;

SELECT employee_id,
       job_id,
       department_id
FROM   employees
UNION
SELECT employee_id,
       job_id,
       department_id
FROM   job_history;

SELECT   employee_id,
         job_id
FROM     employees
UNION
SELECT   employee_id,
         job_id
FROM     job_history
ORDER BY job_id;

--UNION ALL -> 디폴트로 정렬 안됨

SELECT   employee_id,
         job_id,
         department_id
FROM     employees
UNION ALL
SELECT   employee_id,
         job_id,
         department_id
FROM     job_history
ORDER BY employee_id;

SELECT   employee_id,
         job_id
FROM     employees
INTERSECT
SELECT   employee_id,
         job_id
FROM     job_history;

SELECT employee_id,
       job_id
FROM   employees
MINUS
SELECT employee_id,
       job_id
FROM   job_history;

SELECT employee_id,
       job_id
FROM   job_history
MINUS
SELECT employee_id,
       job_id
FROM   employees;

SELECT last_name,
       department_name
FROM   employees CROSS JOIN departments;

SELECT department_id,
       department_name,
       location_id,
       city
FROM   departments
NATURAL JOIN locations;

SELECT employee_id,
       last_name,
       location_id,
       department_id
FROM   employees
JOIN   departments
USING  (department_id);

--조인 조건 직접 명시하는 ON절 구문만 주로 사용 (기본키와 외래키 사용)
--아래처럼 사용
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e JOIN departments d
        ON (e.department_id = d.department_id);

--위와 아래의 결과는 같음

SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e , departments d
WHERE  e.department_id = d.department_id;

SELECT e.employee_id,
       l.city,
       d.department_name
FROM   employees e 
         JOIN departments d
           ON (d.department_id = e.department_id)
         JOIN locations l
           ON (d.location_id = l.location_id);
           
-- ORACLE JOIN ↓
SELECT e.employee_id,
       l.city,
       d.department_name
FROM   employees e, departments d,locations l
WHERE  d.department_id = e.department_id
  AND  d.location_id = l.location_id;
  
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e JOIN departments d
           ON (e.department_id = d.department_id)
               AND e.manager_id = 149;
               
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e JOIN departments d
           ON (e.department_id = d.department_id)
WHERE  e.manager_id = 149;

--ORACLE JOIN ON ↓
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e, departments d
WHERE  e.department_id = d.department_id
  AND  e.manager_id = 149;
  
--같은 테이블의 ALIAS를 다르게 하여 두 개의 테이블로 인식시킴 - SELF JOIN
SELECT w.last_name emp,
       m.last_name mgr
FROM   employees w JOIN employees m
                 ON (w.manager_id = m.employee_id);

--ORACLE SELF JOIN
SELECT w.last_name emp,
       m.last_name mgr
FROM   employees w, employees m
WHERE  w.manager_id = m.employee_id;

--BETWEEN JOIN
SELECT e.last_name,
       e.salary,
       j.grade_level
FROM   employees e JOIN job_grades j
                 ON     e.salary
                        BETWEEN j.lowest_sal AND j.highest_sal;
                     
--ORACLE BETWEEN JOIN
SELECT e.last_name,
       e.salary,
       j.grade_level
FROM   employees e, job_grades j
WHERE  e.salary BETWEEN j.lowest_sal AND j.highest_sal;

SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e JOIN departments d
       ON (e.department_id = d.department_id);

-- LEFT OUTER JOIN(LEFT TABLE의 NULL 포함)
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e LEFT OUTER JOIN departments d
       ON (e.department_id = d.department_id);
       
-- RIGHT OUTER JOIN(RIGHT TABLE의 NULL 포함)
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e RIGHT OUTER JOIN departments d
       ON (e.department_id = d.department_id);
       
-- FULL OUTER JOIN(둘 다 NULL 포함)
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e FULL OUTER JOIN departments d
       ON (e.department_id = d.department_id);
       
--ORACLE 에서는 'OUTER' 빼도 됨
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e FULL JOIN departments d
       ON (e.department_id = d.department_id);

--ORACLE OUTER JOIN '(+)' 위치에 따라 LEFT RIGHT 구분, ORACLE은 FULL OUTER JOIN 없음
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e , departments d
WHERE  e.department_id = d.department_id(+);

SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e , departments d
WHERE  e.department_id(+) = d.department_id;

--2. 모든 사원의 이름, 소속 부서번호 및 부서 이름을 표시하는 query를 작성하시오.
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e JOIN departments d
       ON (e.department_id = d.department_id);

--1. LOCATIONS 및 COUNTRIES 테이블을 사용하여 
--   모든 부서의 주소를 생성하는 query를 작성하시오. 
--   출력에 위치ID(location_id), 주소(street_address), 구/군(city),
--   시/도(state_province) 및 국가(country_name)를 표시하시오.
SELECT d.location_id,
       l.street_address,
       l.city,
       l.state_province,
       c.country_name
FROM   departments d
       JOIN locations l
            ON (d.location_id = l.location_id)
       JOIN countries c
            ON (l.country_id = c.country_id);

--4. 사원의 이름 및 사원 번호를 
--   해당 관리자의 이름 및 관리자 번호와 함께 표시하는 보고서를 작성하는데, 
--   열 레이블을 각각 Employee, Emp#, Manager 및 Mgr#으로 지정하시오. (Self 조인)
SELECT s.last_name "Employee",
       s.manager_id AS "Emp#",
       m.last_name AS "Manager",
       m.employee_id AS "Mgr#"
FROM   employees s JOIN employees m
       ON (s.manager_id = m.employee_id);

--5. King과 같이 해당 관리자가 지정되지 않은 사원도 표시하도록 4번 문장을 수정합니다. 
--   사원 번호순으로 결과를 정렬하시오. (outer 조인, 정렬)
SELECT   s.last_name "Employee",
         s.manager_id AS "Emp#",
         m.last_name AS "Manager",
         m.employee_id AS "Mgr#"
FROM     employees s LEFT OUTER JOIN employees m
         ON (s.manager_id = m.employee_id)
ORDER BY s.employee_id;

--3. Toronto에 근무하는 사원에 대한 보고서를 필요로 합니다. 
--   toronto에서 근무하는 모든 사원의 이름, 직무, 부서번호 및 부서 이름을 표시하시오. (추가조건)
SELECT e.last_name,
       e.job_id,
       e.department_id,
       d.department_name
FROM   employees e 
       JOIN departments d
                 ON (e.department_id = d.department_id)
       JOIN locations l
                 ON (d.location_id = l.location_id)
 AND   LOWER(l.city) = LOWER('Toronto');

--6. 직무 등급 및 급여에 대한 보고서를 필요로 합니다. 
--   모든 사원의 이름, 직무, 부서 이름, 급여 및 등급을 표시하는 query를 작성하시오. (비동등조인 포함)
SELECT e.last_name,
       e.job_id,
       d.department_name,
       e.salary,
       j.grade_level
FROM   employees e 
       JOIN departments d
            ON (e.department_id = d.department_id)
       JOIN job_grades j
            ON e.salary7
               BETWEEN j.lowest_sal AND j.highest_sal;
               
-- 서브쿼리는 다른 SELECT 문장의 절에 내장된 SELECT 문을 의미

SELECT last_name,
       salary
FROM   employees
WHERE  salary > (SELECT salary
                 FROM   employees
                 WHERE  last_name = 'Abel');

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id = (SELECT job_id
                 FROM   employees
                 WHERE  employee_id = 141);

SELECT last_name,
       salary
FROM   employees
WHERE  department_id = (SELECT department_id
                        FROM   departments
                        WHERE  department_name = 'IT');
                        

SELECT last_name, 
       job_id, 
       salary
FROM   employees
WHERE  job_id = (SELECT job_id
                 FROM   employees
                 WHERE  last_name = 'Taylor')
AND    salary > (SELECT salary
                 FROM   employees
                 WHERE  last_name = 'Taylor');
                 
SELECT last_name,
       job_id,
       salary
FROM   employees
WHERE  salary = (SELECT MIN(salary)
                 FROM   employees);
 
SELECT    department_id,
          MIN(salary)
FROM      employees
GROUP BY  department_id
HAVING MIN(salary) > (SELECT MIN(salary)
                      FROM   employees
                      WHERE  department_id = 50);
                      
--연산자에 맞게 RETURN 값 출력시킬 것

SELECT last_name,
       salary,
       department_id
FROM   employees
WHERE  salary IN(SELECT   MIN(salary)
                  FROM     employees
                  GROUP BY department_id);
                  
SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary < ANY (SELECT salary
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
  AND  job_id <> 'IT_PROG';
  
SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary = ANY (SELECT salary
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
  AND  job_id <> 'IT_PROG';
  
SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary < ALL (SELECT salary
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
  AND  job_id <> 'IT_PROG';
  
SELECT employee_id,
       manager_id,
       department_id
FROM   empl_demo
WHERE  (manager_id, department_id) IN 
                    (SELECT manager_id, department_id
                     FROM empl_demo
                     WHERE first_name = 'John')
  AND first_name <> 'John';
  
--  1. Zlotkey(last_name)와 동일한 부서에 속한 모든 사원의 이름과 입사일을 표시하는 질의를 작성하시오. Zlotkey는 결과에서 제외하시오.
SELECT last_name,
       hire_date
FROM   employees
WHERE  department_id = (SELECT department_id
                        FROM employees
                        WHERE last_name = 'Zlotkey')
  AND  last_name <> 'Zlotkey';

--2. 급여가 평균 급여보다 많은 모든 사원의 사원 번호와 이름을 표시하는 질의를 작성하고 결과를 급여에 대해 오름차순으로 정렬하시오.
SELECT employee_id,
       last_name
FROM   employees
WHERE  salary > (SELECT AVG(salary)
                 FROM employees)
ORDER BY salary;

--3. 이름에 u가 포함된 사원과 같은 부서에서 일하는 모든 사원의 사원 번호와 이름을 표시하는 질의를 작성하고 질의를 실행하시오.
SELECT employee_id,
       last_name
FROM   employees
WHERE  department_id IN (SELECT department_id
                        FROM   employees
                        WHERE  last_name LIKE ('%u%'));

--4. 부서 위치 ID(location_id)가 1700인 모든 사원의 이름, 부서 번호 및 업무 ID를 표시하시오.
SELECT last_name, 
       department_id,
       job_id
FROM   employees
WHERE  department_id IN (SELECT department_id
                        FROM   departments
                        WHERE  location_id = '1700');

--5. King에게 보고하는(manager가 King) 모든 사원의 이름과 급여를 표시하시오.
SELECT last_name,
       salary
FROM   employees
WHERE  manager_id IN (SELECT employee_id
                     FROM   employees
                     WHERE  last_name = 'King');

--6. Executive 부서의 모든 사원에 대한 부서 번호, 이름 및 업무 ID를 표시하시오.
SELECT department_id,
       last_name,
       job_id
FROM   employees
WHERE  department_id IN (SELECT department_id
                         FROM   departments
                         WHERE  department_name = 'Executive');

--7. 평균 급여보다 많은 급여를 받고 이름에 u가 포함된 사원과 같은 부서에서 근무하는 모든 사원의 사원 번호, 이름 및 급여를 표시하시오.
SELECT employee_id,
       last_name,
       salary
FROM   employees
WHERE  salary > (SELECT AVG(salary)
                 FROM   employees)
  AND  department_id IN (SELECT department_id
                         FROM   employees
                         WHERE  last_name LIKE ('%u%'));
                         
INSERT INTO departments(department_id,
                        department_name,
                        manager_id,
                        location_id)
VALUES (70, 
        'Public Relations', 
        100, 
        1700);

INSERT INTO departments(department_id,
                        department_name,
                        manager_id,
                        location_id)
VALUES (999, 
        'Public Relations', 
        100, 
        1700);
        
SELECT *
FROM   departments;

INSERT INTO departments
VALUES (998, 
        'Public Relations', 
        100, 
        1700);

INSERT INTO departments(department_id,
                        department_name)
VALUES (30,
        'Purchasing');

INSERT INTO departments(department_id,
                        department_name,
                        manager_id,
                        location_id)
VALUES (100,
        'Finance',
        NULL,
        NULL);

--기본키에 NULL값 삽입 불가(무결성 제약 조건 위배) ↓
INSERT INTO departments
  (department_name,
   manager_id,
   location_id)
VALUES ('Finance',
        null,
        NULL);
        
--기본키에 중복값 삽입 불가(무결성 제약 조건 위배) ↓
INSERT INTO departments
  (department_id,
  department_name,
  manager_id,
  location_id)
VALUES (10,
        'Finance',
        null,
        NULL);
        
-- 객체, 참조, 도메인 무결성

--외래키(location_id)에 부모키에 없는 값 삽입 불가(무결성 제약 조건 위배) ↓
INSERT INTO departments
  (department_id,
  department_name,
  manager_id,
  location_id)
VALUES (111,
        'Finance',
        null,
        1700);

commit;
rollback;

INSERT INTO employees
VALUES (113,
        'Louis',
        'Popp',
        'LPOPP',
        '515.124.4567',
        SYSDATE,
        'AC_ACCOUNT',
        6900,
        NULL,
        205,
        110);
        
INSERT INTO employees
VALUES (114,
        'Den',
        'Raphealy',
        'DRAPHEAL',
        '515.127.4561',
        TO_DATE('2월 3, 1999', 'MON DD, YYYY'),
        'SA_REP',
        11000,
        0.2,
        100,
        60);
SELECT *
FROM   employees;

INSERT INTO sales_reps
  (id,
   name,
   salary,
   commission_pct)
SELECT employee_id,
       last_name,
       salary,
       commission_pct
FROM employees
WHERE job_id LIKE '%REP%';

SELECT *
FROM   sales_reps;

UPDATE employees
SET    department_id = 50
WHERE  employee_id = 113;

SELECT *
FROM   employees;

UPDATE copy_emp
SET    department_id = 110;

SELECT *
FROM   copy_emp;

UPDATE employees
SET job_id = 'IT_PROG', commission_pct = NULL
WHERE  employee_id = 114;

UPDATE employees
SET    (job_id, salary) = (SELECT job_id,
                                  salary
                           FROM employees
                           WHERE employee_id = 205)
WHERE  employee_id = 113;

SELECT *
FROM   departments;

commit;

UPDATE employees
SET    department_id = null
WHERE  employee_id = 113;

UPDATE employees
SET    department_id = 70
WHERE  employee_id = 999;

DELETE FROM departments
WHERE  department_name = 'Finance';

DELETE FROM copy_emp;

DELETE FROM employees
WHERE  employee_id = 114;

DELETE FROM departments
WHERE  department_id IN (30, 40);

--참조 무결성 제약 조건 위배 - 자식 테이블(employees table)에 참조되고 있으므로 삭제할 수 없음.
DELETE departments
WHERE  department_id = 90;

rollback;

SELECT *
FROM copy_emp;

--delete -> dml, truncate table -> ddl, dml->transaction 중, ddl->하나의 transaction이기 때문에 transaction 종료, rollback X
TRUNCATE TABLE copy_emp;

rollback;

--1. 다음과 같이 실습에 사용할 MY_EMPLOYEE 테이블을 생성하시오.
CREATE TABLE my_employee
  (id         NUMBER(4) NOT NULL,
   last_name  VARCHAR2(25),
   first_name VARCHAR2(25),
   userid     VARCHAR2(8),
   salary     NUMBER(9,2));

--2. MY_EMPLOYEE 테이블의 구조를 표시하여 열 이름을 식별하시오.
desc my_employee;

--3. 다음 예제 데이터를 MY_EMPLOYEE 테이블에 추가하시오.(INSERT)
--ID	LAST_NAME 	FIRST_NAME 	USERID 	SALARY
--------- --------------- --------------- ------- ------
--      1	Patel 		Ralph 		Rpatel 	   895
--      2	Dancs 		Betty 		Bdancs 	   860
--      3	Biri 		Ben 		Bbiri 	  1100

INSERT INTO my_employee
    (id,
     last_name,
     first_name,
     userid,
     salary)
VALUES (1,
        'Patel',
        'Ralph',
        'Rpatel',
        895);
INSERT INTO my_employee
    (id,
     last_name,
     first_name,
     userid,
     salary)
VALUES (2,
        'Dancs',
        'Betty',
        'Bdancs',
        860);
INSERT INTO my_employee
    (id,
     last_name,
     first_name,
     userid,
     salary)
VALUES (3,
        'Biri',
        'Ben',
        'Bbiri',
        1100);
--4. 테이블에 추가한 항목을 확인하시오.(SELECT)
SELECT *
FROM   my_employee;
--5. 사원 3의 성(last_name)을 Drexler로 변경하시오.(UPDATE)
UPDATE my_employee
SET last_name = 'Drexler'
WHERE id = 3;
--6. 급여가 900 미만인 모든 사원의 급여를 1000으로 변경하고 테이블의 변경 내용을 확인하시오.(UPDATE)
UPDATE my_employee
SET    salary = 1000
WHERE  salary < 900;

SELECT *
FROM   my_employee;
--7. MY_EMPLOYEE 테이블에서 사원 3을 삭제하고 테이블의 변경 내용을 확인하시오.(DELETE)
DELETE my_employee
WHERE  id = 3;

SELECT *
FROM   my_employee;
--8. 테이블의 내용을 모두 삭제하고 테이블 내용이 비어 있는지 확인하시오.(DELETE)
DELETE my_employee;

SELECT *
FROM   my_employee;

commit;

SELECT last_name,
       salary
FROM   employees
WHERE  employee_id = 202;

UPDATE employees
SET    salary = 5000
WHERE  employee_id = 202;

--TRUNCATE -> DDL은 명령어 하나가 하나의 transaction이므로 
--transaction 종료
--오류가 나도 transaction 종료 -> 변경점은 반영
--그 직후에 오류가 난 DCL, DDL 구문은 ROLLBACK
TRUNCATE TABLE aaa;

SELECT last_name,
       salary
FROM   employees
WHERE  employee_id = 202;

ROLLBACK;
SELECT last_name,
       salary
FROM   employees
WHERE  employee_id = 202;

commit;

--commit -> transaction 강제 종료
--rollback -> transaction 종료되지 않았다면 강제 취소

SELECT table_name
FROM   user_tables;

SELECT DISTINCT oject_type
2   FROM user_ojects;

CREATE TABLE hire_dates
         (id NUMBER(8),
          hire_date DATE DEFAULT SYSDATE);
          
INSERT INTO hire_dates  (id)
VALUES (10);

SELECT *
FROM   hire_dates;

INSERT INTO hire_dates (id,
                        hire_date)
VALUES (20,
        TO_DATE ('25/03/01','YY/MM/DD'));
        
CREATE TABLE dept
       (deptno NUMBER(2),
        dname  VARCHAR2(14),
        loc    VARCHAR2(13),
        create_date DATE DEFAULT SYSDATE);
        
DESCRIBE dept;

SELECT table_name
FROM   user_tables;

CREATE TABLE dept80
  AS
    SELECT employee_id,
           last_name,
           salary*12 ANNSAL,
           hire_date
    FROM   employees
    WHERE  department_id = 80;
    
DESCRIBE dept80;

CREATE TABLE dept90 (empno, name, sal, hiredate)
  AS
    SELECT employee_id,
           last_name,
           salary*12 ANNSAL,
           hire_date
    FROM   employees
    WHERE  department_id = 90;
    
SELECT *
FROM   dept90;

--table data는 들어가지 않지만 table은 만들어짐
CREATE TABLE ex_dept
  AS
    SELECT employee_id,
           last_name,
           salary,
           hire_date
    FROM   employees
    WHERE  department_id = 1;
    
SELECT *
FROM   ex_dept;

SELECT * 
FROM   dept80;

ALTER TABLE dept80
ADD         (job_id VARCHAR2(9));

ALTER TABLE dept80
ADD   (test NUMBER(3) DEFAULT 10);

SELECT *
FROM   dept80;

DESC dept80;

ALTER TABLE dept80
MODIFY (last_name VARCHAR2(30));

DESC dept80;

ALTER TABLE dept80
MODIFY (last_name VARCHAR2(15));

ALTER TABLE dept80
MODIFY (last_name VARCHAR2(5));

ALTER TABLE dept80
MODIFY (job_id NUMBER(10));

DESC dept80;

ALTER TABLE dept80
DROP (job_id);

SELECT *
FROM   dept80;

ALTER TABLE dept80
DROP  (test);

--SET UNUSED

ALTER TABLE dept80
SET   UNUSED (last_name);
--UNUSED COLUMN DELETE
ALTER TABLE dept80
DROP  UNUSED COLUMNS;

DROP TABLE dept80;

SELECT original_name,
       operation,
       droptime
FROM   recyclebin;

FLASHBACK TABLE dept80 TO BEFORE DROP;
--휴지통 비우기
PURGE RECYCLEBIN;
--SHIFT+DELETE
DROP TABLE dept80 PURGE;

RENAME dept90 TO d90;

SELECT *
FROM   dept90;

desc employees;
--NOT NULL 제약조건은 하나의 열에 한해서 가능

CREATE TABLE emp_test(
       empid NUMBER(5),
       empname VARCHAR2(10) NOT NULL,
       --empname VARCHAR2(10) CONSTRAINT emp_test_empname_nn NOT NULL,
       duty VARCHAR2(9),
       sal  NUMBER(7,2),
       bonus NUMBER(7,2),
       mgr NUMBER(5),
       hire_date DATE,
       deptid NUMBER(2));
       
INSERT INTO emp_test (empid, empname)
VALUES (10, 'AA');

INSERT INTO emp_test (empid, empname)
VALUES (10, '');

CREATE TABLE dept_test(
 deptid      NUMBER(2),
 dname       VARCHAR2(14),
 loc         VARCHAR2(13),
 UNIQUE(dname));
 
 INSERT INTO dept_test (deptid, dname)
 VALUES (10, 'AA');
 
 INSERT INTO dept_test (deptid, dname)
 VALUES (20, 'AA');
 
 INSERT INTO dept_test (deptid, dname)
 VALUES (30, NULL);
 
 DROP TABLE dept_test;
 
 CREATE TABLE dept_test(
 deptid      NUMBER(2) PRIMARY KEY,
 dname       VARCHAR2(14),
 loc         VARCHAR2(13),
 UNIQUE(dname));
 
 INSERT INTO dept_test (deptid, dname)
 VALUES (10, 'AA');
 
 INSERT INTO dept_test (deptid, dname)
 VALUES (10, 'BB');
 
 INSERT INTO dept_test (deptid, dname)
 VALUES (NULL, 'CC');
 
 INSERT INTO dept_test (deptid, dname)
 VALUES (20, 'BB');
 
 --묶어서 하나의 제약조건으로 만들려면 TABLE LEVEL에서 해야함
 --(기본키의)후보키 = 유일성+최소성 만족
 --하나를 선택하면 기본키, 나머지 대체키
 --슈퍼키=유일성 만족, 최소성 불만족->더 나눌 수 있음
 
 DROP TABLE emp_test;
 
 --FOREIGN KEY를 TABLE LEVEL에서 적을 때
 CREATE TABLE emp_test(
       empid NUMBER(5) PRIMARY KEY,
       empname VARCHAR2(10) NOT NULL,
       --empname VARCHAR2(10) CONSTRAINT emp_test_empname_nn NOT NULL,
       duty VARCHAR2(9),
       sal  NUMBER(7,2),
       bonus NUMBER(7,2),
       mgr NUMBER(5),
       hire_date DATE,
       deptid NUMBER(2),
FOREIGN KEY (deptid) REFERENCES dept_test(deptid));

-- FOREIGN KEY를 COLUMN LEVEL에서 적을 때
-- CREATE TABLE emp_test(
--       empid NUMBER(5) PRIMARY KEY,
--       empname VARCHAR2(10) NOT NULL,
--       --empname VARCHAR2(10) CONSTRAINT emp_test_empname_nn NOT NULL,
--       duty VARCHAR2(9),
--       sal  NUMBER(7,2),
--       bonus NUMBER(7,2),
--       mgr NUMBER(5),
--       hire_date DATE,
--       deptid NUMBER(2) REFERENCES dept_test(deptid));

INSERT INTO emp_test
  (empid,
   empname,
   deptid)
VALUES (10,
        'AA',
        10);

INSERT INTO emp_test
  (empid,
   empname,
   deptid)
VALUES (20,
        'BB',
        10);

INSERT INTO emp_test
  (empid,
   empname,
   deptid)
VALUES (30,
        'CC',
        30);
        
INSERT INTO emp_test
  (empid,
   empname,
   deptid)
VALUES (40,
        'DD',
        NULL);
        
 CREATE TABLE emp_test(
       empid NUMBER(5) PRIMARY KEY,
       empname VARCHAR2(10) NOT NULL,
       --empname VARCHAR2(10) CONSTRAINT emp_test_empname_nn NOT NULL,
       duty VARCHAR2(9),
       sal  NUMBER(7,2),
       bonus NUMBER(7,2),
       mgr NUMBER(5),
       hire_date DATE,
       deptid NUMBER(2),
FOREIGN KEY (deptid) REFERENCES dept_test(deptid)
                                   ON DELETE SET NULL);
                                   
INSERT INTO emp_test
  (empid,
   empname,
   deptid)
VALUES (10,
        'AA',
        10);

INSERT INTO emp_test
  (empid,
   empname,
   deptid)
VALUES (20,
        'BB',
        10);

INSERT INTO emp_test
  (empid,
   empname,
   deptid)
VALUES (30,
        'CC',
        20);
        
INSERT INTO emp_test
  (empid,
   empname,
   deptid)
VALUES (40,
        'DD',
        NULL);
        
        
SELECT *
FROM   dept_test;

SELECT *
FROM   emp_test;

DELETE dept_test
WHERE  deptid = 10;

ALTER TABLE emp_test
ADD FOREIGN KEY(mgr) REFERENCES emp_test(empid);

ALTER TABLE dept_test
MODIFY dname NOT NULL;

--PRIMARY KEY에 딸린 FOREIGN KEY까지 삭제 (CASCADE)
ALTER TABLE dept_test
DROP PRIMARY KEY CASCADE;

SELECT constraint_name,
       constraint_type,
       search_condition
FROM   user_constraints;

SELECT constraint_name,
       column_name
FROM   user_cons_columns;

SELECT constraint_name, 
       constraint_type,
       search_condition
FROm   user_constraints
WHERE  table_name = 'EMP_TEST';

CREATE VIEW empvu80
  AS SELECT employee_id, last_name, salary
     FROM   employees
     WHERE  department_id = 80;
     
SELECT *
FROM   empvu80;

CREATE VIEW salvu50
  AS SELECT employee_id ID_NUMBER, 
            last_name NAME,
            salary*12 ANN_SALARY
FROM        employees
WHERE       department_id = 50;

SELECT *
FROM   salvu50;

CREATE OR REPLACE VIEW empvu80
  (id_number,
   name,
   sal,
   department_id)
AS SELECT employee_id,
          first_name || ' '
          || last_name,
             salary,
             department_id
   FROM   employees
   WHERE  department_id = 80;
   
CREATE OR REPLACE VIEW dept_sum_vu
  (name, 
   minsal, 
   maxsal, 
   avgsal)
AS SELECT   d.department_name, 
            MIN(e.salary),
            MAX(e.salary),
            AVG(e.salary)
   FROM     employees e JOIN departments d
   ON       (e.department_id = d.department_id)
   GROUP BY d.department_name;
   
SELECT *
FROM   dept_sum_vu;

DELETE empvu80
WHERE  id_number = 176;

SELECT *
FROM   employees;

ROLLBACK;

UPDATE salvu50
SET    name = 'YEDAM'
WHERE  id_number = 144;

CREATE OR REPLACE VIEW empvu20
AS SELECT *
   FROM employees
   WHERE department_id = 20 
             WITH CHECK OPTION;
             
UPDATE empvu20
SET    department_id = 10
WHERE  employee_id = 202;

DROP VIEW empvu80;

CREATE INDEX emp_last_name_idx
ON           employees(last_name);

SELECT ic.index_name, 
       ic.column_name,
       ic.column_position, 
       ix.uniqueness
FROM   user_indexes ix, 
       user_ind_columns ic
WHERE  ic.index_name = ix.index_name
AND    ic.table_name = 'EMPLOYEES';

DROP INDEX emp_last_name_idx;

CREATE SEQUENCE dept_deptid_seq
                INCREMENT BY 10
                START WITH 120
                MAXVALUE 9999
                NOCACHE
                NOCYCLE;

INSERT INTO departments(department_id,
            department_name,
            location_id)
VALUES      (dept_deptid_seq.NEXTVAL,
            'Support', 2500);

ROLLBACK;

ALTER SEQUENCE dept_deptid_seq
               INCREMENT BY 20
               MAXVALUE 999999
               NOCACHE
               NOCYCLE;
               
DROP SEQUENCE dept_deptid_seq;

CREATE SYNONYM d_sum
FOR  dept_sum_vu;

SELECT *
FROM   d_sum;

SELECT *
FROM   dept_sum_vu;

DROP VIEW dept_sum_vu;

DROP SYNONYM d_sum;

SELECT *
FROm   system_privilege_map;

GRANT select
ON    employees
TO    demo;

REVOKE select
ON     employees
FROM   demo;

--1. 기존의 DEPT 테이블을 삭제하고 다음 테이블 인스턴트 차트를 기반으로 DEPT 테이블을 생성하시오. 
--  테이블을 생성한 후, 테이블이 생성되었는지 확인하시오.
--
--열이름 		| ID 		| NAME
--키유형 		| Primary Key	|
--널/고유		|		|
--FK테이블		|		|
--FK 열	 	|		|
--데이터유형		| NUMBER 	| VARCHAR2
--길이 		| 7 		| 25
DROP TABLE dept;
CREATE TABLE dept
  (id NUMBER(7) PRIMARY KEY,
   NAME VARCHAR2(25));

SELECT *
FROM   dept;
   

--2. DEPARTMENTS 테이블의 선택된 열(department_id, department_name)의 데이터를 이용하여 
--   DEPT 테이블에 추가하시오. (힌트:INSERT INTO 서브쿼리)
INSERT INTO dept
  (id,
   name)
SELECT department_id,
       department_name
FROM   departments;

--3. 기존 EMP 테이블을 삭제한 후 다음 테이블 인스턴스 차트를 기반으로 EMP 테이블을 생성하시오.
--   테이블을 생성한 후, 테이블이 생성되었는지 확인하시오.
--
--열이름 		| ID 	  | LAST_NAME 	| FIRST_NAME 	| DEPT_ID
--키유형		|	  |		|		|
--널/고유		|	  |		|		|
--FK테이블 	|	  |		|		| DEPT
--FK 열 		|	  |		|		| ID
--데이터유형	| NUMBER  | VARCHAR2 	| VARCHAR2 	| NUMBER
--길이 		| 7 	  | 25 		| 25 		| 7

CREATE TABLE emp
  (id NUMBER(7),
   last_name VARCHAR2(25),
   first_name VARCHAR2(25),
   dept_id NUMBER(7),
FOREIGN KEY (dept_id) REFERENCES dept(id));

SELECT *
FROM   emp;

--4. EMPLOYEES 테이블 구조를 기반으로 EMPLOYEES2 테이블을 생성하시오.
--   EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY 및 DEPARTMENT_ID 열만 포함시키고 
--   새 테이블의 열 이름을 각각 ID, FIRST_NAME, LAST_NAME, SALARY 및 DEPT_ID로 지정하시오.
CREATE TABLE employees2
  (id,
   first_name,
   last_name,
   salary,
   dept_id)
  AS
    SELECT employee_id,
           first_name,
           last_name,
           salary,
           department_id
    FROM   employees
    WHERE  department_id = 1;

SELECT *
FROM   employees2;

--5. EMPLOYEES2 테이블에 job 컬럼을 추가하시오. 데이터타입은 VARCHAR2이고, 길이는 10입니다.
ALTER TABLE employees2
ADD         (job VARCHAR2(10));
 
--6. EMPLOYEES2 테이블을 삭제하시오.
DROP TABLE employees2;

--1. EMPLOYEES 테이블에서 사원 번호, 사원 이름 및 부서 번호를 기반으로 하는 
--   EMPLOYEES_VU라는 뷰를 생성하시오. 
--   사원 이름의 머리글을 EMPLOYEE로 변경하시오.
CREATE VIEW employees_vu
  AS
   SELECT employee_id,
          last_name EMPLOYEE,
          department_id
   FROM   employees;

--2. EMPLOYEES_VU 뷰의 내용을 표시하시오.
SELECT *
FROM   employees_vu;

--3. EMPLOYEES_VU 뷰를 사용하여 모든 사원의 이름 및 부서 번호를 표시하는 질의를 작성하시오.
SELECT EMPLOYEE,
       department_id
FROM   employees_vu;

--4. 부서 50의 모든 사원에 대한 사원 번호, 사원 이름 및 부서 번호를 포함하는 
--   DEPT50이라는 뷰를 생성하고 
--   뷰의 열 레이블을 EMPNO, EMPLOYEE 및 DEPTNO로 지정하시오. 
CREATE VIEW dept50
  AS
   SELECT employee_id EMPNO,
          last_name EMPLOYEE,
          department_id DEPTNO
   FROM   employees
   WHERE  department_id = 50;


--5. DEPT50 뷰의 구조와 내용을 표시하시오.
SELECT *
FROM   dept50;

DESC dept50;
--6. 모든 사원의 이름, 부서 이름, 급여 및 급여 등급을 기반으로 하는 
--   SALARY_VU라는 뷰를 생성하시오. 
--   EMPLOYEES, DEPARTMENTS 및 JOB_GRADES 테이블을 사용하고 
--   열 레이블을 각각 Employee, Department, Salary 및 Grade로 지정하시오. XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
CREATE VIEW salary_vu
  AS
   SELECT e.last_name AS 'Employee',
          d.department_name AS 'Department',
          e.salary AS 'Salary',
          j.grade_level AS 'Grade'
   FROM   employees e
   JOIN departments d
   ON   (d.department_name)
   JOIN job_grades j
   ON   (j.salary)
   WHERE  j.grade_level BETWEEN j.lowest_sal AND j.highest_sal;

--7. 기본 키 열에 사용할 시퀀스를 생성하시오. 시퀀스 값은 300부터 시작하여 10씩 증가하며 최대 1000까지 가능하도록 하고 시퀀스 이름은 DEPT_ID_SEQ로 지정하시오. 기존 동일한 이름의 시퀀스가 존재하면 삭제를 먼저 하시오.
--
--8. DEPARTMENTS 테이블의 department_name column에 인덱스를 생성하시오.
--
--9. EMPLOYEES 테이블에 대해 E 라는 동의어를 생성하시오.

SELECT employee_id,
       last_name,
       salary,
       department_id
FROM   employees
WHERE  salary BETWEEN 7000 AND 12000
  AND  last_name LIKE ('H%');
  
SELECT employee_id,
       last_name,
       job_id,
       salary,
       department_id
FROM   employees
WHERE  department_id IN (50,60)
  AND  salary > 5000;
  
SELECT last_name,
       salary,
       CASE WHEN salary <= 5000  THEN salary * 1.2
            WHEN salary <= 10000 THEN salary * 1.15
            WHEN salary <= 15000 THEN salary * 1.1
                                 ELSE salary
       END AS "REVISED_SALARY"
FROM   employees
WHERE  employee_id = '&employee_num';

SELECT d.department_id,
       d.department_name,
       l.city
FROM   departments d JOIN locations l
       ON (d.location_id = l.location_id);
       
SELECT employee_id,
       last_name,
       job_id
FROM   employees
WHERE  department_id IN (SELECT department_id
                         FROM   departments
                         WHERE  UPPER(department_name) LIKE 'IT');
                         
SELECT employee_id,
       first_name,
       last_name,
       email,
       phone_number,
       TO_CHAR(hire_date,'YY-DY-DD'), --형식 맞추기
       job_id
FROM   employees
WHERE  hire_date < TO_DATE('2014/01/01','YYYY/MM/DD')
  AND  UPPER(job_id) IN ('ST_CLERK');

SELECT last_name,
       job_id,
       salary,
       TO_CHAR(commission_pct) --소수점 앞 0 떼기
FROM   employees
WHERE  commission_pct IS NOT NULL
ORDER BY salary DESC;

CREATE TABLE prof
    (profno NUMBER(4),
     name   VARCHAR2(15) NOT NULL,
     id     VARCHAR2(15) NOT NULL,
     hiredate date,
     pay NUMBER(4));

INSERT INTO prof
  (profno,
   name,
   id,
   hiredate,
   pay)
VALUES (1001,
        'Mark',
        'm1001',
        TO_DATE('07/03/01','YY/MM/DD'),
        800);

INSERT INTO prof
  (profno,
   name,
   id,
   hiredate)
VALUES (1003,
        'Adam',
        'a1003',
        TO_DATE('11/03/02','YY/MM/DD'));
        
commit;
select *
from prof;

UPDATE prof
SET    pay = 1200
WHERE  profno = 1001;

DELETE FROM prof
WHERE       profno = 1003;

ALTER TABLE prof
ADD PRIMARY KEY(profno);

ALTER TABLE prof
ADD   (gender CHAR(3));

ALTER TABLE prof
MODIFY (name VARCHAR2(20));

desc prof;

SELECT A.TABLE_NAME
     , A.CONSTRAINT_NAME
     , B.COLUMN_NAME     
     , B.POSITION
  FROM USER_CONSTRAINTS  A
     , USER_CONS_COLUMNS B
 WHERE A.TABLE_NAME      = 'JOBS'
   AND A.CONSTRAINT_TYPE = 'P' 

   AND A.OWNER           = B.OWNER
   AND A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
 ORDER BY B.POSITION
;