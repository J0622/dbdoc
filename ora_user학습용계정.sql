CREATE TABLE DEPT_CONST (
    DEPTNO  NUMBER(2)       CONSTRAINT DEPTCONST_DEPTNO_PK PRIMARY KEY,
    DNAME   VARCHAR2(14)    CONSTRAINT DEPTCONST_DNAME_UNQ UNIQUE,
    LOC     VARCHAR2(13)    CONSTRAINT DEPTCONST_LOC_NN NOT NULL
);

/*
CREATE TABLE DEPT_CONST (
    DEPTNO  NUMBER(2)       CONSTRAINT DEPTCONST_DEPTNO_PK PRIMARY KEY,
    DNAME   VARCHAR2(14)    UNIQUE,     -- ����Ŭ������ ���������̸� �ڵ�����
    LOC     VARCHAR2(13)    NOT NULL    -- ����Ŭ������ ���������̸� �ڵ�����
);
*/

/*
������̺��: ENP
- �����ȣ(ENP_ID)   - ������Ÿ��: ��������, ��������: PRIMARY KEY, �����̸�: PX_ENP_ID
- ����̸�(ENP_NAME) - ������Ÿ��: �������ڿ�, ����: 60, ��������: NOT NULL, �����̸�: ����
- �Ի�����(ENP_HIRE) - ������Ÿ��: ��¥, ����: ����, ��������: NOT NULL, �����̸�: ����
*/

CREATE TABLE ENP (
    ENP_ID      NUMBER          CONSTRAINT PX_ENP_ID PRIMARY KEY,
    ENP_NAME    VARCHAR2(60)    NOT NULL,
    ENP_HIRE    DATE            NOT NULL
);

/*
���̺��: GOODS
- ��ǰ�ڵ�(G_CODE)     - ������Ÿ��: ��������, ����: 4, ��������: PRIMARY KEY, �����̸�: PK_GOODS_CODE
- ��ǰ�̸�(G_NAME)     - ������Ÿ��: �������ڿ�, ����: 30, ��������: NOT NULL, �����̸�: ����
- ��ǰ����(G_PRICE)    - ������Ÿ��: ��������, ����: 6, ��������: NULL
- �����(CREATE_DATE)  - ������Ÿ��: ��¥��, ����: ����, ��������: NOT NULL, �����̸�: ���� 
*/

CREATE TABLE GOODS (
    G_CODE          NUMBER(4)       CONSTRAINT PK_GOODS_CODE PRIMARY KEY,
    G_NAME          VARCHAR2(30)    NOT NULL,
    G_PRICE         NUMBER(6)       ,
    CREATE_DATE     DATE            NOT NULL
);








