<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-30
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
			<table width="370" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">�������ϴ��ҵ���Ƭ��</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="370" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td class="Text">					  <p class="Text">1��ѡ���Լ��������һ��������Ƭ��Խ����Խ�ã���ͼ��<br>
				    ��&nbsp;<img src="/Models/Images/Player/Example/1.JPG" width="243" height="210"> <span class="Title">zhaopian.jpg				    </span><br>
				    2����ͷ�����ּ��г������ر�ע��Ҫ��ͷ����ΧԤ��һЩ�ռ䣬��Ҫ���ɴ�ͷ״��Ȼ��༭��<span class="Sign">100x100</span>���أ����<span class="Sign">JPG</span>��ʽ��<br>
				    ��&nbsp;<img src="/Models/Images/Player/Example/2.JPG" width="100" height="100">				    <span class="Title">id1.jpg</span><br>
				    3�����༭�õ���Ƭ��ͬ�Լ���<span class="Signest">Id</span>���ʼ���<a href="mailto:saolei@vip.qq.com" target="_blank" class="Sign">saolei@vip.qq.com</a><br>                  
				  <table width="350" height="30" border="0" align="center" cellpadding="10" cellspacing="1">
							<tr>
							  <td align="left" bgcolor="#555555" class="High"><span class="High">���⣺</span><span class="Text">���뿪ͨ��Ƭ</span><br>
                                  ���ģ� <span class="Text">վ����ã������뿪ͨ��Ƭ���ܣ��ҵ�Id��</span><span class="Signest">1</span><span class="Text">��лл��</span><br>
                    <span class="High">������</span> <span class="Title">id1.jpg</span></td>
							</tr>
					</table>
				  </p>
			      </td>
				</tr>
				<tr>
				  <td class="Text">
						<table width="180" height="30" border="0" align="center" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
							<tr>
								<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">��������ô�ϴ���Ƭ��</td>
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
