<%
'------------------------
'Code:Zhang Shen Jia
'Date:2008-2-24
'------------------------
Point = 20
%>
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<!--#include virtual="/Models/Include/ShowHide.asp"-->
<%
Call Get_Input()

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #333333;
}
.tbl {table-layout:fixed}
.td {overflow:hidden;}
-->
</style>
<link href="/Models/Css/2008.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="parent.document.getElementById('Ranking').style.display='block';">
<table width="575" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td width="555" rowspan="3" valign="top" class="Text">
	<table class="tbl" border="0" cellspacing="0" cellpadding="0">
	<tr class="Title">
		<td width="60" align="center">����</td>
		<td width="75" align="center">����</td>
		<td width="40" align="center">�ƺ�</td>
		<td width="60" align="center">����</td>
		<td width="1"></td>
		<td width="35" align="left">����</td>
		<td width="55" align="center">�м�</td>
		<td width="55" align="center">�߼�</td>
		<td width="55" align="center">�ܼ�</td>
		<td width="45" align="right"><a href="?By=Player_Click" class="<%If Session("Ranking_By") = "Player_Click" Then%>Signest<%Else%>Title<%End If%>">������</a></td>
		<td width="10" align="center">/</td>
		<td width="45" align="left"><a href="?By=Player_Click_Today" class="<%If Session("Ranking_By") = "Player_Click_Today" Then%>Signest<%Else%>Title<%End If%>">������</a></td>
	</tr>
	<%
	Page = Request("Page")
	If Page = "" Then Page = 1
	
	Call Start_Conn()
	
	SQL_Text = "Ranking_Click '"&Session("Ranking_By")&"',"&Point&","&CInt(Page)
	rs.Open SQL_Text,Conn,3,1
		
	Max_Page = 1
			
	If Not rs.Eof Then
	
		Total_Number = rs("Total")
		
		If Total_Number Mod Point = 0 Then
			Max_Page = Total_Number \ Point
		Else
			Max_Page = Total_Number \ Point + 1
		End If
		
		I = 1
				
		Do While Not rs.Eof
			%>
			<tr height="25px" class="Text" onMouseOver="this.style.background='#444444';" onMouseOut="this.style.background='#333333';">
				<td align="center" class="Bold">��&nbsp;<span class="Signest"><%=CInt(Page-1)*Point+I%></span>&nbsp;λ</td>
				<td align="center"><a href="javascript:void(0); " onClick="top.Window('/Player/Show.asp?Id=<%=rs("Player_Id")%>');" class="<%If Session("Goto_Id")=CStr(rs("Player_Id")) Then%>Sign<%Else%>High<%End If%>" title="����鿴������Ϣ<%If rs("Player_Image") Then%>(���ϴ���Ƭ)<%End If%>"><%=rs("Player_Name_Chinese")%></a><span class="Counter"><%If rs("Player_Image") Then%>P<%End If%></span></td>
				<td align="center"><span class="Texts">[</span><span onClick="top.Window('/Help/Title.asp');" class="<%=rs("Player_Title")%>" title="����鿴�ƺ�˵��"><%=rs("Player_Title")%></span><span class="Texts">]</span></td>
				<td align="center"><span class="Bold"><%=rs("Player_Area")%></span></td>
				<td></td>
				<td align="left"><a href="javascript:void(0);" onClick="top.Window('/Video/Show.asp?Id=<%=rs("Player_Beg_Time_Video")%>');" class="<%If Session("Ranking_By") = "Player_Beg_Time_Score" Then%>Signest<%Else%>Beg<%End If%>" title="����鿴¼��"><%=FormatNumber(rs("Player_Beg_Time_Score"),2)%></a></td>
				<td align="center"><a href="javascript:void(0);" onClick="top.Window('/Video/Show.asp?Id=<%=rs("Player_Int_Time_Video")%>');" class="<%If Session("Ranking_By") = "Player_Int_Time_Score" Then%>Signest<%Else%>Int<%End If%>" title="����鿴¼��"><%=FormatNumber(rs("Player_Int_Time_Score"),2)%></a></td>
				<td align="center"><a href="javascript:void(0);" onClick="top.Window('/Video/Show.asp?Id=<%=rs("Player_Exp_Time_Video")%>');" class="<%If Session("Ranking_By") = "Player_Exp_Time_Score" Then%>Signest<%Else%>Exp<%End If%>" title="����鿴¼��"><%=FormatNumber(rs("Player_Exp_Time_Score"),2)%></a></td>
				<td align="center" class="Signest"><%=FormatNumber(rs("Player_Sum_Time_Score"),2)%></td>
				<td align="right" class="Text"><span class="<%If Session("Ranking_By") = "Player_Click" Then%>Signest<%Else%>Title<%End If%>"><%=CLng(rs("Player_Click"))%></span></td>
				<td align="center" class="Text">/</td>
				<td align="left" class="Text"><span class="<%If Session("Ranking_By") = "Player_Click_Today" Then%>Signest<%Else%>Title<%End If%>"><%=CLng(rs("Player_Click_Today"))%></span></td>
			</tr>
			<%
			I = I +1
			rs.MoveNext
		Loop
		
	End If
	
	Call End_Conn()
	%>
	</table>	
	</td>
	<td width="20" height="15" align="center" valign="top">
	<%
	If Page = 1 Then
		%><span class="uButton" onMouseOver="Show('Pages');" onMouseOut="Hide('Pages');">��</span><%
	Else
		%><span class="eButton" onMouseOver="this.className='hButton';Show('Pages');" onMouseOut="this.className='eButton';Hide('Pages');" onClick="location='?Page=<%=Page-1%>'">��</span><%
	End If
	%>
	</td>
  </tr>
  <tr>
	<td height="490" align="center" valign="top" onMouseOver="Show('Pages');" onMouseOut="Hide('Pages');">
		<table height="<%If Max_Page<>1 Then%><%=(Page-1)/(Max_Page-1)*460%><%End If%>"><tr><td></td></tr></table>
		<span id="Pages" class="Counter" style="display:none; "><%=Page%></span>
	</td>
  </tr>
  <tr>
	<td width="20" height="15" align="center" valign="bottom">
	<%
	If CInt(Page) >= CInt(Max_Page) Then
		%><span class="uButton" onMouseOver="Show('Pages');" onMouseOut="Hide('Pages');">��</span><%
	Else
		%><span class="eButton" onMouseOver="this.className='hButton';Show('Pages');" onMouseOut="this.className='eButton';Hide('Pages');" onClick="location='?Page=<%=Page+1%>'">��</span><%
	End If
	%></td>
  </tr>
