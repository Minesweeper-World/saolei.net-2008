<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-12
'------------------------
Function Title(Score,Sex)
	
	If Score = 999.99 Then Title = "����"
	If Score >= 100 And Score < 999.99 Then Title = "ͯ��"
	If Score >= 90 And Score < 100 Then Title = "����"
	If Score >= 80 And Score < 90 Then Title = "���"
	If Score >= 70 And Score < 80 Then Title = "����"
	If Score >= 66 And Score < 70 Then Title = "��ʿ"
	If Score >= 63 And Score < 66 Then Title = "̽��"
	If Score >= 61 And Score < 63 Then Title = "����"
	If Score >= 60 And Score < 61 Then Title = "״Ԫ"
	If Score >= 50 And Score < 60 And Sex = 1 Then Title = "����"
	If Score >= 50 And Score < 60 And Sex = 0 Then Title = "����"
	If Score < 50 Then Title = "��ʥ"
	
End Function
%>