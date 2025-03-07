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

--1. DEPARTMENTS ���̺��� ��� �����͸� ��ȸ�Ͻÿ�.
SELECT department_id,
       department_name,
       manager_id,
       location_id
FROM   departments;

--2. EMPLOYEES ���̺���
--  ��� ��ȣ�� ���� �տ� ���� �̾ �� ����� �̸�(last_name), ���� �ڵ�(job_id), 
--�Ի���(hire_date)�� ������ ���Ǹ� �ۼ��Ͻÿ�. HIRE_DATE ���� STARTDATE��� ��Ī�� �����Ͻÿ�. 
SELECT employee_id,
       last_name,
       job_id,
       hire_date AS startdate
FROM   employees;

--3. EMPLOYEES ���̺��� ���� �ڵ�(job_id)�� �ߺ����� �ʰ� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
SELECT DISTINCT job_id
FROM   employees;

--4. 2���� ��ɹ��� �����Ͻÿ�. �Ӹ����� ���� Emp #, Employee, Job �� Hire Date�� 
--����� ���� ���Ǹ� �ٽ� �����Ͻÿ�.
SELECT employee_id AS "Emp #",
       last_name AS "Employee",
       job_id AS "Job",
       hire_date AS "Hire Date"
FROM   employees;

--5. ���� ID(job_id)�� �̸�(last_name)�� ������ ���� ��ǥ �� �������� �����Ͽ� ǥ���ϰ� 
--�� �̸��� Employee and Title�� �����Ͻÿ�.
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

--1. �޿��� 12,000�� �Ѵ� ����� �̸��� �޿��� ǥ���ϴ� ���Ǹ� �����Ͻÿ�.
SELECT last_name,
       salary
FROM   employees
WHERE  salary > 12000;

--2. ��� ��ȣ�� 176�� ����� �̸��� �μ� ��ȣ�� ǥ���ϴ� ���Ǹ� �����Ͻÿ�.
SELECT last_name,
       department_id
FROM   employees
WHERE  employee_id = 176;

--3. �޿��� 5,000���� 12,000 ���̿� ���Ե��� �ʴ� 
--   ��� ����� �̸��� �޿��� ǥ���ϵ��� ���Ǹ� �����Ͻÿ�.
SELECT last_name,
       salary
FROM   employees
WHERE  salary NOT BETWEEN 5000 AND 12000;

--4. last name�� Matos�� Taylor�� ����� last_name, ���� ID, �׸��� �Ի����� ǥ���Ͻÿ�.
SELECT last_name,
       department_id,
       hire_date
FROM   employees
WHERE  last_name IN ('Matos','Taylor');

--6. �޿��� 5,000�� 12,000 �����̰� �μ� ��ȣ�� 20 �Ǵ� 50�� ����� �̸��� �޿��� �����ϵ��� ���Ǹ� �ۼ��Ͻÿ�. 
--   �� ���̺��� Employee�� Monthly Salary�� ���� �����Ͻÿ�.
SELECT last_name AS "Employee",
       salary AS "Monthly Salary"
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000
  AND  department_id IN ('20', '50');

--7. 2014�⿡ �Ի��� ��� ����� �̸��� �Ի����� ǥ���Ͻÿ�.
SELECT last_name,
       hire_date
FROM   employees
--WHERE  hire_date BETWEEN '14/01/01' AND '14/12/31';
WHERE  hire_date LIKE '14%';

--8. �����ڰ� ���� ��� ����� �̸��� ������ ǥ���Ͻÿ�.
SELECT last_name,
       job_id
FROM   employees
WHERE  manager_id IS NULL;

--10. �̸��� ����° ���ڰ� a�� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT last_name
FROM   employees
WHERE  last_name LIKE '__a%';

--11. �̸��� a�� e�� �ִ� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT last_name
FROM   employees
WHERE  last_name LIKE '%a%'
  AND  last_name LIKE '%e%';
--
--12. ������ ���� ���(SA_REP) �Ǵ� �繫��(ST_CLERK)�̸鼭 
--    �޿��� 2,500, 3,500, 7,000�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.
SELECT last_name,
       job_id,
       salary
FROM   employees
WHERE  job_id IN ('SA_REP','ST_CLERK') AND
       salary NOT IN ('2500','3500','7000');
