<%@ CODEPAGE=65001 %>
<%
'///////////////////////////////////////////////////////////////////////////////
'// 插件应用:    Z-Blog 1.7
'// 插件制作:    
'// 备    注:    
'// 最后修改：   
'// 最后版本:    
'///////////////////////////////////////////////////////////////////////////////
%>
<% Option Explicit %>
<% On Error Resume Next %>
<% Response.Charset="UTF-8" %>
<% Response.Buffer=True %>
<!-- #include file="../../c_option.asp" -->
<!-- #include file="../../function/c_function.asp" -->
<!-- #include file="../../function/c_function_md5.asp" -->
<!-- #include file="../../function/c_system_lib.asp" -->
<!-- #include file="../../function/c_system_base.asp" -->
<!-- #include file="../../function/c_system_event.asp" -->
<!-- #include file="../../function/c_system_plugin.asp" -->
<%

Call System_Initialize()

'检查非法链接
Call CheckReference("")

'检查权限
If BlogUser.Level>1 Then Call ShowError(6) 

If CheckPluginState("HtmlDefault")=False Then Call ShowError(48)

BlogTitle="静态首页生成插件"

%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<%=ZC_BLOG_LANGUAGE%>" lang="<%=ZC_BLOG_LANGUAGE%>">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="<%=ZC_BLOG_LANGUAGE%>" />
	<link rel="stylesheet" rev="stylesheet" href="../../CSS/admin.css" type="text/css" media="screen" />
	<script language="JavaScript" src="../../script/common.js" type="text/javascript"></script>
	<title><%=BlogTitle%></title>
</head>
<body>

			<div id="divMain">
<div class="Header"><%=BlogTitle%></div>
<div id="divMain2">
<form id="edit" name="edit" method="post">
<%

	Dim tmpSng

	tmpSng=LoadFromFile(BlogPath & "/PLUGIN/HtmlDefault/include.asp","utf-8")

	Response.Write "<p><b>设置静态首页名,默认为default."& ZC_STATIC_TYPE &"(其中静态文件后缀名在网站管理里设置).</b></p>"
	Response.Write "<p>如果你的空间没有将default.html设置为默认文档，则会出现首页无法打开的情况。</p>"

	
	Dim strHTMLDEFAULT_NEW_FILENAME
	Call LoadValueForSetting(tmpSng,True,"String","HTMLDEFAULT_NEW_FILENAME",strHTMLDEFAULT_NEW_FILENAME)
	Response.Write "<p><input name=""strHTMLDEFAULT_NEW_FILENAME"" style=""width:90%"" type=""text"" value=""" & strHTMLDEFAULT_NEW_FILENAME & """/></p>"
	
	Response.Write "<hr/>"
	Response.Write "<p><input type=""submit"" class=""button"" value="""& ZC_MSG087 &""" id=""btnPost"" onclick='document.getElementById(""edit"").action=""savesetting.asp"";' /></p>"


%>
</form>
</div>
</body>
</html>
<%
Call System_Terminate()

If Err.Number<>0 then
  Call ShowError(0)
End If
%>

