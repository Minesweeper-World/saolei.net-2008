<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-11
'------------------------
%>
<!--#include virtual="/Models/Include/Window.asp"-->
<!--#include virtual="/Models/Include/Mask.asp"-->
<!--#include virtual="/Models/Include/FlopPlayer.asp"-->
<%
If Session("Player_Id")<>"" Then
%><!--#include virtual="/Models/Include/Message.asp"-->
<%End If%>
<table width="910" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="215" height="60" align="center"><a href="/Main/Index.asp"><img src="/Models/Images/Common/Logo.gif" width="185" height="55"></a></td>
    <td width="695" align="right" class="High">
	<%If Session("Player_Id")="" Then
		If Request.Cookies("Saolei.net")("Player_Name_Chinese") <> "" Then%>��ӭ��, <%=Request.Cookies("Saolei.net")("Player_Name_Chinese")%> !�� <%End If%><a href="javascript:;" onClick="Window('/Player/Login.asp');" class="Sign">��¼</a> <span class="Signest">[F2]</span>��|��<a href="javascript:;" onClick="Window('/Player/Register.asp');" class="High">ע��</a>��|��<a href="javascript:;" onClick="Window('/Player/Password.asp');" class="High">�һ�����</a>��|��<a href="javascript:;" onClick="Window('/Download/Index.asp');" class="High">�������</a>��|��<a href="javascript:;" onClick="Window('/History/2008.asp');" class="High">������ʷ</a>��|��<a href="javascript:;" onClick="Window('/About/Index.asp');" class="High">���ڱ�վ</a>��|��<a href="javascript:;" onClick="Window('/Team/Index.asp');" class="Sign">�����Ŷ�</a>
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
                case 113:
					Window('/Player/Login.asp');         
                    break;
                case 27:
					try{document.frames("Window_Frame").Cancel();}catch(e){}
                    break;
            }
		}		
		document.onkeydown=KeyDown; 
		document.onkeypress=KeyDown;
		</script>
	<%Else%>
		��ӭ��, <span class="Sign"><%=Session("Player_Name_Chinese")%></span> !�� <a href="/Player/Action/Quit_Action.asp" target="Action" class="High">�˳���¼</a>��|��<a href="javascript:;" onClick="Window('/Message/Box.asp');" class="High">����Ϣ</a>��|��<a href="/Player/Index.asp?Id=<%=Session("Player_Id")%>" class="High">�ҵĵ���</a>��|��<a href="javascript:;" onClick="Window('/Download/Index.asp');" class="High">�������</a>��|��<a href="javascript:;" onClick="Window('/History/2008.asp');" class="High">������ʷ</a>��|��<a href="javascript:;" onClick="Window('/About/Index.asp');" class="High">���ڱ�վ</a>��|��<a href="javascript:;" onClick="Window('/Team/Index.asp');" class="Sign">�����Ŷ�</a>��
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
					try{document.frames("Window_Frame").Cancel();}catch(e){}
                    break;
            }
		}		
		document.onkeydown=KeyDown; 
		document.onkeypress=KeyDown;
		</script>
		<%End If%>
	</td>
  </tr>
</table>
<table width="910" border="0" align="center" cellpadding="0" cellspacing="1">
  <tr align="center" bgcolor="#555555" height="25">
    <td width="100" id="Top_1" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="location='/Main/Index.asp';" >��ҳ</td>
    <td width="100" id="Top_2" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="location='/Ranking/Index.asp';">���а�</td>
    <td width="100" id="Top_3" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="location='/Video/Index.asp';">¼��</td>
    <td width="100" id="Top_4" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="location='/World/Index.asp';">�׽�</td>
    <td width="100" id="Top_5" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="location='/BBS/Index.asp';">��̳</td>
    <td width="100" id="Top_6" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="location='/Guide/Index.asp';">�̳�</td>
    <td width="100" id="Top_7" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="location='/Hero/Index.asp';">�����</td>
	<%If Session("Player_Id") = "" Then%>
    <td width="100" id="Top_8" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="Window('/Player/Random.asp');">�ҵĵ���</td>
    <td width="100" id="Top_9" style="cursor:pointer " class="Sign" onClick="Window('/Help/Ranking.asp');">������·</td>
	<%Else%>
    <td width="100" id="Top_8" style="cursor:pointer " class="High" onMouseOver="this.className='Sign';" onMouseOut="this.className='High';" onClick="location='/Player/Index.asp?Id=<%=Session("Player_Id")%>';">�ҵĵ���</td>
    <td width="100" id="Top_10" style="cursor:pointer " class="Sign" onClick="Window('/Video/Upload.asp');">�ϴ�¼��</td>
	<%End If%>
  </tr>
</table>
<table width="910" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr height="15">
    <td></td>
  </tr>
</table>
<script language="javascript">
function Top(Id)
{
	try{document.getElementById("Top_"+Id).style.backgroundColor = "#666666";}catch(e){}
}
function High(Id)
{
	try{document.getElementById(Id).style.backgroundColor = "#444444";}catch(e){}
}
function Low(Id)
{
	try{document.getElementById(Id).style.backgroundColor = "#333333";}catch(e){}
}
</script>