--
--13. Ŀ�̼� ����(commission_pct)�� 20%�� ��� ����� �̸�, �޿� �� Ŀ�̼��� ǥ���ϵ��� 
--    ��ɹ��� �ۼ��Ͽ� �����Ͻÿ�.
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
ORDER BY annsal; /*���� �״�� ��� ����*/

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
       NEXT_DAY(hire_date, '��'),
       LAST_DAY(hire_date)
FROM   employees;

SELECT NEXT_DAY(SYSDATE, '��'),
       NEXT_DAY(SYSDATE, 'ȭ')
FROM   dual;

SELECT SYSDATE,
       ROUND(SYSDATE) ROUND1,
       ROUND(SYSDATE, 'DD') ROUND2, -- �� ���� �ݿø�(����)
       ROUND(SYSDATE, 'DAY') ROUND3, -- �� ���� �ݿø�(������)
       ROUND(SYSDATE, 'MON') ROUND4, -- �� ���� �ݿø�(15�� ����)
       ROUND(SYSDATE, 'YEAR') ROUND5 -- �� ���� �ݿø�(7�� 1�� ����)
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

--1. ���� ��¥�� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� �� ���̺��� Date�� �����Ͻÿ�.
SELECT SYSDATE AS "Date"
FROM dual;

--2. �� ����� ���� ��� ��ȣ, �̸�, �޿� �� 15% �λ�� �޿��� ������ ǥ���Ͻÿ�. 
--   �λ�� �޿� ���� ���̺��� New Salary�� �����Ͻÿ�. 
SELECT employee_id,
       last_name,
       salary,
       ROUND(salary * 1.15 , 0) AS "New salary"
FROM   employees;

--3. 2�� ���Ǹ� �����Ͽ� �� �޿����� ���� �޿��� ���� �� ���� �߰��ϰ� ���̺��� Increase�� �����ϰ� ������ ���Ǹ� �����Ͻÿ�.
SELECT employee_id,
       last_name,
       salary,
       ROUND((salary * 1.15) - salary , 0) AS "Increase"
FROM employees;

--4. �̸��� J, A �Ǵ� M���� �����ϴ� ��� ����� �̸�(�빮�� ǥ��) �� �̸� ���̸� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� ������ ������ ���̺��� �����Ͻÿ�. ����� ����� �̸��� ���� �����Ͻÿ�.
SELECT UPPER(first_name) AS "name",
       LENGTH(first_name)
FROM   employees
WHERE  SUBSTR(first_name,1,1) IN ('J','A','M')
ORDER BY "name";

--5. �� ����� �̸��� ǥ���ϰ� �ٹ� �� ��(�Ի��Ϸκ��� ��������� �� ��)�� ����Ͽ� �� ���̺��� MONTHS_WORKED�� �����Ͻÿ�. ����� ������ �ݿø��Ͽ� ǥ���Ͻÿ�.
SELECT last_name,
       ROUND((SYSDATE - hire_date),0) MONTHS_WORKED
FROM   employees;

--6. ��� ����� �� �� �޿��� ǥ���ϱ� ���� query�� �ۼ��մϴ�. �޿��� 15�� ���̷� ǥ�õǰ� ���ʿ� $ ��ȣ�� ä�������� ������ �����Ͻÿ�. �� ���̺��� SALARY �� �����մϴ�.
SELECT last_name,
       LPAD(salary,15,'$') SALARY
FROM   employees;

--7. �μ� 90�� ��� ����� ���� ��(last_name) �� ���� �Ⱓ(�� ����)�� ǥ���ϵ��� query �� �ۼ��Ͻÿ�. �ָ� ��Ÿ���� ���� ���� ���̺�� TENURE�� �����ϰ� �ָ� ��Ÿ���� ���� ���� ������ ��Ÿ���ÿ�.
SELECT last_name,
       ROUND(((SYSDATE - hire_date)/7),0) TENURE
FROM   employees;

SELECT TO_NUMBER('$15,000', '$99,999')
FROM   dual;

SELECT TO_DATE('2024��, 03��, 04��', 'YYYY"��",MM"��",DD"��"')
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
       NVL(TO_CHAR(commission_pct), 'Ŀ�̼Ǿ���')
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

