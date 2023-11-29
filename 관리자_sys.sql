-- 계정생성과 권한부여 : 데이터베이스(DBA)관리자 업무
CREATE USER ora_user IDENTIFIED BY 1234;

-- 권한 : 접속가능(CONNECT), 객체생성(RESOURCE) 작업을 가능하게 권한부여작업
GRANT connect, resource, dba TO ora_user;