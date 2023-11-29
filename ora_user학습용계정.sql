CREATE TABLE DEPT_CONST (
    DEPTNO  NUMBER(2)       CONSTRAINT DEPTCONST_DEPTNO_PK PRIMARY KEY,
    DNAME   VARCHAR2(14)    CONSTRAINT DEPTCONST_DNAME_UNQ UNIQUE,
    LOC     VARCHAR2(13)    CONSTRAINT DEPTCONST_LOC_NN NOT NULL
);

/*
CREATE TABLE DEPT_CONST (
    DEPTNO  NUMBER(2)       CONSTRAINT DEPTCONST_DEPTNO_PK PRIMARY KEY,
    DNAME   VARCHAR2(14)    UNIQUE,     -- 오라클서버가 제약조건이름 자동생성
    LOC     VARCHAR2(13)    NOT NULL    -- 오라클서버가 제약조건이름 자동생성
);
*/

/*
사원테이블명: ENP
- 사원번호(ENP_ID)   - 데이터타입: 정수숫자, 제약조건: PRIMARY KEY, 제약이름: PX_ENP_ID
- 사원이름(ENP_NAME) - 데이터타입: 가변문자열, 길이: 60, 제약조건: NOT NULL, 제약이름: 생략
- 입사일자(ENP_HIRE) - 데이터타입: 날짜, 길이: 없음, 제약조건: NOT NULL, 제약이름: 생략
*/

CREATE TABLE ENP (
    ENP_ID      NUMBER          CONSTRAINT PX_ENP_ID PRIMARY KEY,
    ENP_NAME    VARCHAR2(60)    NOT NULL,
    ENP_HIRE    DATE            NOT NULL
);

/*
테이블명: GOODS
- 상품코드(G_CODE)     - 데이터타입: 정수숫자, 길이: 4, 제약조건: PRIMARY KEY, 제약이름: PK_GOODS_CODE
- 상품이름(G_NAME)     - 데이터타입: 가변문자열, 길이: 30, 제약조건: NOT NULL, 제약이름: 없음
- 상품가격(G_PRICE)    - 데이터타입: 정수숫자, 길이: 6, 제약조건: NULL
- 등록일(CREATE_DATE)  - 데이터타입: 날짜형, 길이: 없음, 제약조건: NOT NULL, 제약이름: 없음 
*/

CREATE TABLE GOODS (
    G_CODE          NUMBER(4)       CONSTRAINT PK_GOODS_CODE PRIMARY KEY,
    G_NAME          VARCHAR2(30)    NOT NULL,
    G_PRICE         NUMBER(6)       ,
    CREATE_DATE     DATE            NOT NULL
);








