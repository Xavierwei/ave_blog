/***
Created by Zhong Wei on 20120301_1534
**/


function getCookieByName(name) {

    var start = document.cookie.indexOf(name + "=");
    if (start == -1) {
        start = document.cookie.indexOf(name + "%3D");
        if (start != -1)
            start = start + 2;
    }
    var len = start + name.length + 1;

    if ((!start) &&
        (name != document.cookie.substring(0, name.length))) {

        return null;
    }
    if (start == -1) return null;
    var endflag1 = document.cookie.indexOf("&", len);
    var endflag2 = document.cookie.indexOf(";", len);
    var endflag3 = document.cookie.indexOf("%3B", len); //;
    var endflag4 = document.cookie.indexOf("%26", len); //&


    if (endflag2 <= 0) {
        endflag2 = endflag3;
    } else if ((endflag3 >= 0) && (endflag3 - endflag2 < 0)) {
        endflag2 = endflag3;
    }


    if (endflag1 <= 0) {
        endflag1 = endflag4;
    } else if ((endflag4 >= 0) && (endflag4 - endflag1 < 0)) {
        endflag1 = endflag4;
    }

    if (endflag1 == -1) endflag1 = document.cookie.length;
    if (endflag2 == -1) endflag2 = document.cookie.length;
    var endflag = endflag1 > endflag2 ? endflag2 : endflag1;

    return document.cookie.substring(len, endflag);
}


function InitBBSUnifiedLogin() {
    try {

        var bbsuser = GetBBSUserName();
        var crmuser = getCookieByName("CrmUser");
        Display(false);

        if (bbsuser == "" || bbsuser == null) {
            bbsuser = getCookieByName("username");
        }

        if (bbsuser != null && bbsuser != "") {
            var tempbbsuser = bbsuser;
            try {

                tempbbsuser = decodeURI(tempbbsuser); //try to decode uri
                //BLOG登录中文名写死
                if (tempbbsuser == "%u96C5%u6F3E%u654F%u611F%u808C%u62A4%u80A4%u8FBE%u4EBA") {
                    bbsuser = "雅漾敏感肌护肤达人";
                }
                else {
                    bbsuser = tempbbsuser;
                }

            }
            catch (err) {
                try {
                    tempbbsuser = decodeFromGb2312(tempbbsuser); //try to decode uri
                    bbsuser = tempbbsuser;
                }
                catch (err) {

                }
            }
        }


        if (crmuser != null && crmuser != "" && crmuser != "null") {
            try {


                crmuser = decodeURI(crmuser); //try to decode uri
                $(".topLoginName").html(crmuser);
            }
            catch (err) {
            }
        }


        var crmLoginName = crmuser;

        //不是社区会员
        if (bbsuser == "" || bbsuser == null) {
            document.getElementById("bbs_login_li1").style.display = "";
            document.getElementById("bbs_login_li2").style.display = "";
            document.getElementById("bbs_welcome").style.display = "none";

            if ($(".dropmenudiv_c7_spe").css("background-image").match("/images/default/top_menu7bg.gif") == null)


                if (crmLoginName == null || crmLoginName == "") {
                    $(".topIsLogin").hide();
                    $(".topNotLogin").show();

                }
                else {
                    $(".topIsLogin").show();
                    $(".topNotLogin").hide();
                    Display(true);
                }

        }
        else {
            if (crmLoginName == null || crmLoginName == "" || crmLoginName == "null" || !IsNormalUserName(crmLoginName)) {
                $(".topLoginName").text(bbsuser);

            }
            else {
                Display(true);
            }




            $(".topIsLogin").show();
            $(".topNotLogin").hide();

            document.getElementById("bbs_login_li1").style.display = "none";
            document.getElementById("bbs_login_li2").style.display = "none";
            document.getElementById("bbs_welcome").style.display = "inline";
            document.getElementById("bbs_username").innerHTML = bbsuser;

            if ($(".dropmenudiv_c7_spe").css("background-image").match("/images/default/top_menu7bg2.gif") == null)
                $(".dropmenudiv_c7_spe").css("background-image", "url(/images/default/top_menu7bg2.gif)");
        }
    }
    catch (err) {

    }

}
function Display(IsLogin) {
    var login_title = $("#Crm_login_title");
    var login_wording = $("#Crm_login_wording");

    var welcome_title = $("#Crm_welcome_title");
    var welcome_wording = $("#Crm_welcome_wording");


    if (IsLogin) {
        /* if ($(".dropmenudiv_c6_spe").css("background-image").match("/images/default/top_menu6bg2.gif") == null)
        $(".dropmenudiv_c6_spe").css("background-image", "url(/images/default/top_menu6bg2.gif)");*/
        login_title.hide();
        login_wording.hide();

        welcome_title.show();
        welcome_wording.show();

    }
    else {
        /* if ($(".dropmenudiv_c6_spe").css("background-image").match("/images/default/top_menu6bg.gif") == null)
        $(".dropmenudiv_c6_spe").css("background-image", "url(/images/default/top_menu6bg.gif)");*/
        login_title.show();
        login_wording.show();

        welcome_title.hide();
        welcome_wording.hide();

    }

}

