<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-11
'------------------------
%>
<!--#include virtual="/Models/Common/Const.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META name="description" content="<%=Meta_Description%>">
<META name="keywords" content="<%=Meta_Keywords%>">
<title><%=HTML_Title%></title>
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
<body>
<!--#include virtual="/Models/Include/Top.asp"-->
<table width="910" border="0" align="center" cellpadding="0" cellspacing="1">
<tr>
<td>
<form name="Player_Form" action="Action/Login_Action.asp" method="post" target="Action">
<table width="453" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999" id="Error_Table">
	<tr>
		<td bgcolor="#444444">
			<table width="453" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">��������ʾ</td>
			</tr>
		  </table>
			<table width="453" border="0" cellspacing="30" cellpadding="0">
				<tr>
					<td colspan="3" class="Text"><span class="Sign"><img src="/Models/Images/Common/Sad.GIF" width="19" height="19" align="absmiddle"> �ܱ�Ǹ���������ʵ��ļ������ڣ������Է�����ҳ��ص���վ��ҳ��</span></td>
				</tr>
				<tr>
				  <td colspan="3" valign="top" class="Text">������Ǵӱ���վ��̳�ڲ����ʣ������������û������Ӵ���<br>
				    ���������ʹ�ñ���վ���ܣ��������������ǵ�ʧ���������Ա��ϵ��				    <br>
			      ������Ǵ�����������ʣ�������������վ�ĸ��µ������ݹ��ڡ�</td>
			  </tr>
				<tr>
				  <td width="124" valign="top" class="Text"><table width="100" height="40" border="0" align="center" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="history.go(-1);">
                    <tr>
                      <td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">������ҳ</td>
                    </tr>
                  </table></td>
			      <td width="124" align="left" valign="top" class="Text"><table width="100" height="40" border="0" align="left" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="location='/Main/Index.asp';">
                    <tr>
                      <td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�ص���ҳ</td>
                    </tr>
                  </table></td>
			      <td width="125" align="left" valign="top" class="Text"><table width="100" height="40" border="0" align="left" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Window('/Team/Index.asp');">
                    <tr>
                      <td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">��ϵ����Ա</td>
                    </tr>
                  </table></td>
			  </tr>
		  </table>
		</td>
	</tr>
</table>
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
		Player_Form.Player_Name.blur();
		Player_Form.Player_Password.blur();
		parent.End_Mask();
		parent.document.getElementById('Error_Box').style.display='none';
}
function Select()
{ 
	Player_Form.Player_Name.select();
}
</script>

<!--#include virtual="/Models/Include/Bottom.asp"-->
</body>
<iframe name="Action" width="0" height="0" style="display: none"></iframe>
</html>