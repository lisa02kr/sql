--3. EMPLOYEE 테이블에서 20년 이상 근속자의 이름,월급,보너스율를 출력하시오
SELECT EMP_NAME, SALARY, BONUS
FROM EMPLOYEE WHERE TRUNC(SYSDATE-HIRE_DATE) / 365 >=20;


SELECT EMP_NAME, SALARY, BONUS
FROM EMPLOYEE WHERE ( SYSDATE-HIRE_DATE) / 365 >=20;


select (SYSDATE-HIRE_DATE)/365 from employee;

SELECT EMP_NAME, SALARY, BONUS
FROM EMPLOYEE WHERE TRUNC(SYSDATE-HIRE_DATE)>=20*365;

--TRUNC(날짜-날짜) 하면 일 수(day)가 리턴이 됩니다. 
--where 절에 조건문(연산자 비교값)이 들어가야되는데 아까는 조건식을 등록안하고 trunc만 써서 오류 발생함
--trunc쓰고 싶은 경우에는 select에 쓰면 조건문 없이 사용가능
--trunc('20200720' - '20200716') 하는 경우 4가 return됨 
--즉, TRUNC(SYSDATE-HIRE_DATE) 이 부분 에서 현재날짜 - 입사날짜 => 근속 일 수 (day)로 반환
--우리는 20'년'이 필요하므로 년으로 다시 바꿔줘야함 --> 365일로 나눠줌
--근속 일수 /365 => 근속년수
--20년 이상인 사람만 sort하고 싶으므로 >=20 조건문 만들어줌 



select emp_name,sysdate - hire_Date, trunc('20200720' - '20200716')   from employee;


select * from employee;