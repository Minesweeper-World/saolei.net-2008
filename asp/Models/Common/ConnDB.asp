<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-11
'------------------------
Dim Conn
Dim rs

Public Sub Start_Conn()

	On Error Resume Next
	Set Conn = Server.CreateObject("ADODB.CONNECTION")
	Conn.ConnectionTimeOut = 2
	If Err.Number <> 0 Then
		Err.Clear
		Set Conn = Nothing
		Response.Write "���ݿ�����ʧ��,�����Ƿ�װ�����ݿ����!"
		Response.End
	Else
		Set rs = Server.CreateObject("ADODB.RECORDSET")
		If Err.Number <> 0 Then
			Err.Clear
			Set Conn = Nothing
			Response.Write "�����ݿ�ʧ��"
			Response.End
		Else
			Conn.CommandTimeout = 1000
			Conn.Open CONST_DATABASE_CONN
			If Err.number <> 0 Then
Response.Write Err.Description
				Err.Clear
				Set Conn = Nothing
				Response.Write "���ݿ�����ʧ��,�������ݿ��Ƿ����!"
				Response.End
			End If
		End If
	End If
End Sub

Public Sub End_Conn()

	On Error Resume Next	
	Conn.Close	
	If Err.Number <> 0 Then
		Err.Clear
		Response.Write "���ݿ����ӹر�ʧ��!"
		Response.End
	End If
	Set rs = Nothing
	Set Conn = Nothing

End Sub
%>