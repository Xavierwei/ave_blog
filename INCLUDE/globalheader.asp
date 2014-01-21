<div id="globalheader">
<div>
  <div id="defaulttop">
    <div id="defaulttopreg">
      <ul>
        <li style="position:relative;top:28px;left:275px"><a href="http://www.eau-thermale-avene.cn/eta-eau-thermale-water" style="color:#8e8e8e; font-family:幼圆;font-size:13px;"><img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/VectorSmartObject-01.png" style="position:relative;top:4px;left:-4px;" />舒护活泉水</a> </li>
        <li style="position:relative;top:28px;left:305px"><a href="http://www.eau-thermale-avene.cn/cosmetic-sterile/index.html" style="color:#8e8e8e; font-family:幼圆;font-size:13px"><img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/VectorSmartObject-01.png" style="position:relative;top:4px;left:-4px;" />舒缓特护系列</a> </li>
        <li style="position:relative;top:28px;left:335px"><a href="http://www.eau-thermale-avene.cn/sensitive-white" style="color:#8e8e8e; font-family:幼圆;font-size:13px"><img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/VectorSmartObject-01.png" style="position:relative;top:4px;left:-4px;" />清透美白系列</a> </li>
        <li class="topl1 topNotLogin" id="noLogin" style="display: none;">
          <div>
            <div style="float: left; margin-top: 6px;"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/top_unlock.gif" width="25"
                        height="11" /><a href="http://www.club-avene.cn/ClubAvene/ClubAvene_CustomerRegisterStep1.aspx">注册</a> | <a href="http://www.club-avene.cn/ClubAvene/ClubAvene_Login.aspx">登录</a> </div>
            <!--<div style="float: left; margin-left: 5px;">
              <iframe src="http://www.club-avene.cn/innerSearch.htm" frameborder="0" height="22" scrolling="no" width="160px"> </iframe>
            </div>-->
          </div>
        </li>
        <li class="topl2 topIsLogin" id="Login" style="display: none;">
          <div>
            <div style="float: left; margin-top: 3px;"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/top_lock.gif" width="25"
                        height="11" />
              <label id="name" class="topLoginName"></label>
              <span
                            style="color: #8e8e8e"> | </span><a class="topLogout" href="#" onClick="logout();">退出登录</a> </div>
            <!--<div style="float: left; margin-left: 5px;">
              <iframe src="http://www.club-avene.cn/innerSearch.htm" frameborder="0" height="22" scrolling="no" width="160px"> </iframe>
            </div>-->
          </div>
        </li>
      </ul>
    </div>
    <script type="text/javascript">
    function redirect() {
        $.get("/ClubAvene/ClubAvene_Data_Login.aspx", { action: "redirect", url: "http://www.eau-thermale-avene.cn/avene" },

        function (data) {

            location.href = data;
        }
        );
    }
