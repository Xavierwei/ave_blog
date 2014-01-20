<html>
<head>
<title>redirect to AVENE Blog ...</title>
<script type="text/javascript">
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
	var js_hashmap = new HashMap();
	function getCookie(sname) {
    var arr = document.cookie.match(new RegExp("(^| )" + sName + "=([^;]*)(;|$)"));
    if (arr != null) { return unescape(arr[2]) };
    return "";
	}

	//写cookies
	function setCookie(name,value)
	{
		var minutes = 30;
		var exp = new Date(); 
		exp.setTime(exp.getTime() + minutes*60*60*1000);
		document.cookie = name + "="+ value + ";expires=" + exp.toGMTString();
	}

	
	function setBlogCookie(){
		js_hashmap.fetchparameter(location.href);
		//alert("js_hashmap:" + js_hashmap.toString());
		if(js_hashmap.get("user")){
			//alert(js_hashmap.get("user"));
			setCookie("username",js_hashmap.get("user"));			
		}
		
		//alert("js_hashmap:" + js_hashmap.toString());
		
		if(js_hashmap.get("CrmUser") && js_hashmap.get("CrmUser") != "null"){
			setCookie("CrmUser",js_hashmap.get("CrmUser"));			
		}
		
		
		if(js_hashmap.get("AveneUserEmail"))
			setCookie("AveneUserEmail",js_hashmap.get("AveneUserEmail"));
		
		//alert("js_hashmap:" + js_hashmap.toString());
		//alert("getCookie:" + getCookie("user"));
		if(js_hashmap.get("action") == "login")
		{ 
 
			var b_url=js_hashmap.get("Burl"); 
			if(b_url&&b_url!="null")
			{
 
				 location.href = b_url;
			} 
			else
			{
				location.href = "default.asp";
 
 
			}
		}
	}
</script>

</head>
<body onload="setBlogCookie();">
<div>
    
</div>
</body>
</html>