function GetBBSUserName() {
    if ($("#bbsloginname").length) {
        return $("#bbsloginname").text();
    }
    var bbsUser = getCookieByName("user");
    return (bbsUser == null) ? getCookieByName("BbsUser") : bbsUser;
}

function IsNormalUserName(userName) {
    if (userName.indexOf("%") > -1)
        return false;
    else
        return true;
}


function CommunityPlatformLogin() {

    var isValid = true;

    var _user = $("#BBS_UserName").val();
    var _pass = $("#BBS_UserPass").val();
    var _validateCode = $("#ValidateCode").val();

    document.getElementById("tip_BBS_Login").innerHTML = "";

    if (_user == null || _user == "") {
        document.getElementById("tip_BBS_UserName").style.display = "inline";
        isValid = false;
    } else
        document.getElementById("tip_BBS_UserName").style.display = "";

    if (_pass == null || _pass == "") {
        document.getElementById("tip_BBS_UserPass").style.display = "inline";
        isValid = false;
    } else
        document.getElementById("tip_BBS_UserPass").style.display = "";


    var src = $("#divCodeImage").attr("src");

    if (_validateCode == null || _validateCode == "") {
        document.getElementById("tip_ValidateCode").style.display = "inline";
        isValid = false;
    }
    else {
        var validatecode = getParameterByName(src, "clientvalidatecode");
        if (validatecode.toLowerCase() != _validateCode.toLowerCase()) {
            isValid = false;
            document.getElementById("tip_ValidateCode").style.display = "inline";
        }
        else {
            document.getElementById("tip_ValidateCode").style.display = "";
        }
    }

    if (isValid) {

        $.ajax({
            type: "POST",
            url: "/Bigpipe/ParallelHandler.ashx?requestid=ValidateClubInfo&task=validateBbsUser&t=" + new Date().getTime(),
            dataType: "text",
            data: { user: _user, pass: _pass },
            beforeSend: function (XMLHttpRequest) {

            },
            success: function (data, textStatus) {

                var arrreturnEmail = data.split("#");

                if (data.indexOf("CheckPass") == 0) {
                    var vBBSEmail = data.substring();
                    if (arrreturnEmail[1] == null || arrreturnEmail[1] == "") {
                        top.location.href = "/SSO/CommunityLogin/CommunityRouter.aspx?u="
                            + encode64(encodeURI(_user)) + "&p="
                            + encode64(_pass) + "&m=&returnUrl="
                            + encode64(arrreturnEmail[2]);
                    }
                    else {
                        top.location.href = "/SSO/CommunityLogin/CommunityRouter.aspx?u="
							+ encode64(encodeURI(_user)) + "&p="
							+ encode64(_pass) + "&m="
							+ encode64(arrreturnEmail[1]) + "&returnUrl="
                            + encode64(arrreturnEmail[2]);
                    }
                }
                else
                    document.getElementById("tip_BBS_Login").innerHTML = data;
            },
            complete: function (XMLHttpRequest, textStatus) {

            },
            error: function () {
                document.getElementById("tip_BBS_Login").innerHTML = "用户登陆失败";
            }
        });
    }
}

function getParameterByName(inputUrl, name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(inputUrl);
    if (results == null)
        return "";
    else
        return decodeURIComponent(results[1].replace(/\+/g, " "));
}

