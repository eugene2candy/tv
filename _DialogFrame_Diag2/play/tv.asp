<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>浙江卫视</title>
<style type="text/css">
<!--
html, body{margin: 0px 0px;width: 100%;height: 100%;}
body {overflow:hidden;font-size: 12px;margin: 0px;background-color: #000000;}
body, td, th {font-size: 12px;color: #999999;}
img {border:0}
a {outline: none;}
a:link {color: #CCCCCC;text-decoration: none;}
a:visited {color: #999999;text-decoration: none;}
a:hover {color: #CCCCCC;text-decoration: none;}
a:active {color: #CCCCCC;text-decoration: none;}
.full {z-index:3;font-size:12px;color:#ffffff;background:#000000;position:absolute;bottom:3px;right:0px;padding:0 10px;}
#lg a {width:23px;height:21px;float:left;display:inline;background:url(images/g2.gif) no-repeat left top;margin:0px 4px 0px 0px;padding:0px;text-decoration:none;}
#lg a:hover {background-position:-23px 0;text-decoration: none;}
#jm {float:left;display:inline; height:21px; line-height:21px;}
#qh a {float:right;display:inline;display:block;width:100px;height:21px;color:#999;line-height:20px;text-decoration:none;text-align:center;background:url(images/qh.gif) no-repeat 0 0;}
#qh a.qh,#qh a:hover {color:#fff;background:url(images/qh.gif) no-repeat 0 -21px;}
#qh a.linesort{color:#99cc00}
#player {width:100%; height:100%;}
#cover {width:100%; height:100%;z-index:2;position:absolute;background:url(images/load.gif) no-repeat center center;}
#start_score {position:absolute;float:right;z-index:2;top:30px;right:5px;height:25px;line-height:25px;background:#000000;font-weight:bold;font-size:14px;font-family: Verdana, Arial, Helvetica, sans-serif;cursor:default;filter:alpha(opacity=50);opacity:0.5;-moz-opacity:0.5;}
#start_score p {position:relative;color:#FFFFFF;}

#c_list {width:130px;background:#000000 url(images/list.png);}
#c_list div{margin:0px auto 0px 3px; text-indent:22px; display:block; cursor:default; font:12px arial; color:#666666; width:120px;height:20px; line-height:20px; overflow: hidden; background:url(images/lha.gif) no-repeat 0px 0px;}
#c_list div.ing {color:#FFFFFF; background:url(images/lha.gif) no-repeat 0px -40px;}
#lbottom {position:absolute;bottom:2px;left:0px;}
-->
</style>
<script language="JavaScript"> 
if(top==self){window.location="/"}
function $id(sid){
	return document.getElementById(sid);
}
function yime(){
	$id("jiemu").style.display="none";
}
function play(pid,sid){
	window.location = '?pid='+pid+'&sid='+sid+'&swd=&uid=';
}
function setCookie(name, value, n) {
	value = value.replace(/[\r\n]/g,'').replace(/[ "']/g,'');
	var expdate = new Date;
	expdate.setTime(expdate.getTime() + n*1000);
	document.cookie = name + ("=" + escape(value) + ";expires=" + expdate.toGMTString() + ";path=/;");
}
function swdPost(){
	var swd = $id('swd').value;
	var re = new RegExp("[0-9a-zA-Z]+");
	if (re.test(swd)) {
		alert('设置失败：线路名称只需输入前4个汉字即可，不能包含非中文字符');
	}else if(swd.split('-').length < 11){
		setCookie("swd", swd, 360*24*60*60);
		alert('设置成功');
	}else{
		alert('设置失败：目前最多只能设置10个线路');
	}
}
function getCookie(name) {
	var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	if (arr != null) {
		return unescape(arr[2]);
	}
	return '';
}
</script>

</head>
<body oncontextmenu=window.event.returnValue=false>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0"><tr id="jiemu"><td height="21" nowrap background="images/bj.gif" ><div id="lg"><a href="javascript:;" onClick="yime()" title="隐藏此信息栏" hidefocus="true"></a></div><div id="jm">浙江卫视 <img src="images/e.gif" width="26" height="21" border="0" align="absmiddle"></div><div id="qh"><a href="javascript:;" onClick="play('zhejiang','3');return false;" title="线路排序设置" hidefocus="true">线路排序设置</a><a href="javascript:;" onClick="play('zhejiang','0');return false;" title="高清回看信号" hidefocus="true">高清回看信号</a><a href="javascript:;" onClick="play('zhejiang','');return false;" title="电视直播信号" class="qh" hidefocus="true">电视直播信号</a></div><td></tr>
<tr><td width="100%"><div id="player">

</div></td></tr></table>
<script type="text/javascript" src="js/cmp.js"></script>
<script language="javascript">
//cmp回调函数
function cmp_loaded(key) {
	cmpo = CMP.get("cmp");
	if (!cmpo) {
		return;	
	}
	if (WMP) {
		WMP.init(key, cmpo, "0");
	}
}
var flashvars = {
	asp : "zhejiang_1_",
	api : "cmp_loaded"
};
//id, width, height, swf_url, flashvars, params, attrs
var html = CMP.create("cmp", "100%", "100%", "cmp.swf", flashvars);
$id("player").innerHTML = html;
</script>

</body>
</html>