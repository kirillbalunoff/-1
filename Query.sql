USE TestImport

SELECT SUM ([����� (� ��)]) AS '������ ���� ������ (� ��):' FROM [Import]
SELECT COUNT ([����� (� ��)]) AS '����������� ���������� ������, ������� ����� �������:' FROM (SELECT TOP(61) [����� (� ��)] FROM [Import]) AS Import
SELECT SUM ([����� (� ��)]) AS '����������� ����� ������� ������ (� ��):' FROM (SELECT TOP(61) [����� (� ��)] FROM [Import]) AS Import