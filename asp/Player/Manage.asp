<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-17
'------------------------
%>
<!--#include virtual="/Player/Check.asp"-->
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<%
Call Check()

If Check_Result <> "Fail" Then

	Call Start_Conn()
	
	SQL_Text = "Player_Read "&Session("Player_Id")
	rs.Open SQL_Text,Conn,3,1
	
	Player_Password = rs("Player_Password")
	Player_Name_Chinese = rs("Player_Name_Chinese")
	Player_Name_English = rs("Player_Name_English")
	Player_Name_Net = rs("Player_Name_Net")
	Player_Area = rs("Player_Area")
	Player_Email = rs("Player_Email")
	Player_QQ = rs("Player_QQ")
	Player_Mouse = rs("Player_Mouse")
	Player_Pad = rs("Player_Pad")
	Player_Interest = rs("Player_Interest")
	Player_Year = CInt(rs("Player_Year"))
	Player_Month = CInt(rs("Player_Month"))
	Player_Text = rs("Player_Text")
	
	Call End_Conn()	
	
	If Player_Year = 0 Then Player_Year = 1980
	If Player_Month = 0 Then Player_Month = 1
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
		background-color: #444444;
	}
	-->
	</style>
	<link href="/Models/Css/2008.css" rel="stylesheet" type="text/css">
	<!--#include virtual="/Models/Include/Windows.asp"-->
	<!--#include virtual="/Models/Include/ShowHide.asp"-->
	</head>
	<body onload="Window_Load();" onMousemove="move()" topmargin=0 leftmargin=0 scroll=no>
	<form name="Player_Form" action="Action/Manage_Action.asp" method="post" target="Action">
	<table id="Window_Table" border="0" cellspacing="1" cellpadding="0" bgcolor="#999999">
		<tr>
			<td bgcolor="#444444">
				<table width="500" border="0" cellspacing="0" cellpadding="0">
					<tr bgcolor="#555555">
						<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">����Ϣ����</td>
						<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
				</tr>
				</table>
				<table width="500" border="0" cellspacing="10" cellpadding="0">
					<tr>
					  <td colspan="3" class="Text">
						<span class="Sign"><%=Player_Name_Chinese%></span>(<%=Player_Name_English%>)
						<br>
	��½���룺
	<input name="Player_Password" type="password" class="input-no" size="12" maxlength="12" onfocus="Show('For_Player_Password')" onBlur="Hide('For_Player_Password')">
	<span id="For_Player_Password" class="High" style="display: none">&nbsp;�����12λ�ַ���<font color="#FFFF00">�����޸�����������</font></span> <br>
	�ظ����룺
	<input name="Player_Password_Confirm" type="password" class="input-no" size="12" maxlength="12" onfocus="Show('For_Player_Password_Confirm')" onBlur="Hide('For_Player_Password_Confirm')">
	<span id="For_Player_Password_Confirm" class="High" style="display: none">&nbsp;�����ظ���������</span> <br>
	����������
	<input name="Player_Name_Net" type="text" class="input-no" size="12" maxlength="20" onfocus="Show('For_Player_Name_Net')" onBlur="Hide('For_Player_Name_Net')" value="<%=Player_Name_Net%>">
	<span id="For_Player_Name_Net" class="High" style="display: none">&nbsp;��������������û�пɲ���</span> <br>
	���ڵ�����
	<select name="Player_Area" class="input-no">
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "�Ϻ�" Then%>selected<%End If%>>�Ϻ�</option>
	  <option <%If Player_Area = "���" Then%>selected<%End If%>>���</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "�㶫" Then%>selected<%End If%>>�㶫</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "�ӱ�" Then%>selected<%End If%>>�ӱ�</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "������" Then%>selected<%End If%>>������</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "���ɹ�" Then%>selected<%End If%>>���ɹ�</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "�ຣ" Then%>selected<%End If%>>�ຣ</option>
	  <option <%If Player_Area = "ɽ��" Then%>selected<%End If%>>ɽ��</option>
	  <option <%If Player_Area = "ɽ��" Then%>selected<%End If%>>ɽ��</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "�Ĵ�" Then%>selected<%End If%>>�Ĵ�</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "�½�" Then%>selected<%End If%>>�½�</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "�㽭" Then%>selected<%End If%>>�㽭</option>
	  <option <%If Player_Area = "���" Then%>selected<%End If%>>���</option>
	  <option <%If Player_Area = "����" Then%>selected<%End If%>>����</option>
	  <option <%If Player_Area = "̨��" Then%>selected<%End If%>>̨��</option>
	</select><br>
	
	  �������£�
	  <select name="Player_Year" class="input-no">
	  <%
	  For Y = 1900 To Year(Now)%>
	  <option value="<%=Y%>"<%If Y = Player_Year Then%>selected<%End If%>><%=Y%>��</option>
	  <%Next%>
	  </select>
	  <select name="Player_Month" class="input-no">
	  <%
	  For M = 1 To 12%>
	  <option value="<%=M%>"<%If M = Player_Month Then%>selected<%End If%>><%=M%>��</option>
	  <%Next%>
	  </select>
	  <br>
	  �������䣺
	<input name="Player_Email" type="text" class="input-no" size="35" maxlength="50" onfocus="Show('For_Player_Email')" onBlur="Hide('For_Player_Email')" value="<%=Player_Email%>">
	<span id="For_Player_Email" class="High" style="display: none">&nbsp;��������������䣬û�пɲ���</span><br>
	�ѣѺ��룺
	<input name="Player_QQ" type="text" class="input-no" size="12" maxlength="12" onfocus="Show('For_Player_QQ')" onBlur="Hide('For_Player_QQ')" value="<%=Player_QQ%>">
	<span id="For_Player_QQ" class="High" style="display: none">��������QQ��û�пɲ���</span><br>
	�ҵ���꣺
	<input name="Player_Mouse" type="text" class="input-no" size="35" maxlength="50" onfocus="Show('For_Player_Mouse')" onBlur="Hide('For_Player_Mouse')" value="<%=Player_Mouse%>">
	<span id="For_Player_Mouse" class="High" style="display: none">&nbsp;������������ͺţ�û�пɲ���</span>
	<br>
	�ҵ����棺
	<input name="Player_Pad" type="text" class="input-no" size="35" maxlength="50" onfocus="Show('For_Player_Pad')" onBlur="Hide('For_Player_Pad')" value="<%=Player_Pad%>">
	<span id="For_Player_Pad" class="High" style="display: none">&nbsp;�������������ͺţ�û�пɲ���</span>
	<br>
	��Ȥ���ã�
	<input name="Player_Interest" type="text" class="input-no" size="50" maxlength="40" onfocus="Show('For_Player_Interest')" onBlur="Hide('For_Player_Interest')" value="<%=Player_Interest%>">
    <span id="For_Player_Interest" class="High" style="display: none">&nbsp;��40���ڣ��ɲ���</span><br>
