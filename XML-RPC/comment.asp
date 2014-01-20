<%@ CODEPAGE=65001 %>
<%
'///////////////////////////////////////////////////////////////////////////////
'//              Z-Blog
'// 作    者:    朱煊(zx.asd)
'// 版权所有:    RainbowSoft Studio
'// 技术支持:    rainbowsoft@163.com
'// 程序名称:    
'// 程序版本:    
'// 单元名称:    XML-RPC/comment.asp
'// 开始时间:    2005.12.11
'// 最后修改:    
'// 备    注:    Comment API 实现
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
<!-- #include file="../function/c_system_event.asp" -->
<!-- #include file="../function/rss_lib.asp" -->
<!-- #include file="../function/atom_lib.asp" -->
<%
'/////////////////////////////////////////////////////////////////////////////////////////
Call System_Initialize()

Response.ContentType = "text/xml"

Dim strXmlCall
Dim objXmlFile

strXmlCall=Request.BinaryRead(Request.TotalBytes)
Set objXmlFile = Server.CreateObject("Microsoft.XMLDOM")

objXmlFile.load(strXmlCall)

If objXmlFile.readyState=4 Then
	If objXmlFile.parseError.errorCode <> 0 Then

	Else

		If ZC_COMMENT_TURNOFF Then Call RespondError(40,ZVA_ErrorMsg(40))

		Dim objRootNode
		Set objRootNode=objXmlFile.documentElement


		Dim objComment
		Dim objArticle

		Set objComment=New TComment

		Dim strNameAndEmail
		strNameAndEmail=objRootNode.selectSingleNode("author").text

		If Len(strNameAndEmail)>0 Then
			If InStr(strNameAndEmail,"@")>0 And InStr(strNameAndEmail,"<")>0 Then
				'NewzCrawler
				objComment.Author=Replace(Left(strNameAndEmail,InStr(strNameAndEmail," ")-1),"""","")
				objComment.Email=Mid(strNameAndEmail,InStr(strNameAndEmail,"<")+1,InStr(strNameAndEmail,">")-InStr(strNameAndEmail,"<")-1)
			Else
				If InStr(strNameAndEmail,"@")>0 And InStr(strNameAndEmail,"(")>0 Then
					If InStr(strNameAndEmail,"@")>InStr(strNameAndEmail,"(") Then
						objComment.Author=Left(strNameAndEmail,InStr(strNameAndEmail," ")-1)
						objComment.Email=Mid(strNameAndEmail,InStr(strNameAndEmail,"(")+1,InStr(strNameAndEmail,")")-InStr(strNameAndEmail,"(")-1)
					Else
						objComment.Author=Mid(strNameAndEmail,InStr(strNameAndEmail,"(")+1,InStr(strNameAndEmail,")")-InStr(strNameAndEmail,"(")-1)
						objComment.Email=Left(strNameAndEmail,InStr(strNameAndEmail," ")-1)
					End If
				ElseIf InStr(strNameAndEmail,"@")=0 And InStr(strNameAndEmail,"(")>0 Then
					objComment.Author=Mid(strNameAndEmail,InStr(strNameAndEmail,"(")+1,InStr(strNameAndEmail,")")-InStr(strNameAndEmail,"(")-1)
					objComment.Email="null@null.com"
				ElseIf InStr(strNameAndEmail,"@")>0 And InStr(strNameAndEmail,"(")=0 Then
					objComment.Author=Left(strNameAndEmail,InStr(strNameAndEmail,"@"))
					objComment.Email=strNameAndEmail
				ElseIf InStr(strNameAndEmail,"@")=0 And InStr(strNameAndEmail,"(")=0 Then
					objComment.Author=strNameAndEmail
					objComment.Email="null@null.com"
				End If
			End If
		Else
			objComment.Author="null"
			objComment.Email="null@null.com"
		End If

		objComment.log_ID=Request.QueryString("id")
		objComment.AuthorID=0
		objComment.Content=objRootNode.selectSingleNode("description").text
		objComment.HomePage=objRootNode.selectSingleNode("link").text

		Dim strKey
		strKey=Request.QueryString("key")
		Set objArticle=New TArticle
		If objArticle.LoadInfoByID(objComment.log_ID) Then
			If Not (strKey=objArticle.CommentKey) Then Call RespondError(14,ZVA_ErrorMsg(14))
		End If
		Set objArticle=Nothing

		If Not CheckRegExp(objComment.Author,"[username]") Then objComment.Author="null"
		If Not CheckRegExp(objComment.Email,"[email]") Then objComment.Email="null@null.com"

		IF Len(objComment.HomePage)>0 Then
			If Not CheckRegExp(objComment.HomePage,"[homepage]") Then objComment.HomePage=""
		End If

		Dim objUser
		For Each objUser in Users
			If IsObject(objUser) Then
				If (UCase(objUser.Name)=UCase(objComment.Author)) And (objUser.ID<>objComment.AuthorID) Then Call RespondError(6,ZVA_ErrorMsg(6))
				If (objUser.ID=objComment.AuthorID) And (UCase(objUser.Name)<>UCase(objComment.Author)) Then Call RespondError(31,ZVA_ErrorMsg(31))
				If (objUser.ID=objComment.AuthorID) And (UCase(objUser.Name)=UCase(objComment.Author)) Then
					objComment.Author=objUser.Name
				End If
			End If
		Next

		If objComment.Post Then
			Set objArticle=New TArticle
			If objArticle.LoadInfoByID(objComment.log_ID) Then
				objArticle.Statistic
				If objArticle.Export(ZC_DISPLAY_MODE_ALL) Then
					objArticle.template="SINGLE"
					objArticle.SaveCache
					objArticle.Build
					objArticle.Save
				End If
				BlogReBuild_Comments

			End If
		End If
		
		Set objComment=Nothing


	End If
End If

Call System_Terminate()

If Err.Number<>0 then
	Call RespondError(0,ZVA_ErrorMsg(0))
End If
%>