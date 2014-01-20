<%

Const HTMLDEFAULT_BACKUP_FILENAME="default_bak.asp"

Const HTMLDEFAULT_NEW_FILENAME="default"

'注册插件
Call RegisterPlugin("HtmlDefault","ActivePlugin_HtmlDefault")


Function InstallPlugin_HtmlDefault()

	On Error Resume Next

	If HTMLDEFAULT_BACKUP_FILENAME<>"" Then

		Dim fso, f, s
		Set fso = CreateObject("Scripting.FileSystemObject")
		Set f = fso.GetFile(BlogPath & "default.asp")
		f.name=HTMLDEFAULT_BACKUP_FILENAME
		Set f = Nothing

		Call SetBlogHint_Custom("‼ 提示:[静态首页生成插件]已启用,并将default.asp更名为"& HTMLDEFAULT_BACKUP_FILENAME &".")

		Call HtmlDefault_Main()

	End If

	Err.Clear

End Function


Function UninstallPlugin_HtmlDefault()

	On Error Resume Next

		Dim fso, f, s
		Set fso = CreateObject("Scripting.FileSystemObject")

		Set f = fso.GetFile(BlogPath & "default." & ZC_STATIC_TYPE)
		f.Delete
		Set f = Nothing

		Set f = fso.GetFile(BlogPath & HTMLDEFAULT_BACKUP_FILENAME)
		f.name="default.asp"
		Set f = Nothing

		Call SetBlogHint_Custom("‼ 提示:[静态首页生成插件]已禁用,将" & HTMLDEFAULT_NEW_FILENAME & "." & ZC_STATIC_TYPE & "删除,并将"& HTMLDEFAULT_BACKUP_FILENAME &"还原为"& "default.asp.")

	Err.Clear

End Function


'具体的接口挂接
Function ActivePlugin_HtmlDefault() 

	'Action_Plugin_BlogReBuild_Succeed
	Call Add_Action_Plugin("Action_Plugin_BlogReBuild_Succeed","Call HtmlDefault_Main()")

	'Action_Plugin_MakeFileReBuild_End
	'Call Add_Action_Plugin("Action_Plugin_MakeFileReBuild_End","Call HtmlDefault_Main()")

	'Action_Plugin_MakeBlogReBuild_Core_End
	Call Add_Action_Plugin("Action_Plugin_MakeBlogReBuild_Core_End","Call HtmlDefault_Main()")

	'Action_Plugin_XMLRPC_End
	Call Add_Action_Plugin("Action_Plugin_XMLRPC_End","Call HtmlDefault_Main()")

	'Action_Plugin_CommentPost_Succeed
	Call Add_Action_Plugin("Action_Plugin_CommentPost_Succeed","Call HtmlDefault_Main()")

	'Action_Plugin_CommentRev_Succeed
	Call Add_Action_Plugin("Action_Plugin_CommentRev_Succeed","Call HtmlDefault_Main()")

	'Action_Plugin_TrackBackPost_Succeed
	Call Add_Action_Plugin("Action_Plugin_TrackBackPost_Succeed","Call HtmlDefault_Main()")

	'网站管理加上二级菜单项
	'Call Add_Response_Plugin("Response_Plugin_SettingMng_SubMenu",MakeSubMenu("静态首页生成插件配置","../plugin/HtmlDefault/main.asp","m-left",False))

End Function


Function HtmlDefault_Main() 

	On Error Resume Next

	Dim ArtList
	Set ArtList=New TArticleList

	ArtList.LoadCache

	ArtList.template="DEFAULT"

	If ArtList.ExportByCache("","","","","","") Then

		ArtList.Build

		Call SaveToFile(BlogPath & HTMLDEFAULT_NEW_FILENAME & "." & ZC_STATIC_TYPE,ArtList.html,"utf-8",False)

	End If

	Err.Clear

End Function

%>