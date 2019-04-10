<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-17
'------------------------
Dim Player_Password
Dim Player_Password_Confirm
Dim Player_Name_Net
Dim Player_Area
Dim Player_Email
Dim Player_Year
Dim Player_Month
Dim Player_QQ
Dim Player_Mouse
Dim Player_Pad
Dim Player_Interest
%>
<!--#include virtual="/Player/Check.asp"-->
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<!--#include virtual="/Models/Common/Function.asp"-->
<%
Call Check()
Call Get_Input()
Call Check_Input()

If Message = "No" And Check_Result <> "Fail" Then

	Call Start_Conn()
	
	Set cmd = Server.CreateObject("ADODB.Command")
	Set cmd.ActiveConnection = Conn
	cmd.CommandText = "dbo.Player_Manage"
	cmd.CommandType = &H0004
	
	cmd.Parameters.Append cmd.CreateParameter("@Player_Id",3)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Password",200,,12)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Name_Net",200,,20)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Area",200,,12)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Email",200,,50)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Year",3)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Month",3)
	cmd.Parameters.Append cmd.CreateParameter("@Player_QQ",200,,12)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Mouse",200,,25)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Pad",200,,25)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Interest",200,,500)
	cmd.Parameters.Append cmd.CreateParameter("@Result",200,2,20)
	
	cmd("@Player_Id") = Session("Player_Id")
	cmd("@Player_Password") = Player_Password
	cmd("@Player_Name_Net") = Player_Name_Net
	cmd("@Player_Area") = Player_Area
	cmd("@Player_Email") = Player_Email
	cmd("@Player_Year") = Player_Year
	cmd("@Player_Month") = Player_Month
	cmd("@Player_QQ") = Player_QQ
	cmd("@Player_Mouse") = Player_Mouse
	cmd("@Player_Pad") = Player_Pad
	cmd("@Player_Interest") = Player_Interest
	
	cmd.execute
	
	Player_Id = cmd("@Player_Id") 
	Result = cmd("@Result")
	Set cmd = Nothing
	Call End_Conn()
	
	Select Case Result
	
		Case "Manage_OK"
		
			Message = "No"
			Act="top.location=top.location"
			Call Error()
			
		Case "Manage_Fail"
		
			Message = "�û�������!"
			Act="top.location=top.location"
			Call Error()
			
	End Select

End If

Sub Get_Input()

	Player_Password = Request.Form("Player_Password")
	Player_Password_Confirm = Request.Form("Player_Password_Confirm")
	Player_Name_Net = Request.Form("Player_Name_Net")
	Player_Area = Request.Form("Player_Area")
	Player_Email = Request.Form("Player_Email")
	Player_Year = Request.Form("Player_Year")
	Player_Month = Request.Form("Player_Month")
	Player_QQ = Request.Form("Player_QQ")
	Player_Mouse = Request.Form("Player_Mouse")
	Player_Pad = Request.Form("Player_Pad")
	Player_Interest = Request.Form("Player_Interest")

End Sub

Sub Check_Input()

	Message = "No"
	
	If Check_Str(Player_Name_Net) Then Message = "����[����]�������˷Ƿ��ַ�!"
	If Player_Password <> Player_Password_Confirm Then Message = "������������벻һ��!"
	If Check_Str(Player_Password_Confirm) Then Message = "����[�ظ�����]�������˷Ƿ��ַ�!"
	If Player_Password <> "" And Player_Password_Confirm = "" Then Message = "������[�ظ�����]!"
	If Check_Str(Player_Password) Then Message = "����[��½����]�������˷Ƿ��ַ�!"
	If strLength(Player_Interest) > 100 Then Message = "[��Ȥ]����100�ַ�������������!"
	If strLength(Player_Pad) > 25 Then Message = "[����]����25�ַ�������������!"
	If strLength(Player_Pad) > 25 Then Message = "[Player_Mouse]����25�ַ�������������!"
	If strLength(Player_QQ) > 12 Then Message = "[QQ����]����12�ַ�������������!"
	
	If Message <> "No" Then
		Act="No"
		Call Error()
	End If	
	
End Sub
%>