var ua = navigator.userAgent.toLowerCase();
if (ua.indexOf(" chrome/") >= 0 || ua.indexOf(" firefox/") >= 0 || ua.indexOf(' gecko/') >= 0) {
    var StringMaker = function () {
        this.str = "";
        this.length = 0;
        this.append = function (s) {
            this.str += s;
            this.length += s.length;
        }
        this.prepend = function (s) {
            this.str = s + this.str;
            this.length += s.length;
        }
        this.toString = function () {
            return this.str;
        }
    }
} else {
    var StringMaker = function () {
        this.parts = [];
        this.length = 0;
        this.append = function (s) {
            this.parts.push(s);
            this.length += s.length;
        }
        this.prepend = function (s) {
            this.parts.unshift(s);
            this.length += s.length;
        }
        this.toString = function () {
            return this.parts.join('');
        }
    }
}



var keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
function encode64(input) {
    var output = new StringMaker();
    var chr1, chr2, chr3;
    var enc1, enc2, enc3, enc4;
    var i = 0;

    while (i < input.length) {
        chr1 = input.charCodeAt(i++);
        chr2 = input.charCodeAt(i++);
        chr3 = input.charCodeAt(i++);

        enc1 = chr1 >> 2;
        enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
        enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
        enc4 = chr3 & 63;

        if (isNaN(chr2)) {
            enc3 = enc4 = 64;
        } else if (isNaN(chr3)) {
            enc4 = 64;
        }

        output.append(keyStr.charAt(enc1) + keyStr.charAt(enc2) + keyStr.charAt(enc3) + keyStr.charAt(enc4));
    }

    return output.toString();
}

function decode64(input) {
    var output = new StringMaker();
    var chr1, chr2, chr3;
    var enc1, enc2, enc3, enc4;
    var i = 0;


    input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");

    while (i < input.length) {
        enc1 = keyStr.indexOf(input.charAt(i++));
        enc2 = keyStr.indexOf(input.charAt(i++));
        enc3 = keyStr.indexOf(input.charAt(i++));
        enc4 = keyStr.indexOf(input.charAt(i++));

        chr1 = (enc1 << 2) | (enc2 >> 4);
        chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
        chr3 = ((enc3 & 3) << 6) | enc4;

        output.append(String.fromCharCode(chr1));

        if (enc3 != 64) {
            output.append(String.fromCharCode(chr2));
        }
        if (enc4 != 64) {
            output.append(String.fromCharCode(chr3));
        }
    }

    return output.toString();
}


function getCookieOld(sname) {
    var arr = document.cookie.match(new RegExp("(^| )" + sname + "=([^;]*)(;|$)"));
    if (arr != null) { return unescape(arr[2]) };
    return "";
}


var acookie = document.cookie.split("; ");
function getCookie(sname) {//获取单个cookies
    for (var i = 0; i < acookie.length; i++) {

        var arr = acookie[i].split("=");
        if (sname == arr[0]) {
            if (arr.length > 1) {
                var leftidx = acookie[i].indexOf("=");
                return unescape(acookie[i].substr(leftidx + 1));
            }
            else
                return "";
        }
    }
    return "";
}

//写cookies
function setCookie(name, value) {
    var minutes = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + minutes * 60 * 1000);
    document.cookie = name + "=" + encodeURI(value) + ";expires=" + exp.toGMTString();
}
function setCookieEx(name, value, path) {
    var minutes = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + minutes * 60 * 1000);
    document.cookie = name + "=" + encodeURIComponent(value) + ";path=" + path + ";expires=" + exp.toGMTString();
}


