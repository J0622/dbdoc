-- ���������� ���Ѻο� : �����ͺ��̽�(DBA)������ ����
CREATE USER ora_user IDENTIFIED BY 1234;

-- ���� : ���Ӱ���(CONNECT), ��ü����(RESOURCE) �۾��� �����ϰ� ���Ѻο��۾�
GRANT connect, resource, dba TO ora_user;