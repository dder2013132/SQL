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
WHERE  hire_date BETWEEN '14/01/01' AND '14/12/31';

--8. �����ڰ� ���� ��� ����� �̸��� ������ ǥ���Ͻÿ�.
SELECT last_name,
       job_id
FROM   employees
WHERE  manager_id IS NULL;

--10. �̸��� ����° ���ڰ� a�� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT last_name
FROM   employees
WHERE  

--11. �̸��� a�� e�� �ִ� ��� ����� �̸��� ǥ���Ͻÿ�.
--
--12. ������ ���� ���(SA_REP) �Ǵ� �繫��(ST_CLERK)�̸鼭 
--    �޿��� 2,500, 3,500, 7,000�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.
--
--13. Ŀ�̼� ����(commission_pct)�� 20%�� ��� ����� �̸�, �޿� �� Ŀ�̼��� ǥ���ϵ��� 
--    ��ɹ��� �ۼ��Ͽ� �����Ͻÿ�.