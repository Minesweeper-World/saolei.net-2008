<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-13
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
<link href="/Models/Css/2008.css?v=20211218" rel="stylesheet" type="text/css">
<!--#include virtual="/Models/Include/Windows.asp"-->
</head>
<body onload="Window_Load();" onMousemove="move()" topmargin=0 leftmargin=0 scroll=no>
<table id="Window_Table" border="0" cellspacing="1" cellpadding="0" bgcolor="#999999">
	<tr>
		<td bgcolor="#444444">
			<table width="500" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">����̳��������</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="500" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td class="Text">					  <p class="Text"><span class="Title">��ּ<br>
                  </span>��������̳��������ּ��Ϊ����ɨ����һ��ཻ�������������ٽ���ͨ��ˮƽ������<br>
����ԭ���ϲ��������۷�Χ���ᳫɨ�׻��⡣<br>
				  </p>
			        <table width="420" border="0" align="center" cellpadding="10" cellspacing="0">
                      <tr>
                        <td width="180" bgcolor="#555555" class="Text"><span class="Title">��ӭ���۵�����<br>
                        </span> �� ɨ���ĵ����<br>
�� ɨ������̽��<br>
�� ɨ�������о�<br>
�� ɨ������<br>
�� ɨ������<br>
�� ɨ���������<br>
�� ɨ���ܱ߼��丽����Ϸ��</td>
                        <td width="1"></td>
                        <td width="180" bgcolor="#555555" class="Text"><span class="Title">����ӭ���۵�����</span><br>
�� ���κ�����<br>
�� �������κ��ڽ�ɫ��<br>
�� ����ɫ�顢YY������<br>
�� ������桢����������<br>
�� ����Υ������<br>
�� ���л���<br>
�� �̰���ڮ�١�������</td>
                      </tr>
                    </table>
			        <p class="Text">
  <span class="Title">����취</span><br>
  ������ �Է������Ϲ涨���������⣬�����뾫������м�����<br>
  ������ �Բ��������Ϲ涨������ͻظ�����ֱ��ɾ�����������ʱ�ɷ�ֱͣ��ɾ���û���<br>
  <span class="Sign">����ɨ���������Ŷӱ������������������ս���Ȩ��</span><br>
				      </p></td>
				</tr>
				<tr>
				  <td class="Text">
						<table width="180" height="30" border="0" align="center" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
							<tr>
								<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�����ˣ���һ������</td>
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
