<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-31
'------------------------
Dim Player_Id
%>
<!--#include virtual="/Player/Check.asp"-->
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<!--#include virtual="/Models/Common/Function.asp"-->
<%
Call Check_Master()
Call Get_Input()
Call Check_Input()

If Message = "No" And Check_Result <> "Fail" Then

	Call Start_Conn()
	
	SQL_Text = "Player_Read "&Player_Id
	rs.Open SQL_Text,Conn,3,1
	
	Player_Password = rs("Player_Password")
	Player_Name = rs("Player_Name")
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
	Player_Sex = rs("Player_Sex")
	Player_Image = rs("Player_Image")
	Player_Register_Time = rs("Player_Register_Time")
	Player_Login_Time = rs("Player_Login_Time")
	Player_IP = rs("Player_IP")
	Player_IsMaster = rs("Player_IsMaster")
	Player_Question = rs("Player_Question")
	Player_Answer = rs("Player_Answer")
	
	Call End_Conn()	
	
	If Player_Year = 0 Then Player_Year = 1980
	If Player_Month = 0 Then Player_Month = 1
	
	If Player_IsMaster And (Session("Player_Id") <> 1) Then
		Message = "����Ȩִ�д˲�����"
		Act = "parent.End_Mask();parent.document.getElementById('Window_Box').style.display='none';"
		Call Error()
	Else
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
	<link href="/Models/Css/2008.css?v=20220423" rel="stylesheet" type="text/css">
	<!--#include virtual="/Models/Include/Windows.asp"-->
	<!--#include virtual="/Models/Include/ShowHide.asp"-->
	</head>
	<body onload="Window_Load();" onMousemove="move()" topmargin=0 leftmargin=0 scroll=no>
	<form name="Player_Form" action="Action/Edit_Action.asp" method="post" target="Action">
	<table id="Window_Table" border="0" cellspacing="1" cellpadding="0" bgcolor="#999999">
		<tr>
			<td bgcolor="#444444">
				<table width="500" border="0" cellspacing="0" cellpadding="0">
					<tr bgcolor="#555555">
						<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">���༭�û�</td>
						<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
				</tr>
				</table>
				<table width="500" border="0" cellspacing="10" cellpadding="0">
					<tr>
					  <td width="120" class="Text">
			<%
			If Player_Image Then
				%><img src="/Models/Images/Player/<%=Player_Id%>.jpg" border="1" align="absmiddle" style="border-color:#999999;"><%
			Else
				%><img src="/Models/Images/Player/No.jpg" border="1" align="absmiddle" style="border-color:#999999; cursor:pointer" onclick="top.Window('/Help/Image.asp');" title="����ϴ���Ƭ��"><%
			End If%>
	</td><td width="170" class="Text">
						<span class="Sign"><%=Player_Name_Chinese%></span>(<%=Player_Name_English%>)
						<br>
	��¼���ƣ�<span class="High"><%=Player_Name%></span><br>
	��¼���룺<span class="High"><%=Player_Password%></span><br>
	<input name="Player_Id" type="hidden" value="<%=Player_Id%>">
	</td>
			  <td width="170" class="Text">ע��ʱ�䣺<%=FormatDateTime(Player_Register_Time,1)%><br>
			    �����¼��<%=FormatDateTime(Player_Login_Time,1)%><br>
			    ��¼�ɣУ�<span class="Title"><%=Player_IP%></span></td>
			  </table>
	<table width="500" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td height="1" bgcolor="#555555"></td>
	  </tr>
	</table>
	<table width="500" border="0" cellspacing="10" cellpadding="0">
	<tr>
	<td colspan="3" class="Text">