--1. �� ����� ���� ���� �׸��� �����ϴ� ���Ǹ� �ۼ��ϰ� 
--   �� ���̺��� Dream Salaries�� �����Ͻÿ�. (��ȯ �Լ�, ���� ������)
--<employee last_name> earns <salary> monthly but wants <salary�� 3��>. 
--<����> Matos earns $2,600.00 monthly but wants $7,800.00.
SELECT last_name||' earns'||TO_CHAR(salary,'$999,999.00')||' monthly but watns'||TO_CHAR(salary*3,'$999,999.00')
FROM   employees;

--2. ����� �̸�, �Ի��� �� �޿� �������� ǥ���Ͻÿ�.
--   �޿� �������� ���� ���� ����� �� ù��° �������Դϴ�.
--   �� ���̺��� REVIEW�� �����ϰ� 
--   ��¥�� "2010.03.31 ������"�� ���� �������� ǥ�õǵ��� �����Ͻÿ�. (��¥ �Լ�)
SELECT last_name,
       hire_date,
       NEXT_DAY(ADD_MONTHS(hire_date, 6),'��') REVIEW
FROM   employees;
       

--3. �̸�, �Ի��� �� ���� ���� ������ ǥ���ϰ�
--   �� ���̺��� DAY�� �����Ͻÿ�. (��¥ �Լ�)
--   �������� �������� �ؼ� ������ �������� ����� �����Ͻÿ�. (���)
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

--4. ����� �̸��� Ŀ�̼��� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
--   Ŀ�̼��� ���� �ʴ� ����� ��� ��No Commission���� ǥ���Ͻÿ�. (NVL �Լ�)
--   �� ���̺��� COMM���� �����Ͻÿ�.
SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No Commission') COMM
FROM   employees;

--5. CASE ������ ����Ͽ� 
--   ���� �����Ϳ� ���� JOB_ID ���� ���� �������� 
--   ��� ����� ����� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
--
--����         ���
--AD_PRES     A
--ST_MAN      B
--IT_PROG     C
--SA_REP      D
--ST_CLERK    E
--�׿�         0

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

--WHERE ������ GROUP �Լ��� �� �� ����, HAVING ������ ���
--���� ����
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

SELECT    department_id, --GROUP�Լ��� ���� ���� SELECT ���� ��� COLUMN�� ���� �ȵȴ�
          MAX(AVG(salary))
FROM      employees
GROUP BY  department_id;

--���� �� ������ ��ȿ���� �Ǻ��Ͽ� True �Ǵ� False�� ���Ͻÿ�.
--1. �׷� �Լ��� ���� �࿡ ����Ǿ� �׷� �� �ϳ��� ����� ����Ѵ�.
-- TRUE
--2. �׷� �Լ��� ��꿡 ���� �����Ѵ�.
-- FALSE
--3. WHERE ���� �׷� ��꿡 ��(row)�� ���Խ�Ű�� ���� ���� �����Ѵ�.
-- FALSE
--4. ��� ����� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ǥ���Ͻÿ�. �� ���̺��� ���� Maximum, Minimum, Sum �� Average�� �����ϰ� ����� ������ �ݿø��ϵ��� �ۼ��Ͻÿ�.
SELECT MAX(salary) Maximum,
       MIN(salary) Minimum,
       SUM(salary) Sum,
       ROUND(AVG(salary),0) Average
FROM   employees;

--5. ���� ���Ǹ� �����Ͽ� �� ���� ����(job_id)���� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ǥ���Ͻÿ�. 
SELECT job_id,
       ROUND(MAX(salary)) "Maximum",
       ROUND(MIN(salary)) "Minimum",
       ROUND(SUM(salary)) "Sum",
       ROUND(AVG(salary)) "Average"
FROM   employees
GROUP BY job_id;

--6. ������ ��� ���� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
SELECT job_id,
       COUNT(*)
FROM   employees
GROUP BY job_id;

--7. ������ ���� Ȯ���Ͻÿ�. �� ���̺��� Number of Managers�� �����Ͻÿ�. (��Ʈ: MANAGER_ID ���� ���)
SELECT COUNT(DISTINCT manager_id) AS "Number of Managers"
FROM   employees;

--8. �ְ� �޿��� ���� �޿��� ������ ǥ���ϴ� ���Ǹ� �ۼ��ϰ� �� ���̺��� DIFFERENCE�� �����Ͻÿ�.
SELECT MAX(salary)-MIN(salary) DIFFERENCE
FROM employees;

