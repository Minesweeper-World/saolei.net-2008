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
<link href="/Models/Css/2008.css?v=20211218" rel="stylesheet" type="text/css">
<!--#include virtual="/Models/Include/Windows.asp"-->
</head>
<body onload="Window_Load();Player_Form.Player_Text.select();" onMousemove="move()" topmargin=0 leftmargin=0 scroll=no>
<form name="Player_Form" action="Action/Text_Action.asp" method="post" target="Action">
<table id="Window_Table" border="0" cellspacing="1" cellpadding="0" bgcolor="#999999">
	<tr>
		<td bgcolor="#444444">
			<table width="560" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#555555">
					<td height="25" class="Highest" onmousedown="down=true;divtop=event.clientY;divleft=event.clientX;" onmouseup="down=false" onmouseout="down=false">���趨¼���ʶ����</td>
					<td width="20" height="25" align="center" class="Bold" onMouseOver="this.className='Signest';" onMouseOut="this.className='Bold';" style="cursor:pointer; " onClick="Cancel();">��</td>
			</tr>
			</table>
			<table width="560" border="0" cellspacing="10" cellpadding="0">
				<tr>
				  <td colspan="3" class="Text">
						<span class="Title">ʲô��¼���ʶ���֣�<br>
					  </span>��<img src="/Models/Images/Common/Sign1.GIF" width="161" height="71" border="1" style="border-color: #cccccc "><br>  
					  					  ��¼���ʶ���ֽ���������ÿ��¼����·�����<span class="Sign">¼����������Ψһ֤��</span>��<span class="Title"><br>
						��������¼���ʶ���֣�<br>
                                                                        </span>���������� <a href="/Download/Arbiter_0.52.3.zip" class="Sign">Minesweeper Arbiter</a> ����װ��<br>
����װ������н�����Ϸ������������⣬��<a href="/BBS/Index.asp" target="_blank" class="Sign">����̳����</a>��<span class="Title"><br>
</span> ��������Ϸ�� <span class="Highest">F5</span> �� �ɽ������ý��棬������ר����¼���ʶ���֣���ѡ����ҡ�<br>
<img src="/Models/Images/arbiter_setting.png" width="356" height="73" border="1" style="border-color: #cccccc ">
<br>
<span class="High">��¼���ʶ����ֻ��ʹ��Ӣ��</span>���Ƽ�ʹ������ƴ�����ӵ���ƴ�������磺<span class="Signest">Wang Wei (Shan Xi)</span> �� <br>
�������ע��ʱ���������¼���ʶ���֣��������Ա��ϵ���и��ġ�<br>
��������ϴ��˳ɼ��������¼���ʶ���֣�����������еĳɼ���<br>
��<span class="High">����ϴ���¼��û���趨¼���ʶ���֣����ߺ�ע��ʱ��д��¼���ʶ��һ�£�</span><span class="Sign">���޷�ͨ����ˣ�</span></td>
				</tr>
				<tr>
					<td width="287" class="Text"><span class="Sign">�� �����������úõ�¼���ʶ���֣� </span><br>��
				    <input name="Player_Text" type="text" class="input-no" size="45" maxlength="50" value="<%=Session("Player_Text")%>"></td>
					<td width="105" valign="bottom" class="Text">
						<table width="80" height="30" border="0" align="right" cellpadding="0" cellspacing="1" style="cursor:pointer; " onClick="Player_Form.submit();">
							<tr>
								<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">��һ��</td>
							</tr>
						</table>
					</td>
					<td width="128" valign="bottom" class="Text">
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
</form>
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
		Player_Form.Player_Text.blur();
		parent.End_Mask();
		parent.document.getElementById('Window_Box').style.display='none';
}
</script>
