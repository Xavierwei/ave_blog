<%@ CODEPAGE=65001 %>
<%
'///////////////////////////////////////////////////////////////////////////////
'// 插件应用:    Z-Blog 1.5及以上的版本
'// 插件制作:    williamlong(http://www.williamlong.info)
'// 备    注:    反垃圾留言的插件代码
'// 最后修改：   2006-6-27
'// 最后版本:    1.0.0
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

	Dim strContent
	strContent=LoadFromFile(BlogPath & "/PLUGIN/HtmlDefault/include.asp","utf-8")

	Dim strHTMLDEFAULT_NEW_FILENAME
	strHTMLDEFAULT_NEW_FILENAME=Replace(Replace(Request.Form("strHTMLDEFAULT_NEW_FILENAME"),vbCrlf,""),vbLf,"")
	Call SaveValueForSetting(strContent,True,"String","HTMLDEFAULT_NEW_FILENAME",strHTMLDEFAULT_NEW_FILENAME)

	Call SaveToFile(BlogPath & "/PLUGIN/HtmlDefault/include.asp",strContent,"utf-8",False)

	Response.Redirect "main.asp"


Call System_Terminate()

If Err.Number<>0 then
  Call ShowError(0)
End If
%>