--9. ������ ��ȣ �� �ش� �����ڿ� ���� ����� ���� �޿��� ǥ���Ͻÿ�.
--�����ڸ� �� �� ���� ��� �� ���� �޿��� 6,000 �̸��� �׷��� ���ܽ�Ű�� ����� �޿��� ���� ������������ �����Ͻÿ�.
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

-- n���� ���̺��� �Բ� �����Ϸ���, �ּ� (n-1)���� ���� ���ǹ��� �ʿ�

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

--UNION ALL -> ����Ʈ�� ���� �ȵ�

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

--���� ���� ���� ����ϴ� ON�� ������ �ַ� ��� (�⺻Ű�� �ܷ�Ű ���)
--�Ʒ�ó�� ���
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e JOIN departments d
        ON (e.department_id = d.department_id);

--���� �Ʒ��� ����� ����

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
           
-- ORACLE JOIN ��
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

--ORACLE JOIN ON ��
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e, departments d
WHERE  e.department_id = d.department_id
  AND  e.manager_id = 149;
  
--���� ���̺��� ALIAS�� �ٸ��� �Ͽ� �� ���� ���̺�� �νĽ�Ŵ - SELF JOIN
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

-- LEFT OUTER JOIN(LEFT TABLE�� NULL ����)
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e LEFT OUTER JOIN departments d
       ON (e.department_id = d.department_id);
       
-- RIGHT OUTER JOIN(RIGHT TABLE�� NULL ����)
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e RIGHT OUTER JOIN departments d
       ON (e.department_id = d.department_id);
       
-- FULL OUTER JOIN(�� �� NULL ����)
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e FULL OUTER JOIN departments d
       ON (e.department_id = d.department_id);
       
--ORACLE ������ 'OUTER' ���� ��
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e FULL JOIN departments d
       ON (e.department_id = d.department_id);

--ORACLE OUTER JOIN '(+)' ��ġ�� ���� LEFT RIGHT ����, ORACLE�� FULL OUTER JOIN ����
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

--2. ��� ����� �̸�, �Ҽ� �μ���ȣ �� �μ� �̸��� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e JOIN departments d
       ON (e.department_id = d.department_id);

--1. LOCATIONS �� COUNTRIES ���̺��� ����Ͽ� 
--   ��� �μ��� �ּҸ� �����ϴ� query�� �ۼ��Ͻÿ�. 
--   ��¿� ��ġID(location_id), �ּ�(street_address), ��/��(city),
--   ��/��(state_province) �� ����(country_name)�� ǥ���Ͻÿ�.
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

--4. ����� �̸� �� ��� ��ȣ�� 
--   �ش� �������� �̸� �� ������ ��ȣ�� �Բ� ǥ���ϴ� ������ �ۼ��ϴµ�, 
--   �� ���̺��� ���� Employee, Emp#, Manager �� Mgr#���� �����Ͻÿ�. (Self ����)
SELECT s.last_name "Employee",
       s.manager_id AS "Emp#",
       m.last_name AS "Manager",
       m.employee_id AS "Mgr#"
FROM   employees s JOIN employees m
       ON (s.manager_id = m.employee_id);

--5. King�� ���� �ش� �����ڰ� �������� ���� ����� ǥ���ϵ��� 4�� ������ �����մϴ�. 
--   ��� ��ȣ������ ����� �����Ͻÿ�. (outer ����, ����)
SELECT   s.last_name "Employee",
         s.manager_id AS "Emp#",
         m.last_name AS "Manager",
         m.employee_id AS "Mgr#"
FROM     employees s LEFT OUTER JOIN employees m
         ON (s.manager_id = m.employee_id)
ORDER BY s.employee_id;

--3. Toronto�� �ٹ��ϴ� ����� ���� ������ �ʿ�� �մϴ�. 
--   toronto���� �ٹ��ϴ� ��� ����� �̸�, ����, �μ���ȣ �� �μ� �̸��� ǥ���Ͻÿ�. (�߰�����)
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

--6. ���� ��� �� �޿��� ���� ������ �ʿ�� �մϴ�. 
--   ��� ����� �̸�, ����, �μ� �̸�, �޿� �� ����� ǥ���ϴ� query�� �ۼ��Ͻÿ�. (�񵿵����� ����)
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
               