</script> 
  </div>
  
  <!--搜索排除开始--> 
  <script type="text/javascript" src="<#ZC_BLOG_HOST#>THEMES/avene/TEMPLATE/script/encodeToGb2312.js"></script> 
  <script type="text/javascript" src="<#ZC_BLOG_HOST#>THEMES/avene/TEMPLATE/script/sso.js"></script>
  <div id="defaultheader">
    <div id="defaultheaderleft">
      <div id="defaultheaderleft-in"> <a href="http://www.eau-thermale-avene.cn/" style="border: 0"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/top_logo.png" alt="雅漾AVENE，为敏感肌肤健康推荐"
                    title="雅漾AVENE，为敏感肌肤健康推荐" style="border: 0" width="159" height="72" /> </a> </div>
    </div>
    <style type="text/css">
        .separation
        {width:1px;
         height:10px;
         background-color:#CCCCCC;
         display:inline-block;
         margin-top:10px;
         margin-left:14px;
        }
        .menu_stype
        {
            text-align: center;
            font-weight: bold;
            font-size: 15px;
            font-family: 幼圆;
        }
        a.b:hover
        {
            color: #ef896f;
            text-decoration: none;
        }
        a:link
        {
            text-decoration: none;
        }
    </style>
    <div id="defaultheaderright" class="slidetabsmenu">
      <ul>
        <li id="headermenu1"><a href="#" title="最新消息" rel="dropmenu1_c" style="text-decoration: none"> <span class="menu_stype">最新消息</span> </a><span class="separation"></span></li>
        <li id="headermenu2"><a href="http://www.eau-thermale-avene.cn/avene" onClick="urchinTracker('/TopMenu/关于雅漾');" title="关于雅漾"
                rel="dropmenu2_c" style="cursor: hand; text-decoration: none"><span class="menu_stype"> 关于雅漾</span> </a><span class="separation"></span></li>
        <li id="headermenu3"><a href="#" onClick="urchinTracker('/TopMenu/皮肤学专家建议');"
                title="皮肤学专家建议" rel="dropmenu3_c" style="cursor: text-decoration:none"><span class="menu_stype"> 皮肤学专家建议</span> </a><span class="separation"></span></li>
        <li id="headermenu4"><a href="http://www.eau-thermale-avene.cn/sensitive-white" onClick="urchinTracker('/TopMenu/雅漾产品');"
                title="雅漾产品" rel="dropmenu4_c" style="cursor: text-decoration:none"><span class="menu_stype"> 雅漾产品</span> </a><span class="separation"></span></li>
        <li id="headermenu5"><a href="#" class="b" title="皮肤测试" rel="dropmenu5_c" style="text-decoration: none"> <span class="menu_stype">皮肤测试</span> </a><span class="separation"></span></li>
        <li id="headermenu6"><a href="#" title="雅漾会员俱乐部" rel="dropmenu6_c" style="cursor: text-decoration:none"> <span class="menu_stype">雅漾会员俱乐部</span> </a><span class="separation"></span></li>
        <li id="headermenu7"><a href="http://blog.eau-thermale-avene.cn" style="text-decoration: none"
                title="雅漾博客" rel="dropmenu7_c"><span class="menu_stype">雅漾博客</span> </a></li>
      </ul>
    </div>
    <!--
