<%
'------------------------
'Code:Zhang Shen Jia
'Date:2008-1-1
'------------------------
Dim Title_Id
%>
<!--#include virtual="/Player/Check.asp"-->
<!--#include virtual="/Models/Common/Const.asp"-->
<!--#include virtual="/Models/Common/ConnDB.asp"-->
<!--#include virtual="/Models/Include/ShowHide.asp"-->
<%
Call Check()
Call Get_Input()

If Check_Result <> "Fail" Then

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
		background-color: #333333;
	}
	.tbl {table-layout:fixed}
	.td {overflow:hidden;}
	-->
	</style>
	<link href="/Models/Css/2008.css?v=20220423" rel="stylesheet" type="text/css">
	</head>
	<body onLoad="parent.document.getElementById('BBS').style.display='block';Title_Form.Title_Text.focus();">
	
		<table width="575" border="0" cellspacing="0" cellpadding="0">
		<tr>
		<td width="106" class="Text">
		<table width="80" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onClick="top.location='/BBS/Title.asp?Id=<%=Title_Id%>';">
		  <tr>
			<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����</td>
		  </tr>
		</table></td>
		<td width="469" class="Text">�����ظ�������</td>
		</tr>
		<tr><td height="10" colspan="3"></td></tr>
		<tr><td height="1" colspan="3" bgcolor="#555555"></td></tr>
		<tr><td height="21" colspan="3"></td></tr>
		</table>
	<table width="575" border="0" cellspacing="0" cellpadding="0">
	  <form name="Title_Form" action="Action/Reply_Action.asp" method="post" target="Action">
	  <tr>
		<td width="72" align="right" valign="top" class="Text">�ڡ����ݣ�
		</td>
	    <td width="503" valign="top" class="Text">
		<textarea name="Title_Text" cols="70" rows="20" wrap="VIRTUAL" class="input-bbs" onKeyDown="KeyDown();" onkeyup="Resize_Textarea();"></textarea>
		<input name="Title_Id" value="<%=Title_Id%>" type="hidden">		
		</td>
	  </tr>
	  <tr>
		<td width="72" valign="top" class="Text">&nbsp;</td>
	    <td width="503" height="50" valign="middle" class="Text">
		<table border="0"  cellpadding="0" cellspacing="0">
		<tr>
		<td width="90">
			<table width="80" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onClick="Title_Form.submit();">
			  <tr>
				<td align="center" bgcolor="#555555" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����ظ�</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onclick="Add_Class('Title');Resize_Textarea();">
			  <tr>
				<td align="center" bgcolor="#444444" class="Title" onMouseOver="this.className='Signest';" onMouseOut="this.className='Title';">����</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onclick="Add_Class('Sign');Resize_Textarea();">
			  <tr>
				<td align="center" bgcolor="#444444" class="Sign" onMouseOver="this.className='Sign';" onMouseOut="this.className='Sign';">��Ŀ</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onclick="Img();Resize_Textarea();">
			  <tr>
				<td align="center" bgcolor="#444444" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">��ͼ</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onclick="Url();Resize_Textarea();">
			  <tr>
				<td align="center" bgcolor="#444444" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����</td>
			  </tr>
			</table>
		</td>
		<td width="70">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onclick="Face();Resize_Textarea();">
			  <tr>
				<td align="center" bgcolor="#444444" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����</td>
			  </tr>
			</table>
			<!--#include virtual="/Models/Include/Face.asp"-->
		</td>
		<td width="80">
			<table width="60" height="20" border="0" align="left" cellpadding="0" cellspacing="0" style="cursor:pointer; " onclick="Mine();Resize_Textarea();">
			  <tr>
				<td align="center" bgcolor="#444444" class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';">����</td>
			  </tr>
			</table>
			<!--#include virtual="/Models/Include/Mine.asp"-->
		</td>
		</tr>
		</table>
		</td>
	  </tr>
	  <tr>
	    <td valign="top" class="Text">&nbsp;</td>
	    <td height="50" valign="middle" class="Text">�� ���޷��༭�Ѿ�����Ļظ�,ֻ�ܽ���ɾ��<br>
        �� Υ��<a href="javascript:;" onclick="top.Window('/Help/BBS.asp');" class="Sign">����̳����������</a>�����⽫��ɾ��</td>
	    </tr>
	  </form>
	</table>

	<script type="text/javascript">
		var textarea=document.Title_Form.Title_Text;//��ȡtextareaԪ��

		function Resize_Textarea(){
			// iPhone��Android��textarea���״���������ʱ��iPad������ʾ(����ģ�����)
			// textarea���������߶ȣ����ҵ����߶����ֻ��ֱ�����أ�ԭ����
			if(/(iPhone|Android)/i.test(navigator.userAgent)){
				// �����ֻ����ڱ༭textarea����ʱ�޷�������ť
				textarea.style.height="100%";
				if(textarea.value==""){
					// ���������ʱtextarea���Զ��ظ�ԭ���ĸ߶ȣ�ԭ����
					textarea.style.height="";
				}
			}
		}

		function Add_Class(classname) {
			let start=textarea.selectionStart;//ѡ�����ݵĿ�ʼλ��
			let end=textarea.selectionEnd;//ѡ�����ݵĽ���λ��
			let selection=textarea.value.substring(start,end);//ѡ�������
			textarea.focus();//��ȡ���㣬��Ȼ�޷�������������
			textarea.setSelectionRange(start,end);
			textarea.setRangeText("["+classname+"]"+selection+"[/"+classname+"]");
			textarea.setSelectionRange(start,end+2*classname.length+5);
		}
	</script>

	</body>
	</html>
	<iframe name="Action" style="display: none"></iframe>
	<%
End If

Sub Get_Input()

	Title_Id = Request("Id")
	
End Sub
%>
