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
SELECT s.last_name "Employee",
       s.manager_id AS "Emp#",
       m.last_name AS "Manager",
       m.employee_id AS "Mgr#"
FROM   employees s LEFT OUTER JOIN employees m
       ON (s.manager_id = m.employee_id);

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
            ON e.salary
               BETWEEN j.lowest_sal AND j.highest_sal;