<br style="clear: left;" />
<br class="IEonlybr" />
1st drop down menu -->
    <div id="dropmenu1_c" class="dropmenudiv_c">
      <div class="dropmenudiv_c1">
        <div class="dropmenudiv_c1_spe">
          <ul>
            <li class="dropmenudiv_c1_spe_title" style="margin-top: 10px;"><a href="http://www.eau-thermale-avene.cn/Promotion.aspx"
                        onclick="urchinTracker('/TopMenu/最新促销');">最新促销 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_wording">
              <div style="float: left; width: 168px;"> 敏感肌肤 清透美白<br>
                <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu1_pic1.png"
                                width="70" style="float: right;" />套装价<br>
                616元<br />
                赠品价值190元<br />
                <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_bt.gif" width="41"
                                height="17" border="0" style="margin-top: 5px; cursor: pointer;" onClick="urchinTracker('/TopMenu/最新促销');location.href='http://www.eau-thermale-avene.cn/Promotion.aspx'" /> </div>
            </li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c1_spe_title"><a href="http://www.eau-thermale-avene.cn/Media.aspx?displayoption=picture"
                        onclick="urchinTracker('/TopMenu/媒体推介');">媒体推介 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c1_spe_title"><a href="http://www.eau-thermale-avene.cn//Media.aspx?displayoption=video" onClick="urchinTracker('/TopMenu/视频共享');"> 视频共享 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_wording"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/videobutton.gif" width="70"
                            height="17" border="0" style="margin-top: 5px; margin-bottom: 5px; cursor: pointer;"
                            onclick="urchinTracker('/TopMenu/视频共享');location.href='http://www.eau-thermale-avene.cn/Media.aspx?displayoption=video'"> </li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c1_spe_title"><a href="http://www.eau-thermale-avene.cn/Award.aspx" onClick="urchinTracker('/TopMenu/雅漾殊荣');"> 雅漾殊荣 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c1_spe_title"><a href="http://www.eau-thermale-avene.cn/Salespoint.aspx" onClick="urchinTracker('/TopMenu/雅漾专柜');"> 雅漾专柜 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
          </ul>
        </div>
      </div>
    </div>
    <!--2nd drop down menu -->
    <div id="dropmenu2_c" class="dropmenudiv_c">
      <div class="dropmenudiv_c1">
        <div class="dropmenudiv_c2_spe">
          <ul>
            <li class="dropmenudiv_c2_spe_title" style="margin-top: 10px;"><a href="http://www.eau-thermale-avene.cn/history"
                        onclick="urchinTracker('/TopMenu/雅漾历史');">雅漾历史 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c2_spe_title"><a href="http://www.eau-thermale-avene.cn/eta-origin" onClick="urchinTracker('/TopMenu/雅漾活泉');"> 雅漾活泉 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c2_spe_title"><a href="http://www.eau-thermale-avene.cn/quality" onClick="urchinTracker('/TopMenu/质量保证');"> 质量保证 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c2_spe_title"><a href="http://www.eau-thermale-avene.cn/center" onClick="urchinTracker('/TopMenu/雅漾敏感肌肤活泉护理中心');"> 雅漾敏感肌肤活泉护理中心 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c2_spe_wording"><a href="http://www.eau-thermale-avene.cn/animation" target="_blank" onClick="urchinTracker('/TopMenu/雅漾敏感肌肤活泉护理中心');"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu2_pic2.jpg"
                            width="116" height="66" style="float: right;" /></a><a href="http://www.eau-thermale-avene.cn/center"><img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_bt.gif"
                                width="41" height="17" border="0" style="margin-top: 5px; _margin-top: -65px;
                                cursor: pointer;" /></a></li>
          </ul>
        </div>
      </div>
    </div>
    <!--3rd drop down menu -->
    <div id="dropmenu3_c" class="dropmenudiv_c">
      <div class="dropmenudiv_c1">
        <div class="dropmenudiv_c3_spe">
          <ul>
            <li class="dropmenudiv_c3_spe_title" style="margin-top: 10px;"><a href="http://www.eau-thermale-avene.cn/dermatologist.aspx"
                        onclick="urchinTracker('/TopMenu/雅漾皮肤学专家委员会');">雅漾皮肤学专家委员会 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c3_spe_wording"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu2_pic1.gif"
                            width="50" height="60" style="float: right; _margin-top: -15px;" />雅漾皮肤科专家的护肤指南<br />
              <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/videobutton.gif" width="70"
                            height="17" border="0" style="margin-top: 5px; cursor: pointer;" onClick="urchinTracker('/TopMenu/雅漾皮肤学专家委员会');location.href='http://www.eau-thermale-avene.cn/dermatologist.aspx'" /></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/sensitive-intolerant-hypersensitive-skin-class"
                        onclick="urchinTracker('/TopMenu/一般敏感耐受性差及高度敏感肌肤');">敏感皮肤/耐受性差及高度敏感皮肤 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/redness-skin-class" onClick="urchinTracker('/TopMenu/泛红');"> 泛红、红血丝皮肤 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/dry-skin-class" onClick="urchinTracker('/TopMenu/特干性皮肤');"> 特干性皮肤 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/dehydrated-skin-class" onClick="urchinTracker('/TopMenu/缺水性皮肤');"> 缺水性皮肤 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/anti-aging-skin-class" onClick="urchinTracker('/TopMenu/皮肤老化');"> 皮肤老化 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/atopic-skin-class" onClick="urchinTracker('/TopMenu/特应性皮肤');"> 特应性皮炎 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/dermatology-laser-treatments-skin-repaire-class"
                        onclick="urchinTracker('/TopMenu/皮肤学美容治疗及激光术后的修复');">皮肤学美容治疗及激光术后的修复 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/oily-and-acne-prone-skin-class" onClick="urchinTracker('/TopMenu/油性痤疮性皮肤');"> 油性/痤疮性皮肤 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/sun-protection-class" onClick="urchinTracker('/TopMenu/皮肤与日晒');"> 皮肤与日晒 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/couvrance-make-up-for-sensitive-skin-class"
                        onclick="urchinTracker('/TopMenu/敏感肌肤焕彩遮瑕');">敏感皮肤焕彩遮瑕 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif" width="270" height="1" /></li>
            <li class="dropmenudiv_c3_spe_title"><a href="http://www.eau-thermale-avene.cn/babys-delicate-skin-class" onClick="urchinTracker('/TopMenu/婴儿护肤');"> 婴幼儿皮肤 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
          </ul>
        </div>
      </div>
    </div>
    <!--4rd drop down menu -->
    <div id="dropmenu4_c" class="dropmenudiv_c" style="width: 150px;">
      <div class="dropmenudiv_c1">
        <div class="dropmenudiv_c4_spe">
          <ul>
            <li class="dropmenudiv_c4_spe_title" style="margin-top: 10px;"><a href="http://www.eau-thermale-avene.cn/eta-eau-thermale-water"
                        onclick="urchinTracker('/TopMenu/雅漾舒护活泉水');">舒护活泉水 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/hypersensitive-intolerant-skin" onClick="urchinTracker('/TopMenu/舒缓特护系列');"> 舒缓特护系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10" height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/sensitive-skin" onClick="urchinTracker('/TopMenu/修护系列');"> 修护系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10" height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/cleaning-and-lotion-for-sensitive-skin"
                        onclick="urchinTracker('/TopMenu/洁肤特效护理');">洁肤特效护理 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/sensitive-white" onClick="urchinTracker('/TopMenu/美白护理');"> 清透美白系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif"
                            width="10" height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/hydrance" onClick="urchinTracker('/TopMenu/缺水性敏感肌肤');"> 活泉恒润保湿系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/anti-aging-for-sensitive-skin" onClick="urchinTracker('/TopMenu/抗衰老护理');"> 抗老系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/sun-protection-for-sensitive-skin"
                        onclick="urchinTracker('/TopMenu/防晒护理');">防晒系列<img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif"
                            width="10" height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/oily-and-acne-prone-skin" onClick="urchinTracker('/TopMenu/油性痤疮性肌肤');"> 祛脂系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/redness" onClick="urchinTracker('/TopMenu/泛红红血丝肌肤');"> 修红保湿系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/couvrance-make-up" onClick="urchinTracker('/TopMenu/焕彩遮瑕护理');"> 焕彩遮瑕系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif"
                            width="10" height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/dry-skin-and-atopic" onClick="urchinTracker('/TopMenu/特干特应性肌肤');"> 冷霜及三重系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/babys-delicate-skin" onClick="urchinTracker('/TopMenu/婴幼儿娇嫩肌肤');"> 婴幼儿系列 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif"
                            width="10" height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="QAlanding.aspx" onClick="unchinTracker('/TopMenu/常见问题');">常见问题 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif"
                            width="10" height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="159" height="1" /></li>
            <li class="dropmenudiv_c4_spe_title"><a href="http://www.eau-thermale-avene.cn/CertifiedProduct.aspx" onClick="urchinTracker('/TopMenu/原装正品查询');"> 原装正品查询 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c4_spe_wording"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu4_pic1.jpg"
                            width="48" height="81" style="float: right;" />雅漾原装正品查询<a href="http://www.eau-thermale-avene.cn/CertifiedProduct.aspx"
                                onclick="urchinTracker('/TopMenu/原装正品查询');"><img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_bt.gif"
                                    width="41" height="17" border="0" style="margin-top: 5px; _margin-top: -55px;
                                    cursor: pointer;" /></a></li>
          </ul>
        </div>
      </div>
    </div>
    <!--5th drop down menu -->
    <div id="dropmenu5_c" class="dropmenudiv_c" style="width: 150px;">
      <div class="dropmenudiv_c1">
        <div class="dropmenudiv_c5_spe">
          <ul>
            <li class="dropmenudiv_c1_spe_title" style="margin-top: 10px;"><a href="http://www.eau-thermale-avene.cn/SensitiveLevelTest.aspx"
                        onclick="urchinTracker('/TopMenu/皮肤敏感等级');">皮肤敏感等级 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_wording"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu5_pic1.gif"
                            width="68" height="81" style="float: right; margin-bottom: 15px;" />判断您的肤质，<br />
              获得适合您的<br />
              护理方案<br />
              <a href="http://www.eau-thermale-avene.cn/SensitiveLevelTest.aspx" onClick="urchinTracker('/TopMenu/皮肤敏感等级');"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_bt.gif" width="41"
                                height="17" border="0" style="margin-top: 5px; _margin-top: -35px; cursor: pointer;" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c1_spe_title"><a href="http://www.eau-thermale-avene.cn/SunCareTest.aspx" onClick="urchinTracker('/TopMenu/皮肤光敏性测试');"> 皮肤光敏性测试 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c1_spe_title"><a href="http://www.eau-thermale-avene.cn/BadySkinTest.aspx" onClick="urchinTracker('/TopMenu/婴儿皮肤测试');"> 婴儿皮肤测试 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
          </ul>
        </div>
      </div>
    </div>
    <!--6th drop down menu -->
    <div id="dropmenu6_c" class="dropmenudiv_c" style="width: 150px;">
      <div class="dropmenudiv_c1">
        <div class="dropmenudiv_c6_spe">
          <ul>
            <li class="dropmenudiv_c6_spe_title" style="margin-top: 10px;"><a href="http://www.club-avene.cn/ClubAvene/ClubInfo_Rule.aspx"
                        onclick="urchinTracker('/TopMenu/关于我们');">关于我们 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a> </li>
            <li class="dropmenudiv_c6_spe_wording">
              <table width="201" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubInfo_Rule.aspx" onClick="urchinTracker('/TopMenu/会员规则');">会员规则 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/arrowgray.gif" width="5"
                                            height="5" border="0" /></a></td>
                  <td width="95" rowspan="4" valign="top"><img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu6_pic1.gif"
                                        width="90" height="77" style="float: right;" /></td>
                </tr>
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubInfo_Benefits.aspx" onClick="urchinTracker('/TopMenu/会员福利');"> 会员福利 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/arrowgray.gif" width="5"
                                            height="5" border="0" /></a></td>
                </tr>
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubInfo_PointRule.aspx" onClick="urchinTracker('/TopMenu/会员积分');"> 会员积分 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/arrowgray.gif" width="5"
                                            height="5" border="0" /></a></td>
                </tr>
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubInfo_QA.aspx" onClick="urchinTracker('/TopMenu/常见问题解答');">常见问题解答<img
                                        src="/images/default/arrowgray.gif" width="5"
                                        height="5" border="0" /></a></td>
                </tr>
              </table>
            </li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="247" height="1" /></li>
            <li class="dropmenudiv_c6_spe_title"><a href="http://www.club-avene.cn/ClubAvene/ClubInfo_PointQueryIntro.aspx"
                        onclick="urchinTracker('/TopMenu/会员积分查询');">会员积分查询 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="247" height="1" /></li>
            <li class="dropmenudiv_c6_spe_title" id="Crm_login_title" style="display: none"><a
                        href="http://www.club-avene.cn/ClubAvene/ClubAvene_Login.aspx" onClick="urchinTracker('/TopMenu/会员登录注册');"> 会员登录/注册 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c6_spe_wording" id="Crm_login_wording" style="display: none"> 在线积分兑礼，立即注册/登录</li>
            <li class="dropmenudiv_c6_spe_title" id="Crm_welcome_title" style="display: none">会员登录/注册 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></li>
            <li class="dropmenudiv_c6_spe_wording" id="Crm_welcome_wording">
              <table width="201" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubAvene_CustomerInformation.aspx" onClick="urchinTracker('/TopMenu/个人信息');"> 个人信息 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/arrowgray.gif" width="5"
                                            height="5" border="0" /></a></td>
                  <td width="95" rowspan="4" valign="top"></td>
                </tr>
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubRegister_PointQuery.aspx" onClick="urchinTracker('/TopMenu/积分查询');"> 积分查询 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/arrowgray.gif" width="5"
                                            height="5" border="0" /></a></td>
                </tr>
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubAvene_ExchangeGiftOne.aspx" onClick="urchinTracker('/TopMenu/我要换礼');"> 我要换礼 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/arrowgray.gif" width="5"
                                            height="5" border="0" /></a></td>
                </tr>
              </table>
            </li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="247" height="1" /></li>
            <!--
                    <li class="dropmenudiv_c6_spe_title"><a href="http://www.eau-thermale-avene.cn/ClubAvene/ClubAvene_MGM_Intro.aspx"
                        onclick="urchinTracker('/TopMenu/好友计划');">好友计划
                        <img src="http://www.eau-thermale-avene.cn/images/default/tworedarrow.gif" width="10" height="6" border="0" /></a></li>
                    <li class="dropmenudiv_c6_spe_wording">
                        <img src="http://www.eau-thermale-avene.cn/images/default/topmenu6_pic2.gif" width="67" height="82" style="float: right;" />加入雅漾好友计划，<br />
                        赢取奖励积分！<br />
                        <img src="http://www.eau-thermale-avene.cn/images/default/upgrade.gif" width="77" height="17" border="0" style="margin-top: 5px;
                            cursor: pointer;" onclick="urchinTracker('/TopMenu/好友计划');location.href='/ClubAvene/ClubAvene_MGM_Intro.aspx'" /></li>
                    <li class="dropmenudiv_c1_spe_line">
                        <img src="http://www.eau-thermale-avene.cn/images/default/topmenu_line.gif" width="247" height="1" /></li>
                    <li class="dropmenudiv_c6_spe_title"><a>会员每月特享
                        <img src="http://www.eau-thermale-avene.cn/images/default/tworedarrow.gif" width="10" height="6" border="0" /></a></li>
                    <li class="dropmenudiv_c6_spe_wording" style="height:28px">
                    <img src="http://www.eau-thermale-avene.cn/images/default/topmenu_bt2.gif" border="0" style="margin-top: 5px" alt="敬请期待">
                    </li>
                    <li class="dropmenudiv_c1_spe_line">
                        <img src="http://www.eau-thermale-avene.cn/images/default/topmenu_line.gif" width="247" height="1" /></li> 

					   !-->
            <li class="dropmenudiv_c6_spe_title"><a href="http://www.club-avene.cn/ClubAvene/ClubAvene_Events.aspx" onClick="urchinTracker('/TopMenu/会员新闻');"> 会员新闻 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c6_spe_wording" style="height: 50px">
              <table width="201" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubAvene_Events.aspx" onClick="urchinTracker('/TopMenu/活动精选');"> 活动精选 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/arrowgray.gif" width="5"
                                            height="5" border="0" /></a></td>
                  <td width="95" rowspan="4" valign="top"></td>
                </tr>
                <tr>
                  <td><a href="http://www.club-avene.cn/ClubAvene/ClubAvene_Announce.aspx" onClick="urchinTracker('/TopMenu/最新活动');"> 最新活动 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/arrowgray.gif" width="5"
                                            height="5" border="0" /></a></td>
                </tr>
              </table>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!--7th drop down menu -->
    <div id="dropmenu7_c" class="dropmenudiv_c">
      <div class="dropmenudiv_c1">
        <div class="dropmenudiv_c7_spe">
          <ul>
            <li class="dropmenudiv_c7_spe_title" id="bbs_login_li1" style="margin-top: 10px;
                        display: none"><a href="#">直接登录雅漾博客 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                                height="6" border="0" /></a></li>
            <li class="dropmenudiv_c7_spe_wording" id="bbs_login_li2" style="display: none">用户名：<br />
              <input name="AveneBBS_UserName" id="AveneBBS_UserName" type="text" style="border: 1px #e5e5e5 solid;
                            width: 151px" />
              <br />
              密 &nbsp;码：<br />
              <input name="AveneBBS_UserPass" id="AveneBBS_UserPass" type="password" style="border: 1px #e5e5e5 solid;
                            width: 151px" />
              <br />
              <a href="http://www.eau-thermale-avene.cn/SSO/CommunityLogin/ForgetPassword.aspx">* 忘记密码？</a>
              <table width="162" height="24" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="51"><input name="" type="image" onClick="CommunityLoginOnlyForBrandsite();return false;"
                                        src="/images/default/topmenu_loginbt.gif" width="41" height="17" /></td>
                  <td><a href="http://www.eau-thermale-avene.cn/SSO/CommunityLogin/CommunityRegister.aspx"><strong>注册</strong>新用户</a></td>
                </tr>
              </table>
            </li>
            <li class="dropmenudiv_c7_spe_wording" id="bbs_welcome" style="margin-top: 10px;
                        display: none">您好，<span id="bbs_username"></span>，欢迎光临雅漾博客！<br />
              <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_outbt.gif"
                            width="41" height="17" border="0" style="margin-top: 5px; cursor: pointer;" onClick="logout();" /> </li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            <li class="dropmenudiv_c7_spe_title"><a href="http://www.eau-thermale-avene.cn/SSO/SSOConverter.aspx?RedirectUrl=blog"
                        target="_blank" onClick="urchinTracker('/TopMenu/雅漾博客');">雅漾博客 <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/tworedarrow.gif" width="10"
                            height="6" border="0" /></a></li>
            <li class="dropmenudiv_c1_spe_line"> <img src="http://blog.eau-thermale-avene.cn/THEMES/avene/TEMPLATE/TopMenu/images/topmenu_line.gif"
                            width="169" height="1" /></li>
            
            <!--<li class="dropmenudiv_c1_spe_line"><img src="http://www.eau-thermale-avene.cn/images/default/topmenu_line.gif" width="169" height="1" /></li>--> 
            <!-- 试用 --> 
            
            <!--    
                    <li class="dropmenudiv_c7_spe_title"><a href="http://www.eau-thermale-avene.cn/minisite/BAIncentive/index.aspx" target="_blank" onclick="urchinTracker('/TopMenu/雅漾员工之家');">雅漾员工之家 <img src="http://www.eau-thermale-avene.cn/images/default/tworedarrow.gif" width="10" height="6" border="0" /></a></li>
					-->
          </ul>
        </div>
      </div>
    </div>
    <script type="text/javascript">
        //SYNTAX: tabdropdown.init("menu_id", [integer OR "auto"])
        tabdropdown.init("defaultheaderright")
        highlight_firstMenu();

        InitBBSUnifiedLogin();
        ShiftFocusWhenLogin();
        var intervalInitBBSUnifiedLogin;

        $(document).ready(function () {
            intervalInitBBSUnifiedLogin = setInterval(InitBBSUnifiedLogin, 5000);
        });  
		
    </script> 
  </div>
  <!--搜索排除结束--> 
  
