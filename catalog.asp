<%@ CODEPAGE=65001 %>
<%
'///////////////////////////////////////////////////////////////////////////////
'//              Z-Blog
'// 作    者:    朱煊(zx.asd)
'// 版权所有:    RainbowSoft Studio
'// 技术支持:    rainbowsoft@163.com
'// 程序名称:    
'// 程序版本:    
'// 单元名称:    catalog.asp
'// 开始时间:    2005.02.11
'// 最后修改:    
'// 备    注:    目录
'///////////////////////////////////////////////////////////////////////////////
%>
<% Option Explicit %>
<% On Error Resume Next %>
<% Response.Charset="UTF-8" %>
<% Response.Buffer=True %>
<!-- #include file="c_option.asp" -->
<!-- #include file="function/c_function.asp" -->
<!-- #include file="function/c_function_md5.asp" -->
<!-- #include file="function/c_system_lib.asp" -->
<!-- #include file="function/c_system_base.asp" -->
<!-- #include file="function/c_system_plugin.asp" -->
<!-- #include file="function/c_system_event.asp" -->
<!-- #include file="plugin/p_config.asp" -->
<%
Call System_Initialize()

'plugin node
For Each sAction_Plugin_Catalog_Begin in Action_Plugin_Catalog_Begin
	If Not IsEmpty(sAction_Plugin_Catalog_Begin) Then Call Execute(sAction_Plugin_Catalog_Begin)
Next

Dim ArtList
Set ArtList=New TArticleList

ArtList.LoadCache

ArtList.template="CATALOG"

If ArtList.ExportByMixed(Request.QueryString("page"),Request.QueryString("cate"),Request.QueryString("auth"),Request.QueryString("date"),Request.QueryString("tags"),ZC_DISPLAY_MODE_ALL) Then
	ArtList.Build
	Response.Write ArtList.html
End If

'plugin node
For Each sAction_Plugin_Catalog_End in Action_Plugin_Catalog_End
	If Not IsEmpty(sAction_Plugin_Catalog_End) Then Call Execute(sAction_Plugin_Catalog_End)
Next

Call System_Terminate()

%><!-- <%=RunTime()%>ms --><%
If Err.Number<>0 then
	Call ShowError(0)
End If
%>