<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-17
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
			<table width="550" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">��Minesweeper Clone  0.97 ��������</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="550" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td class="Text">					  <p class="Text"><SPAN 
                  class=Title>������Ϸ��������Զ��˳�</SPAN><BR>
				    ������ϷҪ����Ļ��ɫΪ32λ������&nbsp;<SPAN 
                  class=Sign>�������&nbsp;-&nbsp;��ʾ&nbsp;-&nbsp;����</SPAN>����&nbsp;<SPAN 
                  class=Sign>��ɫ����</SPAN>&nbsp;����Ϊ&nbsp;<SPAN 
                  class=Sign>���(32λ)</SPAN>&nbsp;���ɡ�<BR>
                  <SPAN 
                  class=Title>������Ϸ��ʼ����С��</SPAN><br>
                  ������������Ϊ�����С��״̬�������������Ҽ��رյ��¡���������ж���<BR>
                  ��1������Ϸ��װĿ¼�µ�&nbsp;<SPAN 
                  class=Sign>minesweeperclone.inf</SPAN>����&nbsp;<SPAN 
                  class=Sign>Main&nbsp;X</SPAN>&nbsp;��&nbsp;<SPAN 
                  class=Sign>Main&nbsp;Y</SPAN>&nbsp;����Ϊ&nbsp;<SPAN 
                  class=Sign>0</SPAN>&nbsp;���漴�ɡ�<br>
                  ��2�����������Ҽ����������ڣ�ѡ��<span class="Sign"> �ƶ�</span>����������������һ�����������������<BR>
                  <SPAN 
                  class=Title>�����Ϸ���޷�����¼��</SPAN><BR>
                  ����&nbsp;<SPAN 
                  class=Sign>Option</SPAN>&nbsp;�˵���ѡ��&nbsp;<SPAN 
                  class=Sign>Classic&nbsp;Mode</SPAN>&nbsp;���ɡ�<BR>
                  <SPAN 
                  class=Title>��װ���������¼��Ϊ0�޷�ˢ��</SPAN><BR>
                  ���򿪼�¼���ڣ�ѡ��&nbsp;<SPAN 
                  class=Sign>Reset</SPAN>&nbsp;���ɡ�<BR>
                  <SPAN 
                  class=Title>��װ�����α�����ּ�¼��ͳ������</SPAN><BR>
�����ȱ�����Ϸ��װĿ¼�µ�&nbsp;<SPAN 
                  class=Sign>history.inf</SPAN>&nbsp;��&nbsp;<SPAN 
                  class=Sign>history-density.inf</SPAN>&nbsp;����װ�󿽱����°�װĿ¼�¼��ɡ�<BR>
                  <SPAN 
                  class=Title>��Ϸ����ʱ��ʾRun-time&nbsp;error&nbsp;'55'&nbsp;:&nbsp;File&nbsp;already&nbsp;open&nbsp;</SPAN><BR>
                  ����&nbsp;<SPAN 
                  class=Sign>F5</SPAN>&nbsp;��������&nbsp;<SPAN 
                  class=Sign>Auto&nbsp;recording</SPAN>����&nbsp;<SPAN 
                  class=Sign>Text&nbsp;for&nbsp;videos</SPAN>&nbsp;��&nbsp;<SPAN 
                  class=Sign>Player&nbsp;Name</SPAN>&nbsp;������ΪӢ�ġ�<br>
				  </p>
			      </td>
				</tr>
				<tr>
				  <td class="Text">
						<table width="180" height="30" border="0" align="center" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
							<tr>
								<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�������ˣ���лָ��</td>
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