function SSOSetting(_user, _password, _email, brandsiteurl, aveneblogurl) {

    var club_url;
    var blog_url;
    var chatroom_url;
    var club_redirect_dest;
    var blog_redirect_dest;
    club_url = brandsiteurl + "/club/Boards.asp";
    blog_url = aveneblogurl;
    chatroom_url = brandsiteurl + "/UChat/ChatLogin.aspx";

    club_redirect_dest = brandsiteurl + "/SSO/CrmLoginClub.aspx";
    blog_redirect_dest = aveneblogurl + "/CrmSetting.asp";

    if (club_url == null) {
        alert("跳转URL没有设置!");
        return;
    }

    var x_user = _user;
    var x_password = _password;
    var x_email = _email;


    if (x_user != null && x_user != "" && x_password != null && x_password != "") {

        if (!document.getElementById("user").value)
            document.getElementById("user").value = x_user;
        if (!document.getElementById("pass").value)
            document.getElementById("pass").value = x_password;

    }

    var crmuser = getCookieByName("CrmUser");
    blog_url = blog_redirect_dest + "?user=" + x_user + "&AveneUserEmail=" + x_email;

    if (crmuser != null && crmuser != "" && crmuser != "null") {
        blog_url = blog_url + "&CrmUser=" + crmuser;
    }



    document.getElementById("blog").setAttribute("src", blog_url);


    var intervalTimeoutSeconds = 1500;
    js_hashmap.fetchparameter(location.href);

    switch (js_hashmap.get("RedirectUrl")) {
        case "club":
            window.setTimeout(function () {
                location.href = club_url;
            }, intervalTimeoutSeconds);

            break;
        case "blog":
            window.setTimeout(function () {
                location.href = blog_url + "&action=login";
            }, intervalTimeoutSeconds);
            break;
        case "chatroom":
            if (x_user == null || x_user == "")
                window.setTimeout(function () {
                    location.href = chatroom_url;
                }, intervalTimeoutSeconds);
            else
                window.setTimeout(function () {
                    location.href = "/UChat/Server.aspx?action=Login&u=" + x_user;
                }, intervalTimeoutSeconds);
            break;
        default:
            alert('RedirectUrl参数没有传递');
            break;
    }
}

function CommunityLoginSet(_user, _password, _email, brandsiteurl, aveneblogurl) {

    var club_url;
    var blog_url;
    var chatroom_url;

    club_url = brandsiteurl + "/club/Boards.asp";
    blog_url = aveneblogurl + "/default.asp";
    chatroom_url = brandsiteurl + "/UChat/ChatDefault.aspx";

    var x_user = decodeURI(_user);

    var x_password = _password;
    var x_email = _email;



    blog_url = aveneblogurl + "/CrmSetting.asp?action=login&user=" + x_user + "&AveneUserEmail=" + x_email;

    var crmuser = getCookieByName("CrmUser");
    if (crmuser != null && crmuser != "" && crmuser != "null") {
        blog_url = blog_url + "&CrmUser=" + crmuser;
    }

    if (x_user != null && x_user != "")
        chatroom_url = "/UChat/ChatDefault.aspx?action=Login&u=" + encode64(encodeURI(x_user));

    document.getElementById("Avene_BBS").setAttribute("href", club_url);
    document.getElementById("Avene_Blog").setAttribute("href", blog_url);
    document.getElementById("Avene_Chat").setAttribute("href", chatroom_url);
}

function AveneBlog_SetCookieValue() {
    var avene_user = getCookie("user");
    var avene_email = getCookie("AveneUserEmail");
    if (avene_user) {
        document.getElementById("inpName").value = avene_user;
    }
    if (avene_email) {
        document.getElementById("inpEmail").value = avene_email;
    }
}

