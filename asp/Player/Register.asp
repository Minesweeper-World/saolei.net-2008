<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-11
'------------------------
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
</head>
<body onload="Window_Load();" onMousemove="move()" topmargin=0 leftmargin=0 scroll=no>
<table id="Window_Table" border="0" cellspacing="1" cellpadding="0" bgcolor="#999999">
	<tr>
		<td bgcolor="#444444">
			<table width="360" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">��ע��ض�</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="360" border="0" cellspacing="10" cellpadding="0">
				<tr>
					<td colspan="2" class="Text">
						<span class="Sign">If you are not Chinese , Please don't register to this site. </span><br>
						1��<span class="High"><strong>����ʹ��</strong></span><span class="Signest"><strong>��ʵ����</strong></span><span class="High"><strong>ע�ᣬÿ��ֻ��ע��һ���û���</strong></span><br>
						2��<span class="High"><strong>δ��ʵ��ע�������ϴ�¼��һ�ɲ����ͨ����</strong></span><br>
						3���緢��ע����Ϣ��ʵ������Ա��Ȩ��ͣ��ɾ�����û���<br>
						4������վֻ���� <a href="/Download/Index.asp" target="_blank" class="High"><strong>Minesweeper Arbiter</strong></a> ¼�Ƶ� <span class="High"><strong>avf</strong></span> ��ʽ¼�� <br>
						5��¼���ϴ����辭����Ա��˺󷽿���Ч��<br>
						6���緢���û�α��¼�󣬽�����ɾ�����û�������Ϣ��
					</td>
				</tr>
				<tr>
					<td width="175" class="Text">
						<table width="110" height="30" border="0" align="right" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="location='/Player/Register_Text.asp';">
							<tr>
								<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">��ͬ����������</td>
							</tr>
						</table>
					</td>
					<td width="155" class="Text">
						<table width="80" height="30" border="0" align="left" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
							<tr>
								<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����ע��</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
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
		parent.End_Mask();
		parent.document.getElementById('Window_Box').style.display='none';
}
</script>
