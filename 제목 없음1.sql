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
SELECT last_name||' earns'||TO_CHAR(salary,'$999,999.99')||' monthly but watns'||TO_CHAR(salary*3,'$999,999.99')
FROM   employees;

--2. ����� �̸�, �Ի��� �� �޿� �������� ǥ���Ͻÿ�.
--   �޿� �������� ���� ���� ����� �� ù��° �������Դϴ�.
--   �� ���̺��� REVIEW�� �����ϰ� 
--   ��¥�� "2010.03.31 ������"�� ���� �������� ǥ�õǵ��� �����Ͻÿ�. (��¥ �Լ�)
SELECT last_name,
       hire_date,
       NEXT_DAY(ADD_MONTHS(hire_date, 6),'Monday') REVIEW
FROM   employees;
       

--3. �̸�, �Ի��� �� ���� ���� ������ ǥ���ϰ�
--   �� ���̺��� DAY�� �����Ͻÿ�. (��¥ �Լ�)
--   �������� �������� �ؼ� ������ �������� ����� �����Ͻÿ�. (���)

--4. ����� �̸��� Ŀ�̼��� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
--   Ŀ�̼��� ���� �ʴ� ����� ��� ��No Commission���� ǥ���Ͻÿ�. (NVL �Լ�)
--   �� ���̺��� COMM���� �����Ͻÿ�.
--
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