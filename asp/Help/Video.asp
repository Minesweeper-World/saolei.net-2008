<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-13
'------------------------
From = Request("From")
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
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">����ô��¼��</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="500" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td colspan="2" class="Text">					  <p class="Text"><span class="Title">                  </span> ����
Ҫ�ۿ�avf¼���������� <a href="/Download/Arbiter_0.52.2.zip" class="Sign">Minesweeper Arbiter 0.52.2</a> ��<br>����
Ҫ�ۿ�mvf¼���������� <a href="/Download/Minesweeper_Clone_0.97.rar" class="Sign">Minesweeper Clone 0.97</a> ����װ��<br>
������װ������н�����Ϸ������������⣬<a href="/BBS/Index.asp" target="_blank" class="Sign">�뵽��̳����</a>��<br>
��������վ���κ�һ��¼�񣬵��<span class="High">������¼��</span>����¼�񱣴浽�����ϡ�<br>
����˫������������¼���ļ���ѡ��򿪷�ʽ��<br>
����mvf¼������� <span class="Sign">Clone</span> �İ�װĿ¼��ѡ��<span class="Sign"> Minesweeper Clone.exe</span> ��<br>
����avf¼������� <span class="Sign">Arbiter</span> ������Ŀ¼��ѡ��<span class="Sign"> ms_arbiter.exe</span> ��<br>
����ѡ�� <span class="Sign">��ʼ��ʹ��ѡ��ĳ���������ļ���</span> ��<br>
��������վ���κ�һ��¼�񣬵��<span class="High">����¼��</span>��ѡ��ʼ�մ򿪡���<br>
�������ˣ����������ѡ�񡰴�¼����ֱ�Ӳ��ţ�Ҳ����ѡ�񡰱���¼�񡱽������ء�<br>
				  </p>
			      </td>
				</tr>
				<tr>
				  <td width="258" class="Text">
						<table width="180" height="30" border="0" align="right" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
							<tr>
								<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�����ˣ���Ҫ������¼��</td>
							</tr>
					</table>
				  </td>
				  <td width="212" class="Text"><table width="120" height="30" border="0" align="left" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="top.location='/BBS/Index.asp';">
                    <tr>
                      <td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">������������</td>
                    </tr>
                  </table></td>
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
	<%If From="Index" Then%>
	parent.End_Mask();
	parent.document.getElementById('Window_Box').style.display='none';
	<%Else%>
	history.go(-1);
	<%End If%>
}
</script>