¼���ʶ���֣�	<span class="Sign"><%=Player_Text%></span>
	</td>
					</tr>
					<tr>
						<td width="170" class="Text">
							<table width="110" height="30" border="0" align="right" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Player_Form.submit();">
								<tr>
									<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�ύ�޸�</td>
								</tr>
							</table>
						</td>
						<td width="120" class="Text">
							<table width="110" height="30" border="0" align="center" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Player_Form.reset();">
								<tr>
									<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�ָ�ԭ��</td>
								</tr>
							</table>
						</td>
						<td width="170" class="Text">
							<table width="80" height="30" border="0" align="left" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
								<tr>
									<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�����޸�</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</form>
	</body>
	</html>
	<iframe name="Action" style="display: none"></iframe>
	<script language="javascript">
	function KeyDown()
	{ 
		var keyCode;
		try{ 
			   keyCode=event.keyCode;
		 } 
		 catch(a){
			   keyCode=KeyDown.arguments[0].keyCode; 
		 } 
		switch(keyCode)
		{
			case 27:
			Cancel();      
			break;
		}
	}		
	document.onkeydown=KeyDown; 
	document.onkeypress=KeyDown;

	function Cancel()
	{
			Player_Form.Player_Password.blur();
			Player_Form.Player_Password_Confirm.blur();
			Player_Form.Player_Email.blur();
			Player_Form.Player_QQ.blur();
			Player_Form.Player_Mouse.blur();
			Player_Form.Player_Pad.blur();
			Player_Form.Player_Interest.blur();
			
			parent.End_Mask();
			parent.document.getElementById('Window_Box').style.display='none';
	}
	</script>
	<%
End If
%>