����������
<input name="Player_Name_Chinese" type="text" class="input-no" size="12" maxlength="12" onfocus="Show('For_Player_Name_Chinese')" onBlur="Hide('For_Player_Name_Chinese')" value="<%=Player_Name_Chinese%>">
<span id="For_Player_Name_Chinese" class="High" style="display: none">&nbsp;����������ʵ������ע����ܸ���</span>
	<%If Session("Player_Id") = 1 Then%>
  <input name="Player_IsMaster" id="Player_IsMaster" type="checkbox" value="1"<%If Player_IsMaster Then%> checked<%End If%>><label for="Player_IsMaster">����Ա</label>
  <input name="Player_Image" id="Player_Image" type="checkbox" value="1"<%If Player_Image Then%> checked<%End If%>><label for="Player_Image">��ͨ��Ƭ</label>
  <%End If%>
<br>
����ƴ����
<input name="Player_Name_English" type="text" class="input-no" size="20" maxlength="30" onfocus="Show('For_Player_Name_English')" onBlur="Hide('For_Player_Name_English')" value="<%=Player_Name_English%>">
<span id="For_Player_Name_English" class="High" style="display: none">&nbsp;���Կո�ָ�������ĸ��д���磺<font class="Signest">Zhang Shen Jia</font></span> <br>
����������
<input name="Player_Name_Net" type="text" class="input-no" size="12" maxlength="20" onfocus="Show('For_Player_Name_Net')" onBlur="Hide('For_Player_Name_Net')" value="<%=Player_Name_Net%>">
<span id="For_Player_Name_Net" class="High" style="display: none">&nbsp;��������������û�пɲ���</span> <br>
�ԡ�����
<select name="Player_Sex" class="input-no" onfocus="Show('For_Player_Sex')" onBlur="Hide('For_Player_Sex')">
  <option value="1" <%If Player_Sex Then%>selected<%End If%>>��</option>
  <option value="0" <%If Not Player_Sex Then%>selected<%End If%>>Ů</option>
</select>
<span id="For_Player_Sex" class="High" style="display: none">&nbsp;��ע����ܸ���</span> <br>
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
	<input name="Player_Interest" type="text" class="input-no" size="50" maxlength="38" onfocus="Show('For_Player_Interest')" onBlur="Hide('For_Player_Interest')" value="<%=Player_Interest%>">
    <span id="For_Player_Interest" class="High" style="display: none">&nbsp;��40���ڣ��ɲ���</span><br>
¼���ʶ���֣�	
<input name="Player_Text" type="text" class="input-no" size="45" maxlength="50" value="<%=Player_Text%>"><br>
������ʾ���⣺
<input name="Player_Question" type="text" class="input-no" size="30" maxlength="50" onFocus="Show('For_Player_Question')" onBlur="Hide('For_Player_Question')" value="<%=Player_Question%>">
<span id="For_Player_Question" class="High" style="display: none">&nbsp;��ע����ܸ��ģ���������д��</span> <br>
������ʾ�𰸣�
<input name="Player_Answer" type="text" class="input-no" size="30" maxlength="50" onfocus="Show('For_Player_Answer')" onBlur="Hide('For_Player_Answer')" value="<%=Player_Answer%>">
  <span id="For_Player_Answer" class="High" style="display: none">&nbsp;��ע����ܸ��ģ���������д��</span>
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
	function KeyDown(e){     
		var keyCode;
		try{ 
			   keyCode=event.keyCode;
		 } 
		 catch(a){
			   keyCode=KeyDown.arguments[0].keyCode; 
		 } 
		switch(keyCode)
		{
			case 13:
			Player_Form.submit();
			break;
			case 27:
			Cancel();      
			break;
		}
	}		
	document.onkeydown=KeyDown; 
	document.onkeypress=KeyDown;

	function Cancel()
	{
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
End If

Sub Get_Input()

	Player_Id = Request("Id")

End Sub

Sub Check_Input()

	Message = "No"
	
	If Player_Id <> "" And Check_Express(Player_Id,"\d{1,6}") Then Message = "��ָ����[ID]���Ϸ�!"
	
	If Message <> "No" Then
		Act="No"
		Call Error()
	End If	
	
End Sub
%>
