1.  SELECT DNAME FROM DEPT WHERE DEPTNO NOT IN (SELECT deptno FROM EMPLOYEE);

2.  SELECT * FROM EMPLOYEE WHERE JOB =(SELECT JOB FROM EMPLOYEE WHERE ENAME='SCOTT');

3.  SELECT DNAME FROM DEPT WHERE DEPTNO IN(SELECT DEPTNO FROM EMPLOYEE WHERE MGR IN(SELECT MGR FROM EMPLOYEE WHERE  ENAME='SCOTT'));

4.  SELECT * FROM EMPLOYEE WHERE JOB =(SELECT JOB FROM EMPLOYEE WHERE ENAME='SCOTT') AND SAL > (SELECT SAL FROM EMPLOYEE WHERE ENAME='SMITH');

5.  SELECT * FROM EMPLOYEE WHERE JOB IN (SELECT JOB FROM EMPLOYEE WHERE ENAME IN('SCOTT','ALLEN'));

6.  SELECT * FROM EMPLOYEE WHERE EMPNO IN(SELECT MGR FROM EMPLOYEE);

7.  SELECT * FROM EMPLOYEE WHERE MGR =(SELECT EMPNO FROM EMPLOYEE WHERE ENAME='SCOTT');

8.  SELECT MAX(SAL) FROM EMPLOYEE WHERE SAL<(SELECT MAX(SAL) FROM EMPLOYEE);

9.  SELECT MAX(SAL) FROM EMPLOYEE WHERE SAL<(SELECT MAX(SAL) FROM EMPLOYEE WHERE SAL<(SELECT MAX(SAL) FROM EMPLOYEE));

10.  SELECT * FROM EMPLOYEE WHERE SAL> ALL(SELECT SAL FROM EMPLOYEE WHERE JOB='MANAGER');

11.  SELECT * FROM EMPLOYEE WHERE SAL> ANY(SELECT SAL FROM EMPLOYEE WHERE JOB='MANAGER');

12.  SELECT EMPNO,JOB,SAL FROM EMPLOYEE WHERE JOB= 'ANALYST' AND SAL >ANY(SELECT SAL FROM EMPLOYEE WHERE JOB='MANAGER'); 

13.  SELECT DNAME,LOCATION FROM DEPT WHERE DEPTNO IN(SELECT DEPTNO FROM EMPLOYEE WHERE MGR IN (SELECT EMPNO FROM EMPLOYEE WHERE JOB='CLARK'));

14.  SELECT * FROM EMPLOYEE WHERE DEPTNO IN(SELECT DEPTNO FROM DEPT WHERE LOCATION ='DALLAS');

15.  SELECT * FROM EMPLOYEE WHERE SAL > (SELECT AVG(SAL) FROM EMPLOYEE WHERE DEPTNO=20);

16.  SELECT * FROM EMPLOYEE WHERE SAL=(SELECT MAX(SAL) FROM EMPLOYEE);

17.  SELECT * from EMPLOYEE WHERE HIREDATE=(SELECT MIN(HIREDATE) FROM EMPLOYEE);

18.  SELECT * FROM EMPLOYEE WHERE SAL> (SELECT SAL FROM EMPLOYEE WHERE ENAME='ALLEN');

19.  SELECT DNAME FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMPLOYEE WHERE JOB='ANALYST');

20.  SELECT DNAME FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMPLOYEE WHERE JOB=' SALESMAN');

21.  SELECT * FROM EMPLOYEE WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE LOCATION='0');

22.  SELECT DNAME FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMPLOYEE GROUP BY DEPTNO HAVING COUNT(*)>=1);

23.  SELECT DNAME FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMPLOYEE GROUP BY DEPTNO HAVING COUNT(*)>=4);

24.  SELECT DNAME FROM DEPT WHERE DEPTNO IN(SELECT DEPTNO FROM EMPLOYEE WHERE JOB='CLARK' GROUP BY (DEPTNO) HAVING COUNT(*)>=2);

25.  SELECT ENAME FROM EMPLOYEE WHERE SAL=(SELECT MAX(SAL) FROM EMPLOYEE WHERE DEPTNO= (SELECT DEPTNO FROM DEPT WHERE DNAME='ACCOUNTING'));

26.  SELECT DNAME FROM DEPT WHERE DEPTNO =(SELECT DEPTNO FROM EMPLOYEE WHERE COMM = (SELECT MAX(COMM) FROM EMPLOYEE));

27.  SELECT * FROM EMPLOYEE WHERE DEPTNO =(SELECT DEPTNO FROM EMPLOYEE WHERE ENAME='SCOTT');

28.  SELECT * FROM EMPLOYEE WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DNAME IN('OPERATIONS','ACCOUNTING')) AND SAL > (SELECT SAL FROM EMPLOYEE WHERE ENAME= 'MARTIN');

29.  SELECT DNAME FROM DEPT WHERE DEPTNO IN(SELECT DEPTNO FROM EMPLOYEE WHERE JOB=' SALESMAN' GROUP BY DEPTNO HAVING COUNT(*) >=3 );

30.  SELECT * FROM EMPLOYEE WHERE MGR IS NULL;

