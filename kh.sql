--3. EMPLOYEE ���̺��� 20�� �̻� �ټ����� �̸�,����,���ʽ����� ����Ͻÿ�
SELECT EMP_NAME, SALARY, BONUS
FROM EMPLOYEE WHERE TRUNC(SYSDATE-HIRE_DATE) / 365 >=20;


SELECT EMP_NAME, SALARY, BONUS
FROM EMPLOYEE WHERE ( SYSDATE-HIRE_DATE) / 365 >=20;


select (SYSDATE-HIRE_DATE)/365 from employee;

SELECT EMP_NAME, SALARY, BONUS
FROM EMPLOYEE WHERE TRUNC(SYSDATE-HIRE_DATE)>=20*365;

--TRUNC(��¥-��¥) �ϸ� �� ��(day)�� ������ �˴ϴ�. 
--where ���� ���ǹ�(������ �񱳰�)�� ���ߵǴµ� �Ʊ�� ���ǽ��� ��Ͼ��ϰ� trunc�� �Ἥ ���� �߻���
--trunc���� ���� ��쿡�� select�� ���� ���ǹ� ���� ��밡��
--trunc('20200720' - '20200716') �ϴ� ��� 4�� return�� 
--��, TRUNC(SYSDATE-HIRE_DATE) �� �κ� ���� ���糯¥ - �Ի糯¥ => �ټ� �� �� (day)�� ��ȯ
--�츮�� 20'��'�� �ʿ��ϹǷ� ������ �ٽ� �ٲ������ --> 365�Ϸ� ������
--�ټ� �ϼ� /365 => �ټӳ��
--20�� �̻��� ����� sort�ϰ� �����Ƿ� >=20 ���ǹ� ������� 



select emp_name,sysdate - hire_Date, trunc('20200720' - '20200716')   from employee;


select * from employee;