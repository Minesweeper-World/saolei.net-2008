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
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">��ɨ���������</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="500" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td class="Text">					  <p class="Text"><SPAN 
                  class=Signest>3BV</SPAN>:&nbsp;<span class="High">Bechtel's&nbsp;Board&nbsp;Benchmark&nbsp;Value&nbsp;</span><BR>
				    ÿ�ֽ����з��׵ķ���㿪������������������Ŀǰ�ձ����������������׳̶ȵ����ݡ�<BR>
				    <SPAN 
                  class=Signest>3BV/s</SPAN>:&nbsp;<span class="High">3BV&nbsp;per&nbsp;second&nbsp;&nbsp;[&nbsp;3BV&nbsp;/&nbsp;(Time&nbsp;-&nbsp;1)&nbsp;]</span><BR>
				    һ����ƽ��ÿ������ɵ�3BVֵ����Ŀǰ�ձ������������ɨ���ٶȵ����ݡ�<BR>
				    <SPAN 
                  class=Signest>UPK</SPAN>:&nbsp;<span class="High">Unfair&nbsp;Prior&nbsp;Knowledge</span><BR>
				    �����¿�ʼͬһ�ֵ���Ϸģʽ����ģʽ�����¼���ܲ���������<BR>
				    <SPAN 
                  class=Signest>IOE</SPAN>:<span class="High">&nbsp;Index&nbsp;of&nbsp;Efficiency&nbsp;&nbsp;[&nbsp;3BV&nbsp;/&nbsp;Total&nbsp;Clicks&nbsp;]</span><BR>
				    3BV��ʵ�ʵ�����ı��ʣ���Ŀǰ�ձ�����������Ҳ���Ч�ʵ����ݡ�<BR>
				    <SPAN 
                  class=Signest>IOS</SPAN>:&nbsp;<span class="High">Index&nbsp;of&nbsp;Speed&nbsp;&nbsp;[&nbsp;log&nbsp;(Time&nbsp;-&nbsp;1)&nbsp;/&nbsp;log&nbsp;(3BV)&nbsp;]</span><BR>
				    ʱ��ĵ�����3BV�ĵ���֮���ʣ���3BV/s�����൱��<BR>
				    <SPAN 
                  class=Signest>RQP</SPAN>:&nbsp;<span class="High">Rapport&nbsp;Qualit��&nbsp;Prix&nbsp;&nbsp;[&nbsp;Time&nbsp;/&nbsp;(3BV/s)&nbsp;]</span><BR>
				    ʱ����3BV/s�ı��ʣ��������ʱ�����أ���3BV/s����˵��ɨ���ٶȡ�<BR>
				    <SPAN 
                  class=Signest>NF</SPAN>:&nbsp;<span class="High">No&nbsp;Flag</span><BR>
				    һ�ֽ��������������Ϸ�������׵��淨��<BR>
				    <SPAN 
                  class=Signest>MB</SPAN>:&nbsp;<span class="High">Miss&nbsp;Block</span><BR>
				    �������涼��ɣ�����һ����������Ӷ�û�е㿪�������<BR>
				    <SPAN 
                  class=Signest>LC</SPAN>:&nbsp;<span class="High">Lose&nbsp;on&nbsp;the&nbsp;last&nbsp;click</span><BR>
				    �����һ������ʱ���Ҳ��ס�<BR>
				    <SPAN 
                  class=Signest>Sum</SPAN>:&nbsp;
				    �������м����߼��ɼ���Ӷ��ó����ܳɼ���<BR>
				    <SPAN 
                  class=Signest>Sub</SPAN>:&nbsp;
				    С��ĳ��ֵ������߼�Sub50��˵���߼��ɼ�&lt;50��<BR>
				    <SPAN 
                  class=Signest>Sup</SPAN>:&nbsp;
				    ����ĳ��ֵ������߼�3BV/S&nbsp;Sup4��˵���߼�3BV/S&gt;4��<br>
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
