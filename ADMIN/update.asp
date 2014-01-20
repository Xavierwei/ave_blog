<%@ CODEPAGE=65001 %>
<%
'///////////////////////////////////////////////////////////////////////////////
'//              Z-Blog 彩虹网志个人版
'// 作    者:    朱煊(zx.asd)&(sipo)
'// 版权所有:    RainbowSoft Studio
'// 技术支持:    rainbowsoft@163.com
'// 程序名称:    
'// 程序版本:    
'// 单元名称:    edit_update.asp
'// 开始时间:    2006.07.30
'// 最后修改:    
'// 备    注:    
'///////////////////////////////////////////////////////////////////////////////
%>
<% Option Explicit %>
<% On Error Resume Next %>
<% Response.Charset="UTF-8" %>
<% Response.Buffer=True %>
<!-- #include file="../c_option.asp" -->
<!-- #include file="../function/c_function.asp" -->
<!-- #include file="../function/c_function_md5.asp" -->
<!-- #include file="../function/c_system_lib.asp" -->
<!-- #include file="../function/c_system_base.asp" -->
<%

Call System_Initialize()

'检查非法链接
Call CheckReference("")

'检查权限
If Not CheckRights("Update") Then Call ShowError(6)


BlogTitle=ZC_BLOG_TITLE & ZC_MSG044 & ZC_MSG172


'*********************************************************
' 目的：    
'*********************************************************
Function Bytes2bStr(vIn)
	Dim BytesStream,StringReturn
	Set BytesStream = Server.CreateObject("ADODB.Stream")
	With BytesStream
	.Type = adTypeText
	.Open
	.WriteText vin
	.Position = 0
	.Charset = "UTF-8"
	.Position = 2 
	 StringReturn = .ReadText
	.close
	End With
	Set BytesStream = Nothing
	Bytes2bStr = StringReturn
End Function
'*********************************************************



'*********************************************************
' 目的：    
'*********************************************************
Function ExecuteUpdate(strXmlFile)

	Dim objXmlFile,UpdateString

	Set objXmlFile = Server.CreateObject("Microsoft.XMLDOM")
	objXmlFile.load(BlogPath&"UPDATE\"&strXmlFile)
	UpdateString=objXmlFile.documentElement.selectSingleNode("update").nodeTypedvalue
	Set objXmlFile=Nothing
	Execute(Bytes2bStr(UpdateString))

End Function
'*********************************************************



'*********************************************************
' 目的：    
'*********************************************************
Function LoadUpdate(strXmlFile)

	Dim objXmlFile,UpdateString

	Set objXmlFile = Server.CreateObject("Microsoft.XMLDOM")
	objXmlFile.load(BlogPath&"UPDATE\"&strXmlFile)
	UpdateString=objXmlFile.documentElement.selectSingleNode("load").nodeTypedvalue
	Set objXmlFile=Nothing
	Execute(Bytes2bStr(UpdateString))

End Function
'*********************************************************


%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<%=ZC_BLOG_LANGUAGE%>" lang="<%=ZC_BLOG_LANGUAGE%>">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="<%=ZC_BLOG_LANGUAGE%>" />
	<link rel="stylesheet" rev="stylesheet" href="../CSS/admin.css" type="text/css" media="screen" />
	<script language="JavaScript" src="../script/common.js" type="text/javascript"></script>
	<title><%=BlogTitle%></title>
</head>
<body>
<%

	Response.Write "<div class=""Header"">" & ZC_MSG172 & "</div>"
	Response.Write "<div id=""divMain2"">"

	Response.Write "<form id=""edit"" name=""edit"" method=""post"" action=""update.asp?"">" & vbCrlf

	If Request.QueryString("action")<>"" Then
		ExecuteUpdate(Request.QueryString("action") & ".xml")
	Else
		LoadUpdate("backupdb.xml")
		LoadUpdate("updatedb.xml")
		LoadUpdate("updateblog.xml")
	End If


	Response.Write "</form>" & vbCrlf
	Response.Write "</div>"

%>
</body>
</html><% 
Call System_Terminate()

If Err.Number<>0 then
	Call ShowError(0)
End If
%>