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
			<table width="426" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">���ṩ����</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="426" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td class="Text">
<p>��վһֱ��վ�������ؽ��ж���ά����ϣ���о������������ѶԱ�վ����������ʹ��վ��ά�����У������Ϸ�չ��</p>
<p>֧�����ʺţ�<span class="Sign">137516@qq.com</span></p>
<span class="Title">��������;��</span>
<p>
1�����������޼������Ȼ�������<br>
2����������<br>
3��������򿪷�<br>
</p>

<span class="Title">��ע�����</span>
<p>
1������Ӧ�ڲ�Ӱ����������������£��������С�������Уѧ���ڹ������ٽ���������<br>
2�����ڸ���˵����ע����ɨ����+�û�ID�����磺<span class="Sign">ɨ���� 54</span>������������ʧ���޷�����������<br>
3���պ�վ�Ƴ��շ���Ŀ����VIP��Ա��ʱ�����������û���ֵ��Ӧ�Ľ��������дID����Ϊ���������������պ�ȶ��ֵ��Ȩ����<br>
4���벻Ҫ��������������̳��QQȺ�У������ʵ�������վ����������ϵ��
</p>
</td>
				</tr>
				<tr>
				  <td class="Text">
				  <table width="406" border="0" cellspacing="0" cellpadding="0">
					  <tr>
						<td width="161">
							<table width="150" height="30" border="0" align="right" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="window.open('https://www.alipay.com')">
								<tr>
									<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';"><img src="/Models/Images/alipay.jpg" style="vertical-align:middle"/> <span class="Sign">ȥ֧��������</span></td>
								</tr>
						  </table>
						</td>
						<td width="161">
							<table width="150" height="30" border="0" align="left" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Cancel();">
								<tr>
									<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">�Ժ���˵</td>
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