</table>
<table width="475" cellpadding="0" cellspacing="0">
<form name="Page_Form" method="get">
<tr><td align="center" class="Text" height="30">
	<%
	Go = "ת��"
	Go_Start = "��"
	Go_End = "ҳ"
	Total_Start = "��"
	Total_End = "λ"
	First_Page = "��ҳ"
	Previous_Page = "��һҳ"
	Next_Page = "��һҳ"
	Last_Page = "ĩҳ"
	Page_Start = "�����ǵ�"
	Page_End = "ҳ"
	%>����<%=Total_Start%><span class="Signest">&nbsp;<%=Total_Number%>&nbsp;</span><%=Total_End%>	<%
	If Page<2 Then
		%>&nbsp;&nbsp;<span class="Text"><%=First_Page%></span>&nbsp;|&nbsp;<span class="Text"><%=Previous_Page%></span><%
	Else
		%>&nbsp;&nbsp;<a href="?Page=1" class="High"><%=First_Page%></a>&nbsp;|&nbsp;<a href="?Page=<%=Page-1%>" class="High"><%=Previous_Page%></a><%
	End If
	If Max_Page-Page<1 Then
		%>&nbsp;|&nbsp;<span class="Text"><%=Next_Page%></span>&nbsp;|&nbsp;<span class="Text"><%=Last_Page%></span><%
	Else
		%>&nbsp;|&nbsp;<a href="?Page=<%=Page+1%>" class="High"><%=Next_Page%></a>&nbsp;|&nbsp;<a href="?Page=<%=Max_Page%>" class="High"><%=Last_Page%></a><%
	End If%>&nbsp;&nbsp;<%=Page_Start%>&nbsp;<span class="Signest"><%=Page%></span><span class="Bold">/<%=Max_Page%></span>&nbsp;<%=Page_End%>
  <select name="Page" class="input-no" onchange="Page_Form.submit()">
	<option><%=Go%></option>
	<%
	For I = 1 To Max_Page
		%><option value="<%=I%>"><%=Go_Start%><%=I%><%=Go_End%></option><%
	Next
	%>
  </select>
  </td></tr>
  </form>
  </table>
<script language="javascript">
function Ranking_Refresh()
{
	try{top.Ranking_Frame.location=top.Ranking_Frame.location;}catch(e){}
}
Ranking_Refreshing=setInterval('Ranking_Refresh()',60000);
</script>
</body>
</html>
<%

Sub Get_Input()

	If Request("By")<>"" Then
		Session("Ranking_By") = Request("By")
	End If
	If Session("Ranking_By") = "" Then Session("Ranking_By") = "Player_Click_Today"
	
End Sub
%>