31.  SELECT * FROM EMPLOYEE WHERE EMPNO NOT IN (SELECT MGR FROM EMPLOYEE WHERE MGR IS NOT NULL);

32.  SELECT * FROM EMPLOYEE WHERE EMPNO =(SELECT MGR FROM EMPLOYEE WHERE ENAME='ALLEN');

33.  SELECT * FROM EMPLOYEE WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DNAME IN ('ACCOUNTING','RESEARCH') ) AND EMPNO IN (SELECT MGR FROM EMPLOYEE GROUP BY MGR HAVING COUNT(*)>=2);

34.  SELECT DNAME FROM DEPT WHERE DEPTNO IN(SELECT DEPTNO FROM EMPLOYEE WHERE ENAME LIKE 'S%' AND SALARY  BETWEEN 1500 AND 3000);

35.  SELECT LOCATION FROM DEPT WHERE DEPTNO IN(SELECT DEPTNO FROM EMPLOYEE WHERE SAL IN (SELECT MIN(SAL) FROM EMPLOYEE WHERE SAL> 2000));

36.  SELECT LOCATION FROM DEPT WHERE DNAME ='ACCOUNTING';

37.  SELECT LOC FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*)>4);

38.  SELECT * FROM EMPLOYEE WHERE JOB NOT IN(SELECT JOB FROM EMPLOYEE WHERE ENAME='ALLEN') AND SAL > (SELECT SAL FROM EMPLOYEE WHERE ENAME='MARTIN');

39.  SELECT * FROM EMPLOYEE WHERE DEPTNO IN (SELECT DEPTNO FROM EMPLOYEE WHERE EMPNO=(SELECT MGR FROM EMPLOYEE WHERE ENAME='FORD'));

40.  SELECT JOB,MGR FROM EMPLOYEE WHERE MGR=(SELECT EMPNO FROM EMPLOYEE WHERE ENAME='SCOTT');

41.  SELECT ENAME,HIREDATE,COMM FROM EMPLOYEE WHERE EMPNO=(SELECT MGR FROM EMPLOYEE WHERE EMPNAME='FORD');

42.  SELECT COUNT(*) FROM EMPLOYEE WHERE SAL>(SELECT SAL FROM EMPLOYEE WHERE EMPNO=(SELECT MGR FROM EMPLOYEE WHERE ENAME='SCOTT'));
										
43.  select *from employee where comm=0 and deptno in (select depno from dept where location='NEWYORK')															
44.  select *from employee where deptno=(select depno from dept where dname='ACCOUNTING') and sal>(select avg(sal) from employee where deptno=(select depno from dept where dname='ACCOUNTING'))
											
45.  select *from employee where deptno=(select depno from dept where dname='ACCOUNTING') and empno in(select mgr from employee)																			   
46.  select dname from dept where depno in (select deptno from employee where comm>0)																			   
47.  select dname from dept where depno in (select deptno from employee where mgr=0 and sal=(select max(sal) from employee))																			   
48.  select *from employee where mgr=(select empno from employee where ename='BLAKE') and comm>0								
49.  select dname,location from dept where depno in (select deptno from employee where empno in(select mgr from employee where job='SALESMAN'))
										
50.  select dname, location from dept where depno in (select deptno from employee where job='CLERK' and sal<(select sal from employee where ename='MARTIN'))																							  
51.  select *from employee where mgr not in (select empno from employee where job='PRESIDENT') and mgr>0 and comm>0 and sal> (select max(sal) from employee where job='CLERK') 														
52.  select *from 	EMPLOYEE WHERE HIREDATE>ALL (SELECT MIN(HIREDATE)+ (365*2) FROM EMPLOYEE ) AND SAL>(SELECT SAL FROM EMPLOYEE WHERE ENAME ='BLAKE');																			
53.  select location from dept where depno in (select deptno from employee where mgr=(select empno from employee where ename='BLAKE'))																					
54.  select *from employee where job=(select job from employee where ename='JONES') and sal<(select sal from employee where ename='SCOTT')																					   
55.  select e.sal*12,d.location,d.dname from employee e, DEPT d where  d.depno=e.deptno and  e.deptno=(select deptno from employee where ename='KING')																		
56.  select sal*12 as salary, ename from employee where  deptno in(20,30) and deptno in (select deptno from employee group by deptno having count(*)>=3);
																					   
57.  select dname from DEPT where depno=(select deptno from employee where sal=	(select avg(sal) from employee where sal<(select avg(sal) from employee)) and sal=(SELECT MAX(SAL) FROM employee WHERE SAL<(SELECT MAX(SAL) FROM employee WHERE SAL<(SELECT MAX(SAL) FROM employee))));																	
58.  select *from employee where sal<(select min(sal) from employee where job='SALESMAN')																			
59.  select *from employee where hiredate<(select max(hiredate) from employee)

60.  select *from employee where hiredate=(select max(hiredate) from employee where hiredate<(select max(hiredate) from employee))

61.  select min(SAL) from employee where SAL>(select min(sal) from employee where sal>(select min(sal) from employee))

62.  select *from employee where sal>(select max(sal) from employee where job='MANAGER')
											
