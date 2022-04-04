<%
'------------------------
'Code:Zhang Shen Jia
'Date:2008-1-1
'------------------------
Dim Title_Id
Dim Title_Name
Dim Title_Text
%>
<!--#include virtual="/Player/Check.asp"-->
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<!--#include virtual="/Models/Common/Function.asp"-->
<!--#include virtual="/Models/Include/NoHtml.asp"-->
<%
Act = "Top_Go"
Call Check()

Call Get_Input()
Call Check_Input()
Call Format_Input()

If Message = "No" And Check_Result <> "Fail" Then
	
	Call Start_Conn()
	
	Set cmd = Server.CreateObject("ADODB.Command")
	Set cmd.ActiveConnection = Conn
	cmd.CommandText = "dbo.Title_Edit"
	cmd.CommandType = &H0004
	
	cmd.Parameters.Append cmd.CreateParameter("@Title_Id",3)
	cmd.Parameters.Append cmd.CreateParameter("@Title_Name",200,,100)
	cmd.Parameters.Append cmd.CreateParameter("@Title_Text",201,,strLength(Title_Text))
	cmd.Parameters.Append cmd.CreateParameter("@Player_Id",3)
	cmd.Parameters.Append cmd.CreateParameter("@Result",200,2,20)
	
	cmd("@Title_Id") = Title_Id
	cmd("@Title_Name") = Title_Name
	cmd("@Title_Text") = Title_Text
	cmd("@Player_Id") = Session("Player_Id")
	cmd.execute
	
	Result = cmd("@Result")
	Set cmd = Nothing
	
	Select Case Result
	
		Case "Edit_OK"
		
			Call End_Conn()
			Message = "No"
			Act = "top.location='/BBS/Title.asp?Id="&Title_Id&"';"
			Call Error()
			
		Case "Edit_Fail_Exist"
		
			Call End_Conn()
			Message = "帖子不存在!"
			Act = "top.location='/BBS/Title.asp?Id="&Title_Id&"';"
			Call Error()
			
		Case "Edit_Fail_Power"
		
			Call End_Conn()
			Message = "您无权编辑本帖子!"
			Act = "top.location='/BBS/Title.asp?Id="&Title_Id&"';"
			Call Error()
	
	End Select
	
End If

Sub Get_Input()

	Title_Id = Request.form("Title_Id")
	Title_Name = Request.form("Title_Name")
	Title_Text = Request.form("Title_Text")
	
End Sub

Sub Check_Input()
	
	Message = "No"
	If strLength(Title_Name) > 50 Then Message = "标题超过50字符，请重新输入!"
	If strLength(Title_Name) < 2 Then Message = "标题过短，请补充!"
	If strLength(Title_Text) > 20000 Then Message = "内容超过20000字符，请分开发表!"
	If strLength(Title_Text) < 2 Then Message = "内容过短，请补充!"
	If Title_Name = "" Then Message = "请输入标题!"
	If Title_Text = "" Then Message = "请输入内容!"
	If Title_Id <> "" And Check_Express(Title_Id,"\d{1,8}") Then Message = "您指定的[ID]不合法!"
	If Message <> "No" Then
		Act="No"
		Call Error()
	End If

End Sub

Sub Format_Input()

	Title_Text = NoHtml(Title_Text)
	Title_Name = NoHtml(Title_Name)

End Sub
%>
