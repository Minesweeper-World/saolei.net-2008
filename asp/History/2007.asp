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
<script language="javascript">
function Init()
{
	h2008.className='High';
	h2007.className='Sign';
	h2006.className='High';
}
</script>
</head>
<body onload="Window_Load();Init();" onMousemove="move()" topmargin=0 leftmargin=0 scroll=no>
<table id="Window_Table" border="0" cellspacing="1" cellpadding="0" bgcolor="#999999">
	<tr>
		<td bgcolor="#444444">
			<table width="300" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">��������ʷ</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="300" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td class="Text"><table width="280" border="0" cellspacing="0" cellpadding="0">
                  <tr class="Text">
                    <td width="77" class="Highest">2007.9.25</td>
                    <td width="203"><a href="/BBS/Title.asp?Id=1074" target="_blank" class="Highest">��վ������ͻ��50W���</a></td>
                  </tr>
                  <tr class="Text">
                    <td width="77" class="Highest">2007.9.15</td>
                    <td width="203">��ͨ <span class="Sign">��������λ/��ѯ����</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.9.7</td>
                    <td>�Ƴ� <span class="Sign">��������</span> ��Ŀ</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.8.15</td>
                    <td>�Ƴ� <span class="Sign">������</span> ��Ŀ</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.8.12</td>
                    <td>��ͨ <span class="Sign">��սƽ̨</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.7.28</td>
                    <td><a href="/BBS/Title.asp?Id=348" target="_blank" class="Highest">��һ��ȫ�����Ѿۻ�</a></td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.7.20</td>
                    <td>���� <a href="/Download/&#20998;&#36776;&#29575;&#35843;&#25972;&#24037;&#20855;.exe" target="_blank" class="Sign">�ֱ��ʵ�������</a></td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.7.17</td>
                    <td>���� <a href="/BBS/Title.asp?Id=618" target="_blank" class="Highest">�й�ɨ��������T��</a></td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.5.21</td>
                    <td>��ͨ <span class="Sign">����ͳ��</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.5.1</td>
                    <td>�Ƴ� <span class="Sign">�������а�</span> ��Ŀ</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.4.30</td>
                    <td>��ͨ <span class="Sign">��������ͳ��</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.4.28</td>
                    <td>��ͨ <span class="Sign">����ɨ��</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.4.25</td>
                    <td>��ͨ <span class="Sign">�鿴����¼��</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.4.27</td>
                    <td>�Ƴ� <span class="Sign">ɨ�׽̳�</span> ��Ŀ</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.4.22</td>
                    <td>�Ƴ� <span class="Sign">��̳</span> ��Ŀ</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.4.21</td>
                    <td>��ͨ <span class="Sign">��������</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.2.9</td>
                    <td>��ͨ <span class="Sign">վ�ڶ���Ϣ</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.1.31</td>
                    <td>��ͨ<span class="Sign"> ������ʾ</span> ����</td>
                  </tr>
                  <tr class="Text">
                    <td class="Highest">2007.1.5</td>
                    <td class="Highest">2007���Ƴ���ʹ��<span class="Signest">Saolei.net</span>����</td>
                  </tr>
                  </table></td>
				</tr>
				<tr>
				  <td class="Text"><!--#include virtual="/History/Button.asp"--></td>
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
