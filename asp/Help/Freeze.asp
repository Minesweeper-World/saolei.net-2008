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
<link href="/Models/Css/2008.css" rel="stylesheet" type="text/css">
<!--#include virtual="/Models/Include/Windows.asp"-->
</head>
<body onload="Window_Load();" onMousemove="move()" topmargin=0 leftmargin=0 scroll=no>
<table id="Window_Table" border="0" cellspacing="1" cellpadding="0" bgcolor="#999999">
	<tr>
		<td bgcolor="#444444">
			<table width="500" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">��Ϊʲô¼��ᱻ���᣿</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="500" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td class="Text">					  <p class="Text"><span class="High">1���ϴ���¼��û������¼���ʶ����</span><br>
				      <span class="Bold">����</span>��ʶ����Ϊ���Ĭ�ϵ�<span class="Sign"> Your name here...Press F5</span>�������޷��ж�¼��Ĺ�����<br>
				      <span class="High">2���ϴ���¼���ʶ�������û�ע���¼���ʶ���ֲ���</span><br>
				      <span class="Bold">����</span>�û�ע��ı�ʶΪ <span class="Sign">Zhang San</span>����¼��ı�ʶ����Ϊ <span class="Sign">Li Si </span>��<br>
				    <span class="High">3���ϴ�ʱ��д��¼�����ݺ�¼��ʵ�����ݲ���</span><br>
                    <span class="Bold">����</span>�ϴ��߼�¼��ʱ��ѡ�ɳ���¼�񣬻�¼����<span class="Sign">98.45</span>�룬�ϴ�ʱ��д��<span class="Sign">98.00</span>�롣<br>
				    <span class="High">4��¼���Classical Modeģʽ</span><br>
				    <span class="Bold">����</span>�ϴ���<span class="Sign"> UPK Mode</span> ���� <span class="Sign">Density Mode</span> ģʽ��¼��<br>
				    <span class="High">5��¼�����BUG</span><br>
				    <span class="Bold">����</span>¼����ɺ�����δ�򿪵ķ��飬����<span class="Sign"></span>ÿ�β�����ʾ�����ʱ�䶼��ͬ��<br>
				    <span class="High">6��¼���޷���
				    </span><br>
				    <span class="Bold">����</span>���������ļ������ϴ����𻵵�¼���ļ���<br>
				    <span class="Text">����¼�񱻶����ԭ���Ѿ�ͨ�������ύ���ϴ��߱��ˣ�</span><span class="Sign">��¼�����������Զ�ɾ����</span><br>
				    <span class="Sign">�����������д�������ȱ���¼����ɾ��¼�񲢴����ϴ�������ԭ����ֱ��ɾ��¼��</span><br>
				  </p>
			      </td>
				</tr>
				<tr>
				  <td class="Text">
						<table width="180" height="30" border="0" align="center" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
							<tr>
								<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�����ˣ���Ҫ������¼��</td>
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
	history.go(-1);
}
</script>