function CommunityLoginOnlyForBrandsite() {
    if (document.getElementById("AveneBBS_UserName").value == '') {
        return;
    }
    if (document.getElementById("AveneBBS_UserPass").value == '') {
        return;
    }
    $.ajax({
        type: "POST",
        url: "/Bigpipe/ParallelHandler.ashx?requestid=ValidateClubInfo&task=validateBbsUser",
        dataType: "text",
        data: { user: document.getElementById("AveneBBS_UserName").value, pass: document.getElementById("AveneBBS_UserPass").value },
        beforeSend: function (XMLHttpRequest) {
        },
        success: function (data, textStatus) {

            if (data.indexOf("CheckPass") == 0) {
                var arrreturnEmail = data.split("#");
                if (arrreturnEmail[1] == null || arrreturnEmail[1] == "") {
                    top.location.href = "/SSO/CommunityLogin/CommunityRouter.aspx?u="
					    + encode64(encodeURI(document.getElementById("AveneBBS_UserName").value)) + "&p="
					    + encode64(document.getElementById("AveneBBS_UserPass").value) + "&m=&returnUrl="
                        + encode64(arrreturnEmail[2]);
                }
                else {
                    top.location.href = "/SSO/CommunityLogin/CommunityRouter.aspx?u="
					    + encode64(encodeURI(document.getElementById("AveneBBS_UserName").value)) + "&p="
					    + encode64(document.getElementById("AveneBBS_UserPass").value) + "&m="
					    + encode64(arrreturnEmail[1]) + "&returnUrl=" + encode64(arrreturnEmail[2]);
                }
            }
            else {
                alert(data);
                top.location.href = "/SSO/CommunityLogin/LoginPlatform.aspx";
            }
        },
        complete: function (XMLHttpRequest, textStatus) {

        },
        error: function () {
            alert("BBS login error");
        }
    });

}
function CommunityLogin(brandsiteURL) {

    $.getJSON(brandsiteURL + "/Bigpipe/ParallelHandler.ashx?callback=?",
	{ requestid: "ValidateClubInfo", task: "validateBbsUser", user: document.getElementById("AveneBBS_UserName").value, pass: document.getElementById("AveneBBS_UserPass").value }, function (data) {
	    var returnCode = "" + data[0];

	    if (returnCode.indexOf("CheckPass") == 0) {
	        var arrreturnEmail = returnCode.split("#");
	        location.href = brandsiteURL + "/SSO/CommunityLogin/CommunityRouter.aspx?u="
			+ encode64(encodeURI(document.getElementById("AveneBBS_UserName").value)) + "&p="
			+ encode64(document.getElementById("AveneBBS_UserPass").value) + "&m="
			+ encode64(arrreturnEmail[1]);
	    }
	    else {
	        alert(returnCode);
	        location.href = brandsiteURL + "/SSO/CommunityLogin/LoginPlatform.aspx";
	    }
	});
}


function GetElementValueById(elementid) {
    var el = "";
    if (document.getElementById(elementid)) {
        el = document.getElementById(elementid).value;
    }
    return el;
}

function IsNotNullOrEmpty(value) {
    if (value == null || value == "") {
        return false;
    }
    else
        return true;
}

function IsElementNotNullOrEmpty(elementid) {
    if (GetElementValueById(elementid) == null || GetElementValueById(elementid) == "") {
        return false;
    }
    else
        return true;
}

var ValidationPassed = true;

function checkSubmitData() {

    if (IsElementNotNullOrEmpty("Form_Username")) {
        var patrn = /^[a-zA-Z]{1}([a-zA-Z0-9]|[_]){2,10}[a-zA-Z0-9]{1}$/;
        if (!patrn.exec(GetElementValueById("Form_Username"))) {
            alert("用户名不符合规则");
            ValidationPassed = false;
            document.getElementById("Form_Username").focus();
            return;
        }
    }
    else {
        alert("请输入你的用户名!\n");
        ValidationPassed = false;
        document.getElementById("Form_Username").focus();
        return;
    }

    if (IsElementNotNullOrEmpty("Form_password1")) {
        var patrn = /([\w|\W]){6,16}/;
        if (!patrn.exec(GetElementValueById("Form_password1"))) {
            alert("你的密码不符合规则");
            ValidationPassed = false;
            document.getElementById("Form_password1").focus();
            return;
        }
    }
    else {
        alert("请输入你的密码!\n");
        ValidationPassed = false;
        document.getElementById("Form_password1").focus();
        return;
    }

    if (IsElementNotNullOrEmpty("Form_password2")) {

        //6~16个字符，包括字母、数字、特殊符号，区分大小写
        var patrn = /([\w|\W]){6,16}/;
        if (!patrn.exec(GetElementValueById("Form_password2"))) {
            alert("你的验证密码不符合规则");
            ValidationPassed = false;
            document.getElementById("Form_password2").focus();
            return;
        }
    }
    else {
        alert("请输入你的验证密码！\n");
        ValidationPassed = false;
        document.getElementById("Form_password2").focus();
        return;
    }
    if (GetElementValueById("Form_password1") != GetElementValueById("Form_password2")) {
        alert("你的两次密码输入不相同！\n");
        ValidationPassed = false;
        document.getElementById("Form_password1").focus();
        return;
    }

    if (IsElementNotNullOrEmpty("ctl00_master_main_content_Form_mail")) {
        var patrn = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if (!patrn.exec(GetElementValueById("ctl00_master_main_content_Form_mail"))) {
            alert("请输入正确的邮箱地址，你的邮箱地址不符合规则");
            ValidationPassed = false;
            document.getElementById("ctl00_master_main_content_Form_mail").focus();
            return;
        }
    }
    else {
        alert("请输入你的真实邮箱地址！\n");
        ValidationPassed = false;
        document.getElementById("ctl00_master_main_content_Form_mail").focus();
        return;
    }

    ValidationPassed = true;
    return true;
}

