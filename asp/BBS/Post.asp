<%
'------------------------
'Code:Zhang Shen Jia
'Date:2008-1-1
'------------------------
Dim Model
%>
<!--#include virtual="/Player/Check.asp"-->
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<!--#include virtual="/Models/Include/ShowHide.asp"-->
<%
Call Get_Input()

If Model = "Notice" Then
	Call Check_Master()
Else
	Call Check()
End If

If Check_Result <> "Fail" Then
	No_Text = "��̳"
	Notice_Text = "����"
	Skill_Text = "����"
	Other_Text = "��̸"
	Ask_Text = "�ʴ�"
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
	<body onLoad="parent.document.getElementById('BBS').style.display='block';Title_Form.Title_Name.focus();">
	
		<table width="575" border="0" cellspacing="0" cellpadding="0">
		<tr>
		<td width="96" class="Text">
		<table width="80" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onClick="history.go(-1);">
		  <tr>
			<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����</td>
		  </tr>
		</table></td>
		<td width="369" class="Text">������<span class="Title">��<%Execute "Response.Write("&Model&"_Text)"%>��</span>��������</td>
		</tr>
		<tr><td height="10" colspan="3"></td></tr>
		<tr><td height="1" colspan="3" bgcolor="#555555"></td></tr>
		<tr><td height="10" colspan="3"></td></tr>
		</table>
	<table width="575" border="0" cellspacing="0" cellpadding="0">
	  <form name="Title_Form" action="Action/Post_Action.asp" method="post" target="Action">
	  <tr>
		<td width="72" align="right" valign="top" class="Text">�ꡡ���⣺
		</td>
	    <td width="503" valign="top" class="Text">
		<%If Model = "No" Then%>
		<select name="Title_Model" class="input-no">		
		  <%If Session("Player_IsMaster") Then%><option value="Notice">����</option><%End If%>
		  <option value="Skill">����</option>
		  <option value="Other">��̸</option>
		  <option value="Ask">�ʴ�</option>
		</select>
		<%Else%>
		<input name="Title_Model" value="<%=Model%>" type="hidden">
		<%End If%>
		<input name="Title_Name" type="text" class="input-no" size="50" maxlength="50" onFocus="Show('For_Title_Name')" onBlur="Hide('For_Title_Name')">
		<span id="For_Title_Name" class="High" style="display: none">����������⣨2��50�ַ���</span>
		</td>
	  </tr>
	  <tr>
		<td width="72" align="right" valign="top" class="Text">�ڡ����ݣ�
		</td>
	    <td width="503" valign="top" class="Text">
		<textarea name="Title_Text" cols="70" rows="20" wrap="VIRTUAL" class="input-bbs" onKeyDown="KeyDown();"></textarea>
		</td>
	  </tr>
	  <tr>
		<td width="72" valign="top" class="Text">&nbsp;</td>
	    <td width="503" height="50" valign="middle" class="Text">
		<table border="0"  cellpadding="0" cellspacing="0">
		<tr>
		<td width="90">
			<table width="80" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onClick="Title_Form.submit();">
			  <tr>
				<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">��������</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onmousedown="document.selection.createRange().text='[Title]'+document.selection.createRange().text+'[/Title]';">
			  <tr>
				<td align="center" bgcolor="#444444" class="Title" onMouseOver="this.className='Signest';" onMouseOut="this.className='Title';">����</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onmousedown="document.selection.createRange().text='[Sign]'+document.selection.createRange().text+'[/Sign]';">
			  <tr>
				<td align="center" bgcolor="#444444" class="Sign" onMouseOver="this.className='Sign';" onMouseOut="this.className='Sign';">��Ŀ</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onmousedown="Img();">
			  <tr>
				<td align="center" bgcolor="#444444" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">��ͼ</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onmousedown="Url();">
			  <tr>
				<td align="center" bgcolor="#444444" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onClick="Face()">
			  <tr>
				<td align="center" bgcolor="#444444" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����</td>
			  </tr>
			</table>
			<!--#include virtual="/Models/Include/Face.asp"-->
		</td>
		<td width="80">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onClick="Mine();">
			  <tr>
				<td align="center" bgcolor="#444444" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����</td>
			  </tr>
			</table>
			<!--#include virtual="/Models/Include/Mine.asp"-->
		</td>
		</tr>
		</table>
		</td>
	  </tr>
	  <tr>
	    <td valign="top" class="Text">&nbsp;</td>
	    <td height="50" valign="middle" class="Text">�� ���޷�ɾ���Ѿ����������,ֻ�ܶ�����б༭<br>
        �� Υ��<a href="javascript:;" onclick="top.Window('/Help/BBS.asp');" class="Sign">����̳����������</a>�����⽫��ɾ��</td>
	    </tr>
	  </form>
	</table>
	</body>
	</html>
	<iframe name="Action" style="display: none"></iframe>
	<%
End If

Sub Get_Input()

	Model = Request("Model")
	
End Sub
%>