63.  select *from employee where hiredate>(select min(hiredate)+4*365 from employee) and sal<(select sal from employee where ename='BLAKE')																				  
64.  select *from DEPT where location='NEWYORK'														
65.  select *from employee where deptno=20 order by sal desc												
66.  select *from employee where hiredate=(select min(hiredate) from employee where hiredate>(select min(hiredate) from employee))																				  
67.  select location from DEPT where depno in (select deptno from employee where ename like 'A%' and sal between 1000 AND 3000)																					
68.  select *from employee where mgr=(select empno from employee where ename='BLAKE')									

69.  select dname,location from DEPT where depno in (select deptno from employee where empno=(select mgr from employee where empno in(select mgr from employee where ename='MARTIN')))

70.  select ename,sal from employee where hiredate>(select max(hiredate)-2*365 from employee)
												
71.  select e.ename, e.job, d.dname from employee e, DEPT d where e.deptno=d.depno and e.comm=0
											
72.  select e.ename,e.comm, d.location from employee e, DEPT d where e.deptno=d.depno and e.comm=(select max(comm) from employee)
											
73.  select *from employee where deptno=(select depno from DEPT where dname='ACCOUNTING') and	comm>0														
74.  select d.dname,e.ename from DEPT d,employee e where d.depno=e.deptno and d.depno in (select deptno from employee where empno=(select mgr from employee where empno in(select mgr from employee where ename='WARD')))
																							
75.  select  max(e.comm) from DEPT d, employee e where e.deptno=d.depno and e.sal>(select avg(sal) from employee where job='CLERK')																					
76.  select e.*,d.location from employee e,DEPT d where d.depno=e.deptno and hiredate=(select max(hiredate) from employee)																																   
77.  select 	depno from DEPT where dname='Accounting' and 

78.  select d.dname from DEPT d, employee e where d.depno=e.deptno and e.sal=(select min(sal) from employee) and e.mgr>0 

79.  select e.hiredate, d.dname from employee e, DEPT d where d.depno=e.deptno and d.dname='OPERATIONS'

80.  select d.location, d.dname from employee e, DEPT d where d.depno=e.deptno and e.job='PRESIDENT'

81.  select d.dname from DEPT d, employee e where sal=(select max(sal) from employee where sal<3000) 

82.  SELECT dname FROM DEPT WHERE depno IN (SELECT deptno FROM employee WHERE mgr IN( SELECT empno FROM employee WHERE ename='ADAMS'));

83.   select * from employee where hiredate=(select max(hiredate) from employee);

84.  SELECT * FROM EMPLOYEE WHERE SAL>(SELECT AVG(SAL) FROM EMPLOYEE WHERE DEPTNO=30);

85.  SELECT COUNT(*) FROM EMP WHERE DEPTNO IN(SELECT DEPTNO FROM DEPT WHERE DNAME='RESEARCH') AND SAL< ANY(SELECT SAL FROM EMP WHERE DEPTNO=10);

86.  select dname from DEPT where depno in(select depno from employee where job='CLERK');

87.  select dname from DEPT where dname like '%T%';

88.  select * from employee where hiredate>(select hiredate from employee where ename='BLAKE');

89.  SELECT dname FROM DEPT WHERE depno IN (SELECT deptno FROM employee GROUP BY deptno HAVING COUNT(*) BETWEEN 3 AND 6);

90.  SELECT LOC FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE MGR IN (SELECT EMPNO FROM EMP WHERE SAL >2000))

91.  select * from employee where deptno in (select depno from DEPT where dname like '%C%C%')

92.  select ename,sal from employee where sal > any(select sal from employee where job='ANALYST');

93.   SELECT * FROM employee WHERE deptno IN(SELECT depno FROM DEPT WHERE location='NEWYORK')

94.  SELECT * FROM EMP WHERE SAL = ( SELECT MIN (SAL) FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM DEPT
 WHERE DNAME='RESEARCH'));

95.  SELECT dname FROM DEPT WHERE depno IN(SELECT deptno FROM employee WHERE job='SALESMAN');

96.  SELECT dname FROM DEPT WHERE depno IN (SELECT deptno FROM employee GROUP BY deptno HAVING COUNT(*)>=3);

97.  SELECT ename FROM employee WHERE deptno IN(SELECT depno FROM DEPT WHERE dname IN('ACCOUNTING','RESEARCH')) AND empno IN(SELECT mgr FROM employee GROUP BY mgr HAVING COUNT(*)>=2)

98.  SELECT ename,job,location FROM employee e,DEPT d WHERE e.deptno=d.depno AND job='MANAGER'AND location='NEWYORK';

99.  select e.ename,e.sal,e.deptno ,d.dname,d.location from employee e join DEPT d on d.depno=e.deptno where d.location='DELLA' order by sal desc

100.  SELECT * FROM employee WHERE comm=0 and hiredate>'1983-07-31';

101.  SELECT ename FROM employee WHERE deptno IN(SELECT depno FROM DEPT WHERE dname IN('SALES','RESEARCH'))
AND empno IN(SELECT mgr FROM employee GROUP BY mgr HAVING COUNT(*)>=2);

