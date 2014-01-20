<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<#ZC_BLOG_LANGUAGE#>" lang="<#ZC_BLOG_LANGUAGE#>">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body class="multi default">

<%
Response.Cookies("username").Expires = Date - 1
Response.Cookies("username") = ""

Response.Cookies("AveneUserEmail").Expires = Date - 1
Response.Cookies("AveneUserEmail") = ""

Response.Cookies("CrmUser").Expires = Date - 1
Response.Cookies("CrmUser") = ""

Dim returnURL
returnURL = Request("ReturnURL")

if(ISNULL(returnURL) or (LenB(returnURL) = 0)) Then
    Response.Redirect "http://www.eau-thermale-avene.cn/SSO/CommunityLogin/LoginPlatform.aspx"
else 
    Response.Redirect returnURL
end if

%>

<div id="divAll">

</div>
</body>

</html>