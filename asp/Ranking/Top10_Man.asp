<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-12
'------------------------
%>
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
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
-->
</style>
<link href="/Models/Css/2008.css?v=20211218" rel="stylesheet" type="text/css">
</head>
<body onLoad="parent.document.getElementById('Top10').style.display='block';">
<table width="280" border="0" cellspacing="0" cellpadding="0">
	<tr class="Title">
		<td width="40" align="center">����</td>
		<td width="55" align="center">����</td>
		<td width="30" align="center">����</td>
		<td width="40" align="center">�м�</td>
		<td width="40" align="center">�߼�</td>
		<td width="40" align="center">�ܼ�</td>
		<td width="35" align="center">����</td>
	</tr>
	<%
	Call Start_Conn()
	SQL_Text = "Ranking_Top10_Man"
	rs.Open SQL_Text,Conn,3,1
		
	If Not rs.Eof Then
		
		I = 0		
		Do While Not rs.Eof
			I = I + 1
			%>
			<tr height="25px" onMouseOver="this.style.background='#444444';" onMouseOut="this.style.background='#333333';">
				<td align="center" class="Bold">No. <span class="Signest"><%=I%></span></td>
				<td align="center"><a href="javascript:;" onClick="top.Window('/Player/Show.asp?Id=<%=rs("Player_Id")%>');" class="High" title="����鿴������Ϣ"><%=rs("Player_Name_Chinese")%></a></td>
				<td align="center"><a href="javascript:;" onClick="top.Window('/Video/Show.asp?Id=<%=rs("Player_Beg_Time_Video")%>');" class="Beg" title="����鿴¼��"><%=FormatNumber(rs("Player_Beg_Time_Score"),2)%></a></td>
				<td align="center"><a href="javascript:;" onClick="top.Window('/Video/Show.asp?Id=<%=rs("Player_Int_Time_Video")%>');" class="Int" title="����鿴¼��"><%=FormatNumber(rs("Player_Int_Time_Score"),2)%></a></td>
				<td align="center"><a href="javascript:;" onClick="top.Window('/Video/Show.asp?Id=<%=rs("Player_Exp_Time_Video")%>');" class="Exp" title="����鿴¼��"1><%=FormatNumber(rs("Player_Exp_Time_Score"),2)%></a></td>
				<td align="center" class="Signest"><%=FormatNumber(rs("Player_Sum_Time_Score"),2)%></td>
				<td align="center" class="Text">
				<%
				If CInt(rs("Player_Old_Rank")) = 0 Or CInt(rs("Player_Old_Rank")) = 9999 Then 
					%><span style="cursor:default" title="�������ϰ�" class="Signest">����</span><%
				Else
					If CInt(rs("Player_Rank")) = CInt(rs("Player_Old_Rank")) Then
						%><span style="cursor:default" title="�����³�ƽ" class="Highest">��</span><%
					Else
						If CInt(rs("Player_Rank")) < CInt(rs("Player_Old_Rank")) Then
							%><span style="cursor:default" title="�����½���<%=CInt(rs("Player_Old_Rank"))-CInt(rs("Player_Rank"))%>λ" class="Signest">��<%=CInt(rs("Player_Old_Rank"))-CInt(rs("Player_Rank"))%></span><%
						Else
							%><span style="cursor:default" title="�������½�<%=CInt(rs("Player_Rank"))-CInt(rs("Player_Old_Rank"))%>λ" class="Bold">��<%=CInt(rs("Player_Rank"))-CInt(rs("Player_Old_Rank"))%></span><%
						End If
					End If
				End If
				%></td>
			</tr>
			<%
			rs.MoveNext
		Loop
		
	End If
	
	Call End_Conn()
	%>
</table>
</body>
</html>