-- ���������� �ٸ� SELECT ������ ���� ����� SELECT ���� �ǹ�

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
                      
--�����ڿ� �°� RETURN �� ��½�ų ��

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
  
--  1. Zlotkey(last_name)�� ������ �μ��� ���� ��� ����� �̸��� �Ի����� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�. Zlotkey�� ������� �����Ͻÿ�.
SELECT last_name,
       hire_date
FROM   employees
WHERE  department_id = (SELECT department_id
                        FROM employees
                        WHERE last_name = 'Zlotkey')
  AND  last_name <> 'Zlotkey';

--2. �޿��� ��� �޿����� ���� ��� ����� ��� ��ȣ�� �̸��� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� ����� �޿��� ���� ������������ �����Ͻÿ�.
SELECT employee_id,
       last_name
FROM   employees
WHERE  salary > (SELECT AVG(salary)
                 FROM employees)
ORDER BY salary;

--3. �̸��� u�� ���Ե� ����� ���� �μ����� ���ϴ� ��� ����� ��� ��ȣ�� �̸��� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� ���Ǹ� �����Ͻÿ�.
SELECT employee_id,
       last_name
FROM   employees
WHERE  department_id IN (SELECT department_id
                        FROM   employees
                        WHERE  last_name LIKE ('%u%'));

--4. �μ� ��ġ ID(location_id)�� 1700�� ��� ����� �̸�, �μ� ��ȣ �� ���� ID�� ǥ���Ͻÿ�.
SELECT last_name, 
       department_id,
       job_id
FROM   employees
WHERE  department_id IN (SELECT department_id
                        FROM   departments
                        WHERE  location_id = '1700');

--5. King���� �����ϴ�(manager�� King) ��� ����� �̸��� �޿��� ǥ���Ͻÿ�.
SELECT last_name,
       salary
FROM   employees
WHERE  manager_id IN (SELECT employee_id
                     FROM   employees
                     WHERE  last_name = 'King');

--6. Executive �μ��� ��� ����� ���� �μ� ��ȣ, �̸� �� ���� ID�� ǥ���Ͻÿ�.
SELECT department_id,
       last_name,
       job_id
FROM   employees
WHERE  department_id IN (SELECT department_id
                         FROM   departments
                         WHERE  department_name = 'Executive');

--7. ��� �޿����� ���� �޿��� �ް� �̸��� u�� ���Ե� ����� ���� �μ����� �ٹ��ϴ� ��� ����� ��� ��ȣ, �̸� �� �޿��� ǥ���Ͻÿ�.
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

--�⺻Ű�� NULL�� ���� �Ұ�(���Ἲ ���� ���� ����) ��
INSERT INTO departments
  (department_name,
   manager_id,
   location_id)
VALUES ('Finance',
        null,
        NULL);
        
--�⺻Ű�� �ߺ��� ���� �Ұ�(���Ἲ ���� ���� ����) ��
INSERT INTO departments
  (department_id,
  department_name,
  manager_id,
  location_id)
VALUES (10,
        'Finance',
        null,
        NULL);
        
-- ��ü, ����, ������ ���Ἲ

--�ܷ�Ű(location_id)�� �θ�Ű�� ���� �� ���� �Ұ�(���Ἲ ���� ���� ����) ��
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
        TO_DATE('2�� 3, 1999', 'MON DD, YYYY'),
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

--���� ���Ἲ ���� ���� ���� - �ڽ� ���̺�(employees table)�� �����ǰ� �����Ƿ� ������ �� ����.
DELETE departments
WHERE  department_id = 90;

rollback;

SELECT *
FROM copy_emp;

--delete -> dml, truncate table -> ddl, dml->transaction ��, ddl->�ϳ��� transaction�̱� ������ transaction ����, rollback X
TRUNCATE TABLE copy_emp;

rollback;

--1. ������ ���� �ǽ��� ����� MY_EMPLOYEE ���̺��� �����Ͻÿ�.
CREATE TABLE my_employee
  (id         NUMBER(4) NOT NULL,
   last_name  VARCHAR2(25),
   first_name VARCHAR2(25),
   userid     VARCHAR2(8),
   salary     NUMBER(9,2));

