<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-17
'------------------------
Dim From
Dim Message_To
Dim Message_Text
%>
<!--#include virtual="/Player/Check.asp"-->
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<%
Call Check()
Call Get_Input()
Call Check_Input()

If Message = "No" And Check_Result <> "Fail" Then

	Call Start_Conn()
	
	Set cmd = Server.CreateObject("ADODB.Command")
	Set cmd.ActiveConnection = Conn
	cmd.CommandText = "dbo.Message_Send"
	cmd.CommandType = &H0004
	
	cmd.Parameters.Append cmd.CreateParameter("@Message_To",3)
	cmd.Parameters.Append cmd.CreateParameter("@Message_From",3)
	cmd.Parameters.Append cmd.CreateParameter("@Message_Text",200,,500)
	cmd.Parameters.Append cmd.CreateParameter("@Result",200,2,20)
	
	cmd("@Message_To") = Message_To
	cmd("@Message_From") = Session("Player_Id")
	cmd("@Message_Text") = Message_Text
	
	cmd.execute
	
	Result = cmd("@Result")
	Set cmd = Nothing
	Call End_Conn()
	
	If From = "Box" Then
		Act = "parent.location='/Message/Box.asp';"
	Else
		Act = "top.End_Mask();top.document.getElementById('Window_Box').style.display='none';"			
	End If
	
	Select Case Result
	
		Case "Send_OK"

			Message = "No"
			Call Error()

		Case "No_Video"
		
			Message = "û�гɹ��ϴ�¼������Ȩ���Ͷ���Ϣ!"
			Call Error()
			
		Case "Send_Fail"
		
			Message = "�û�������!"
			Call Error()
			
	End Select

End If

Sub Get_Input()

	From = Request.Form("From")
	Message_To = Request.Form("Message_To")
	Message_Text = Request.Form("Message_Text")


End Sub

Sub Check_Input()

	Message = "No"
	
	If Message_Text = "" Then Message = "������[��Ϣ����]!"
	If Len(Message_Text) < 2  Then Message = "�����[��Ϣ����]̫��!"
	If Len(Message_Text) > 100  Then Message = "�����[��Ϣ����]̫��!"

	If Message <> "No" Then
		Act="No"
		Call Error()
	End If	
	
End Sub
%>