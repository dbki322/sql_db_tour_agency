/*****
�������� ������������� "��������� �� �����"
*****/
CREATE VIEW tour_insurance
AS
SELECT t.id_tour_tour AS '��� ����', t.price_tour AS '���� ����', t.duration_tour AS '����������������� ����', 
	i_p.name_insuranceprograms AS '�������� ���������', i_p.price_insuranceprograms AS '���� ���������',
	i_a.name__insuranceagency AS '��� ���������� ��������'
FROM tour AS t JOIN Insurance AS i ON t.id_insurance_tour = i.id_insurance_insurance
	JOIN Insurance_programs AS i_p ON i.id_program_insurance = i_p.id_insurance_programs_insuranceprograms
	JOIN Insurance_agency AS i_a ON i.id_agency_insurance = i_a.id_insurance_agency_insuranceagency
WITH CHECK OPTION;

GO 