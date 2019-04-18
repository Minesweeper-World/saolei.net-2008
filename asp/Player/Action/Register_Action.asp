<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-13
'------------------------
Dim Player_Name
Dim Player_Password
Dim Player_Password_Confirm
Dim Player_Name_Chinese
Dim Player_Name_English
Dim Player_Name_Net
Dim Player_Sex
Dim Player_Area
Dim Player_Email
Dim Player_Text
Dim Player_Question
Dim Player_Answer
%>
<!--#include virtual="/Models/Common/Error.asp"-->
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<!--#include virtual="/Models/Common/Function.asp"-->
<%
Call Get_Input()
Call Check_Input()

If Message = "No" Then

	Call Start_Conn()
	
	Set cmd = Server.CreateObject("ADODB.Command")
	Set cmd.ActiveConnection = Conn
	cmd.CommandText = "dbo.Player_Register"
	cmd.CommandType = &H0004
	
	cmd.Parameters.Append cmd.CreateParameter("@Player_Name",200,,12)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Password",200,,12)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Name_Chinese",200,,12)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Name_English",200,,20)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Name_Net",200,,12)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Sex",3)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Area",200,,12)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Email",200,,50)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Text",200,,50)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Question",200,,50)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Answer",200,,50)
	cmd.Parameters.Append cmd.CreateParameter("@Player_Id",3,2)
	cmd.Parameters.Append cmd.CreateParameter("@Result",200,2,20)
	
	cmd("@Player_Name") = Player_Name
	cmd("@Player_Password") = Player_Password
	cmd("@Player_Name_Chinese") = Player_Name_Chinese
	cmd("@Player_Name_English") = Player_Name_English
	cmd("@Player_Name_Net") = Player_Name_Net
	cmd("@Player_Sex") = Player_Sex
	cmd("@Player_Area") = Player_Area
	cmd("@Player_Email") = Player_Email
	cmd("@Player_Text") = Player_Text
	cmd("@Player_Question") = Player_Question
	cmd("@Player_Answer") = Player_Answer
	
	cmd.execute
	
	Player_Id = cmd("@Player_Id") 
	Result = cmd("@Result")
	Set cmd = Nothing
	Call End_Conn()
	
	Select Case Result
	
		Case "Register_OK"
		
			Set fso = CreateObject("Scripting.FileSystemObject")
		
			fso.CreateFolder(Server.MapPath("/Video/Mvf/"&Player_Id))
		
			Session("Player_Name_Chinese") = Player_Name_Chinese
			Session("Player_Name_English") = Player_Name_English
			Response.Cookies("Player_Name") = Player_Name
			Response.Cookies("Player_Name_Chinese") = Player_Name_Chinese
			Message = "No"
			Act = "Parent_Go"
			Link = "/Player/Register_OK.asp"
			Call Error()
			
		Case "Register_Fail"
		
			Message = "��½����"&Player_Name&"�Ѿ���ʹ��!"
			Act = "parent.document.all.Player_Form.Player_Name.select();"
			Call Error()
			
	End Select

End If

Sub Get_Input()

	Player_Name = Request.Form("Player_Name")
	Player_Password = Request.Form("Player_Password")
	Player_Password_Confirm = Request.Form("Player_Password_Confirm")
	Player_Name_Chinese = Trim(Request.Form("Player_Name_Chinese"))
	Player_Name_English = Trim(Request.Form("Player_Name_English"))
	Player_Name_Net = Request.Form("Player_Name_Net")
	Player_Sex = CInt(Request.Form("Player_Sex"))
	Player_Area = Request.Form("Player_Area")
	Player_Email = Request.Form("Player_Email")
	Player_Text = Request.Form("Player_Text")
	Player_Question = Request.Form("Player_Question")
	Player_Answer = Request.Form("Player_Answer")

End Sub

Sub Check_Input()

	Message = "No"
	
	If Check_Str(Player_Answer) Then Message = "����[�������ʴ�]�������˷Ƿ��ַ�!"
	If Player_Answer = "" Then Message = "������[�������ʴ�]!"
	If Check_Str(Player_Question) Then Message = "����[������ʾ����]�������˷Ƿ��ַ�!"
	If Player_Question = "" Then Message = "������[������ʾ����]!"
	If Check_Str(Player_Text) Then Message = "����[¼���ʶ����]�������˷Ƿ��ַ�!"
	If Player_Text = "" Then Message = "������[¼���ʶ����]!"
	If Player_Email<>"" And Check_Express(Player_Email,"^\w[\w-]{1,50}(\.[\w-]*)*@\w+(\.[\w-]+)+$") Then Message = "�������[��������]���Ϸ�!"
	If Check_Str(Player_Name_Net) Then Message = "����[����]�������˷Ƿ��ַ�!"
	If Player_Sex = "" Then Message = "��ѡ��[�Ա�]!"
	If Check_Express(Player_Name_English,"^(\w|\s){3,20}$") Then Message = "�������[����ƴ��]�д��ڷ�Ӣ���ַ�!"
	If Check_Express(Player_Name_English,"^([A-Z][a-z]{0,10}\s*){1,4}$") Then Message = "�������[����ƴ��]��ʽ���Ϸ�,��ο�ʾ��ƴ��!"
	If Player_Name_English = "" Then Message = "������[����ƴ��]!"
	If Check_Express(Player_Name_Chinese,"^([\u4E00-\u9FA5]{2,12})$") Then Message = "�������[��������]���Ϸ�!"
	If Player_Name_Chinese = "" Then Message = "������[��������]!"
	If Player_Password <> Player_Password_Confirm Then Message = "������������벻һ��!"
	If Check_Str(Player_Password_Confirm) Then Message = "����[�ظ�����]�������˷Ƿ��ַ�!"
	If Player_Password_Confirm = "" Then Message = "������[�ظ�����]!"
	If Check_Str(Player_Password) Then Message = "����[��½����]�������˷Ƿ��ַ�!"
	If Player_Password = "" Then Message = "������[��½����]!"
	If Check_Express(Player_Name,"^\w{3,12}$") Then Message = "�������[��½����]���Ϸ�!"
	If Player_Name = "" Then Message = "������[��½����]!"
	
	If Message <> "No" Then
		Act="No"
		Call Error()
	End If	
	
End Sub
%>