--2. MY_EMPLOYEE ���̺��� ������ ǥ���Ͽ� �� �̸��� �ĺ��Ͻÿ�.
desc my_employee;

--3. ���� ���� �����͸� MY_EMPLOYEE ���̺� �߰��Ͻÿ�.(INSERT)
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
--4. ���̺� �߰��� �׸��� Ȯ���Ͻÿ�.(SELECT)
SELECT *
FROM   my_employee;
--5. ��� 3�� ��(last_name)�� Drexler�� �����Ͻÿ�.(UPDATE)
UPDATE my_employee
SET last_name = 'Drexler'
WHERE id = 3;
--6. �޿��� 900 �̸��� ��� ����� �޿��� 1000���� �����ϰ� ���̺��� ���� ������ Ȯ���Ͻÿ�.(UPDATE)
UPDATE my_employee
SET    salary = 1000
WHERE  salary < 900;

SELECT *
FROM   my_employee;
--7. MY_EMPLOYEE ���̺��� ��� 3�� �����ϰ� ���̺��� ���� ������ Ȯ���Ͻÿ�.(DELETE)
DELETE my_employee
WHERE  id = 3;

SELECT *
FROM   my_employee;
--8. ���̺��� ������ ��� �����ϰ� ���̺� ������ ��� �ִ��� Ȯ���Ͻÿ�.(DELETE)
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

--TRUNCATE -> DDL�� ��ɾ� �ϳ��� �ϳ��� transaction�̹Ƿ� 
--transaction ����
--������ ���� transaction ���� -> �������� �ݿ�
--�� ���Ŀ� ������ �� DCL, DDL ������ ROLLBACK
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

--commit -> transaction ���� ����
--rollback -> transaction ������� �ʾҴٸ� ���� ���

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

--table data�� ���� ������ table�� �������
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
--������ ����
PURGE RECYCLEBIN;
--SHIFT+DELETE
DROP TABLE dept80 PURGE;

RENAME dept90 TO d90;

SELECT *
FROM   dept90;

desc employees;
--NOT NULL ���������� �ϳ��� ���� ���ؼ� ����

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
 
 --��� �ϳ��� ������������ ������� TABLE LEVEL���� �ؾ���
 --(�⺻Ű��)�ĺ�Ű = ���ϼ�+�ּҼ� ����
 --�ϳ��� �����ϸ� �⺻Ű, ������ ��üŰ
 --����Ű=���ϼ� ����, �ּҼ� �Ҹ���->�� ���� �� ����
 
 DROP TABLE emp_test;
 
 --FOREIGN KEY�� TABLE LEVEL���� ���� ��
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

-- FOREIGN KEY�� COLUMN LEVEL���� ���� ��
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

--PRIMARY KEY�� ���� FOREIGN KEY���� ���� (CASCADE)
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

--1. ������ DEPT ���̺��� �����ϰ� ���� ���̺� �ν���Ʈ ��Ʈ�� ������� DEPT ���̺��� �����Ͻÿ�. 
--  ���̺��� ������ ��, ���̺��� �����Ǿ����� Ȯ���Ͻÿ�.
--
--���̸� 		| ID 		| NAME
--Ű���� 		| Primary Key	|
--��/����		|		|
--FK���̺�		|		|
--FK ��	 	|		|
--����������		| NUMBER 	| VARCHAR2
--���� 		| 7 		| 25
DROP TABLE dept;
CREATE TABLE dept
  (id NUMBER(7) PRIMARY KEY,
   NAME VARCHAR2(25));

SELECT *
FROM   dept;
   

--2. DEPARTMENTS ���̺��� ���õ� ��(department_id, department_name)�� �����͸� �̿��Ͽ� 
--   DEPT ���̺� �߰��Ͻÿ�. (��Ʈ:INSERT INTO ��������)
INSERT INTO dept
  (id,
   name)
SELECT department_id,
       department_name
FROM   departments;

--3. ���� EMP ���̺��� ������ �� ���� ���̺� �ν��Ͻ� ��Ʈ�� ������� EMP ���̺��� �����Ͻÿ�.
--   ���̺��� ������ ��, ���̺��� �����Ǿ����� Ȯ���Ͻÿ�.
--
--���̸� 		| ID 	  | LAST_NAME 	| FIRST_NAME 	| DEPT_ID
--Ű����		|	  |		|		|
--��/����		|	  |		|		|
--FK���̺� 	|	  |		|		| DEPT
--FK �� 		|	  |		|		| ID
--����������	| NUMBER  | VARCHAR2 	| VARCHAR2 	| NUMBER
--���� 		| 7 	  | 25 		| 25 		| 7

