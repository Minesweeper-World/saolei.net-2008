<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-16
'------------------------
Beg_Text = "����"
Int_Text = "�м�"
Exp_Text = "�߼�"
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
<link href="/Models/Css/2008.css?v=20220104" rel="stylesheet" type="text/css">
<!--#include virtual="/Models/Include/Windows.asp"-->
</head>
<body onload="Window_Load();" onMousemove="move()" topmargin=0 leftmargin=0 scroll=no>
<table id="Window_Table" border="0" cellspacing="1" cellpadding="0" bgcolor="#999999">
	<tr>
		<td bgcolor="#444444">
			<table width="275" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">���ϴ��ɹ�</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="275" border="0" cellspacing="10" cellpadding="0">
				<tr>
					<td class="Text"><span class="Sign"><%=Session("Player_Name_Chinese")%></span>������ <span class="<%=Session("Upload_Video_Model")%>"><%Execute "Response.Write("&Session("Upload_Video_Model")&"_Text)"%></span><span class="Title"><%=Session("Upload_Video_Score")%></span> ¼���ϴ��ɹ��ˣ�<br>
					  ¼���ڹ���Ա��˺�Ż���Ч�������ĵȴ���</td>
				</tr>
				<tr>
				  <td align="right" class="Text">
					<table width="255" border="0" cellspacing="0" cellpadding="0">
					  <tr>
						<td>
							<table width="80" height="30" border="0" align="center" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
								<tr>
									<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">��֪����</td>
								</tr>
							</table>
						</td>
						<td>
							<table width="120" height="30" border="0" align="center" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="location='/Video/Upload.asp';">
								<tr>
									<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�����ϴ�¼��</td>
								</tr>
							</table>
						</td>
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
		top.location.reload();
}
</script>
