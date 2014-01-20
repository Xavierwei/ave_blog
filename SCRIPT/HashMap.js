function HashMap() {
    /** Map 大小 **/
    var size = 0;
    /** 对象 **/
    var entry = new Object();

    /** 存 **/
    this.put = function (key, value) {
        if (!this.containsKey(key)) {
            size++;
        }
        entry[key] = value;
    }

    /** 取 **/
    this.get = function (key) {
        return this.containsKey(key) ? entry[key] : null;
    }

    /** 删除 **/
    this.remove = function (key) {
        if (this.containsKey(key) && (delete entry[key])) {
            size--;
        }
    }

    /** 是否包含 Key **/
    this.containsKey = function (key) {
        return (key in entry);
    }

    /** 是否包含 Value **/
    this.containsValue = function (value) {
        for (var prop in entry) {
            if (entry[prop] == value) {
                return true;
            }
        }
        return false;
    }

    /** 所有 Value **/
    this.values = function () {
        var values = new Array();
        for (var prop in entry) {
            values.push(entry[prop]);
        }
        return values;
    }

    /** 所有 Key **/
    this.keys = function () {
        var keys = new Array();
        for (var prop in entry) {
            keys.push(prop);
        }
        return keys;
    }

    /**所有 KEY VALUE**/
    this.toString = function () {
        var vStr = "{";
        for (var idx in entry) {
            vStr += idx + ":" + entry[idx] + ",";
        }
        if (vStr.length > 1)
            vStr = vStr.substring(0, vStr.length-1);
        vStr += "}";
        return vStr;
    }

    /** Map Size **/
    this.size = function () {
        return size;
    }

    /* 清空 */
    this.clear = function () {
        size = 0;
        entry = new Object();
    }

    this.fetchparameter = function (paras) {
        var name, value, i;
        var str = paras;
        var num = str.indexOf("?")
        str = str.substr(num + 1);
        var arrtmp = str.split("&");
        var arrlength = arrtmp.length;
        i = 0;
        while (i < arrlength) {

            num = arrtmp[i].indexOf("=");
            if (num > 0) {
                name = arrtmp[i].substring(0, num);
                value = arrtmp[i].substr(num + 1);
                this.put(name, value);
            }
            i++;
        }
    }
}


//js获取cookie
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
function setCookie(name,value)
{
    var Days = 2;
    var exp = new Date(); 
    exp.setTime(exp.getTime() + Days*24*60*60*1000);
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
}

//SSO Setting, aiming to freely browse through AVENE CRM and community frontsites without loging on
function SSOSetting(_user,_password,_email) {
    //the URL config would be different within various WEBSITE environment. TODO:Build
    var club_url = "http://localhost/club/Boards.asp";
    var blog_url = "http://www.wesley-blog.com/";
    var chatroom_url = "http://localhost/UChat/ChatLogin.aspx";

    var x_user = _user;
    var x_password = _password;
    var x_email = _email;


    //debugger;
    //gbtoy=pass=aaa1234&user=yousuf007&AveneUserEmail=yousuf@sina.com in CLUB cookie
    var club_logininfo = getCookie("gbtoy");
    js_hashmap.fetchparameter(club_logininfo);
    if(x_user == null){
        x_user = js_hashmap.get("user");
        if (x_user == null) {
            x_user = getCookie("user");
        }
    }

    if (x_password == null) {
        x_password = js_hashmap.get("pass");
    }
    if (x_email == null) {
        x_email = js_hashmap.get("AveneUserEmail");
        if (x_email == null) {
            x_email = getCookie("AveneUserEmail");
        }
    }

    alert("x_user:" + x_user);
    alert("x_password:" + x_password);
    alert("x_email:" + x_email);

    if (x_user != null && x_password != null) {
        club_url = "http://localhost/SSO/CrmLoginClub.aspx" + "?user=" + x_user + "&pass=" + x_password;
        document.getElementById("club").setAttribute("src", club_url);
    }

    if (x_user != null && x_email != null) {
        blog_url = "http://www.wesley-blog.com/CrmSetting.asp" + "?user=" + x_user + "&AveneUserEmail=" + x_email;
        document.getElementById("blog").setAttribute("src", blog_url);
    }
    
    js_hashmap.fetchparameter(location.href);
    //alert("js_hashmap:" + js_hashmap.toString());
    switch (js_hashmap.get("RedirectUrl")) {
        case "club":
            location.href = club_url;
            break;
        case "blog":
            //location.href = "http://www.wesley-blog.com/";
            break;
        case "chatroom":            
            if (x_user == null)
                location.href = chatroom_url;
            else
                location.href = "/UChat/Server.aspx?action=Login&u=" + x_user;
            break;
        default:

            alert('RedirectUrl参数没有传递');
            break;
    }
}

var js_hashmap = new HashMap();


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