CREATE TABLE emp
  (id NUMBER(7),
   last_name VARCHAR2(25),
   first_name VARCHAR2(25),
   dept_id NUMBER(7),
FOREIGN KEY (dept_id) REFERENCES dept(id));

SELECT *
FROM   emp;

--4. EMPLOYEES ���̺� ������ ������� EMPLOYEES2 ���̺��� �����Ͻÿ�.
--   EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY �� DEPARTMENT_ID ���� ���Խ�Ű�� 
--   �� ���̺��� �� �̸��� ���� ID, FIRST_NAME, LAST_NAME, SALARY �� DEPT_ID�� �����Ͻÿ�.
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

--5. EMPLOYEES2 ���̺� job �÷��� �߰��Ͻÿ�. ������Ÿ���� VARCHAR2�̰�, ���̴� 10�Դϴ�.
ALTER TABLE employees2
ADD         (job VARCHAR2(10));
 
--6. EMPLOYEES2 ���̺��� �����Ͻÿ�.
DROP TABLE employees2;

--1. EMPLOYEES ���̺��� ��� ��ȣ, ��� �̸� �� �μ� ��ȣ�� ������� �ϴ� 
--   EMPLOYEES_VU��� �並 �����Ͻÿ�. 
--   ��� �̸��� �Ӹ����� EMPLOYEE�� �����Ͻÿ�.
CREATE VIEW employees_vu
  AS
   SELECT employee_id,
          last_name EMPLOYEE,
          department_id
   FROM   employees;

--2. EMPLOYEES_VU ���� ������ ǥ���Ͻÿ�.
SELECT *
FROM   employees_vu;

--3. EMPLOYEES_VU �並 ����Ͽ� ��� ����� �̸� �� �μ� ��ȣ�� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
SELECT EMPLOYEE,
       department_id
FROM   employees_vu;

--4. �μ� 50�� ��� ����� ���� ��� ��ȣ, ��� �̸� �� �μ� ��ȣ�� �����ϴ� 
--   DEPT50�̶�� �並 �����ϰ� 
--   ���� �� ���̺��� EMPNO, EMPLOYEE �� DEPTNO�� �����Ͻÿ�. 
CREATE VIEW dept50
  AS
   SELECT employee_id EMPNO,
          last_name EMPLOYEE,
          department_id DEPTNO
   FROM   employees
   WHERE  department_id = 50;


--5. DEPT50 ���� ������ ������ ǥ���Ͻÿ�.
SELECT *
FROM   dept50;

DESC dept50;
--6. ��� ����� �̸�, �μ� �̸�, �޿� �� �޿� ����� ������� �ϴ� 
--   SALARY_VU��� �並 �����Ͻÿ�. 
--   EMPLOYEES, DEPARTMENTS �� JOB_GRADES ���̺��� ����ϰ� 
--   �� ���̺��� ���� Employee, Department, Salary �� Grade�� �����Ͻÿ�. XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
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

--7. �⺻ Ű ���� ����� �������� �����Ͻÿ�. ������ ���� 300���� �����Ͽ� 10�� �����ϸ� �ִ� 1000���� �����ϵ��� �ϰ� ������ �̸��� DEPT_ID_SEQ�� �����Ͻÿ�. ���� ������ �̸��� �������� �����ϸ� ������ ���� �Ͻÿ�.
--
--8. DEPARTMENTS ���̺��� department_name column�� �ε����� �����Ͻÿ�.
--
--9. EMPLOYEES ���̺� ���� E ��� ���Ǿ �����Ͻÿ�.

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
       TO_CHAR(hire_date,'YY-DY-DD'), --���� ���߱�
       job_id
FROM   employees
WHERE  hire_date < TO_DATE('2014/01/01','YYYY/MM/DD')
  AND  UPPER(job_id) IN ('ST_CLERK');

SELECT last_name,
       job_id,
       salary,
       TO_CHAR(commission_pct) --�Ҽ��� �� 0 ����
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