</div>
</div>
<div id="mobileHeader">
	<a class="logo" href="<#ZC_BLOG_HOST#>">Avene</a>
	<div class="nav-btn">
		<ul>
			<li class="topNav1"><a href="<#ZC_BLOG_HOST#>">雅漾博客首页</a></li>
			<li class="topNav2" class="topNav1"><a href="<#ZC_BLOG_HOST#>catalog.asp?cate=15">护肤保养专家</a></li>
			<li class="topNav3"><a href="<#ZC_BLOG_HOST#>catalog.asp?cate=16">雅漾美肌日志</a></li>
			<li class="topNav4"><a href="<#ZC_BLOG_HOST#>catalog.asp?cate=17">皮肤学专家</a></li>
			<li class="topNav5"><a href="<#ZC_BLOG_HOST#>catalog.asp?cate=18">注册国际营养师</a></li>
			<li class="topNav5"><a href="<#ZC_BLOG_HOST#>catalog.asp?cate=19">雅漾博客首页读者</a></li>
			<li class="topNav5"><a href="<#ZC_BLOG_HOST#>catalog.asp?cate=14">读者Q&A</a></li>
			<li class="topNav5"><a href="<#ZC_BLOG_HOST#>catalog.asp?cate=13">新品试用日记</a></li>
			<li class="topNav5"><a href="<#ZC_BLOG_HOST#>catalog.asp?cate=5">精华帖</a></li>
		</ul>
	</div>
	<div class="clearfix"></div>
</div>