function submitonce() {
    var msgs = document.getElementsByName("ServerMsg");

    for (i = 0; i < msgs.length; i++) {
        msgs[i].innerHTML = "";
    }
    checkSubmitData();
    return ValidationPassed;
}


function logout() {
    var crmuser = getCookieByName("CrmUser");
    var returnURL, logoutURL, tempUrl, redirectURL, brandsiteUri;
    var blogurl = "";
    var locationRef = location.href;


    var re = /^[a-zA-z]+:\/\/(\w+(-\w+)*)(\.(\w+(-\w+)*))*(\.(\w+(-\w+)*))*([$|\/]*)/ig; // 创建正则表达式模式。
    var r = "" + locationRef.match(re); // 尝试匹配搜索字符串。

    tempUrl = r.replace(/(^[a-zA-z]+:\/\/)(avene)*(www|(blog)*)(\w+)*\./ig, "$1$2blog$5.");
    if (tempUrl.indexOf("172") > -1)
        tempUrl = r.replace(/(^[a-zA-z]+:\/\/)([\w\.]+)*/ig, "$1$2:8082");
    //本地环境
    if (tempUrl.indexOf("localhost") > -1) {
        blogurl = r.replace(/(^[a-zA-z]+:\/\/)([\w\.]+)*/ig, "$1$2:8082");
        brandsiteUri = r.replace(/(^[a-zA-z]+:\/\/)([\w\.]+)*/ig, "$1$2:8084") + "/";
    }
    else {
        //测试、UAT、生产环境
        blogurl = r.replace(/(^[a-zA-z]+:\/\/)(avene)*(www|(blog)*)(\w+)*\./ig, "$1$2blog$5.");
        brandsiteUri = r.replace(/(^[a-zA-z]+:\/\/)(avene|www)(blog)*(\w+)*\./ig, "$1$2$4.");
        if (brandsiteUri == "http://blog.eau-thermale-avene.cn/") {
            brandsiteUri = r.replace(/(^[a-zA-z]+:\/\/)(blog)\./ig, "$1www.");
        }

    }
    logoutURL = blogurl + "/Removecookie.asp";

    if (crmuser == "" || crmuser == null || crmuser == "null") {
        returnURL = brandsiteUri + "SSO/CommunityLogin/LoginPlatform.aspx";
    }
    else {
        //returnURL = brandsiteUri + "/ClubAvene/ClubAvene_Login.aspx";
        returnURL = brandsiteUri + "sso/logout.aspx";
    }
    redirectURL = logoutURL + "?ReturnURL=" + returnURL;

    location.href = redirectURL;
}

function ShiftFocusWhenLogin() {

    if ($("input[name=AveneBBS_UserName]")) {
        $("input[name=AveneBBS_UserName]").bind("keypress", myBlurFuncWhenLogin = function () {
            var theEvent = window.event || arguments.callee.caller.arguments[0];
            if (theEvent.keyCode == 13) {//键盘按下Enter键  
                $("input[name=AveneBBS_UserPass]").focus();
                return false;
            }
        });
    }
    if ($("input[name=AveneBBS_UserPass]")) {
        $("input[name=AveneBBS_UserPass]").bind("keypress", myBlurFuncWhenLogin1 = function () {
            var theEvent = window.event || arguments.callee.caller.arguments[0];
            if (theEvent.keyCode == 13) {//键盘按下Enter键  
                $("input[name=AveneBBS_UserPass]").focus();
                return false;
            }
        });
    }
}
