<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-17
'------------------------
%>
<!--#include virtual="/Player/Check.asp"-->
<%
Call Check()

If Check_Result <> "Fail" Then
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
	/*����div�������Կ��ƿ��*/
	td div{
		width: 60;
	}
	-->
	</style>
	<link href="/Models/Css/2008.css?v=20220104" rel="stylesheet" type="text/css">
	</head>	
	<body onLoad="parent.document.getElementById('History').style.display='block';History_Form.History_Text.select();">
	<table width="290" border="0" cellspacing="5" cellpadding="0">
	  <form name="History_Form" action="Action/History_Add_Action.asp" method="post" target="Action">
	  <tr>
		<td valign="top" class="Title"><div>׫д����</div></td>
		<td colspan="2" valign="top" class="Text">�ش������������ֵ�ü�����¼�</td>
	  </tr>
	  <tr>
		<td valign="top" class="Text">������£�</td>
		<td colspan="2" valign="top" class="Text">
				  <select name="History_Year" class="input-no">
				  <%
				  Now_Year = Year(Now())
				  For Y = 1985 To Year(Now())%>
				  <option value="<%=Y%>"<%If Y = Now_Year Then%>selected<%End If%>><%=Y%>��</option>
				  <%Next%>
				  </select>
				  <select name="History_Month" class="input-no">
				  <%
				  Now_Month = Month(Now())
				  For M = 1 To 12%>
				  <option value="<%=M%>"<%If M = Now_Month Then%>selected<%End If%>><%=M%>��</option>
				  <%Next%>
				  </select>
				  </td>
	  </tr>
	  <tr>
		<td width="60" valign="top" class="Text">�������̣�<br>      </td>
		<td colspan="2" valign="top" class="High"><textarea name="History_Text" cols="31" rows="11" wrap="VIRTUAL" class="input-no" onpropertychange="Text_Number.innerText=100-this.value.length;"></textarea><br>
	����������<span id="Text_Number">100</span>��</a></td>
	  </tr>
	  <tr>
		<td valign="top" class="Text">&nbsp;</td>
		<td width="130" height="30" valign="top" class="High">
			<table width="120" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onClick="History_Form.submit();">
				<tr>
				  <td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�����������</td>
				</tr>
			</table>
		</td>
		<td width="80" valign="top" class="High">
			<table width="65" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onClick="History_Form.reset();History_Form.History_Text.select();">
				<tr>
				  <td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">���</td>
				</tr>
			</table>
		</td>
	  </tr>
	  </form>
	</table>
	</body>
	<iframe name="Action" style="display: none"></iframe>
	</html>
	<%
End If
%>