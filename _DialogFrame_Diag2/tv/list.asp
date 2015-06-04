<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>节目列表</title>
<style type="text/css"> 
<!-- 

body{overflow-x: hidden;overflow-y: auto;}
* {padding:0;margin:0; font-size:12px;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF}
body {SCROLLBAR-FACE-COLOR: #444; SCROLLBAR-HIGHliGHT-COLOR: #666; SCROLLBAR-SHADOW-COLOR: #222; SCROLLBAR-3DliGHT-COLOR: #000; SCROLLBAR-ARROW-COLOR: #999; SCROLLBAR-TRACK-COLOR: #666; SCROLLBAR-DARKSHADOW-COLOR: #111; background-color: #000000;}
h1{display:none;}
img{border:none;}
ul{padding:0;margin:0;list-style-type:none;}
a {outline: none;}
/* 列表导航菜单 */ 
#menu {width:188px; margin-left:2px;}
#menu li {list-style-type:none; display:block; width:188px; min-height:23px; line-height:23px; background:url(images/menu_listbk.gif)  no-repeat;}
#menu li.sc {background:url(images/menu_listbk2.gif)  no-repeat;}
#menu li a { display:block; text-decoration:none;  width:100%;  padding:1px 3px 0 3px; height:23px; line-height:23px; }
#menu li a:hover span {cursor:hand;}
#menu li a.list_name{ float:left;display:block; width:100%; padding-left:18px;height:21px; line-height:21px;}
#menu h1 { display:block;height:23px;line-height:23px; font-weight:normal; margin-top:1px;overflow:hidden;}
#menu span {margin:0 10px;line-height:30px;color:#ccc}
#menu h1.lm_1{display:block; width:188px; color:#333;text-align:left; padding-left:5px;height:21px;line-height:21px; }
#menu h2.lm_2{display:block; width:188px; color:#333; text-align: left;font-weight:normal;text-decoration:none; margin-top:3px}
#menu h2.lm_2 a{display: block; background: url(images/tv.gif) #363636 no-repeat 23px 5px; MARGIN-BOTTOM: 1px; WIDTH: 100%; COLOR: #cccccc; TEXT-INDENT: 25px; HEIGHT: 25px; LINE-HEIGHT: 25px; BORDER-BOTTOM: #333333 1px solid; TEXT-DECORATION: none;padding-left:10px; overflow:hidden;}
#menu h2.lm_2 a:hover,#menu h2.lm_2 a:active{background-color:#555555; color:#ffffff; overflow:hidden;}

#menu h1 a{color:#cccccc;}
#menu h1 a:hover,#menu h1 a:active{color:#ff6600;}
#menu li img{ float:left;display: block;}
.mlt {background-image:url(images/m_bg.gif);COLOR: #ff6600;TEXT-INDENT: 2px; padding-top:5px; HEIGHT: 22px; LINE-HEIGHT: 22px;TEXT-ALIGN: left;}
.mlt a{COLOR: #ff6600;text-decoration: none;font-size:12px;}
.mlt a:active{COLOR: #ff6600;text-decoration: none;}
 --> 
</style>
<script type="text/javascript" language="javascript" src='j.js'></script>
<script language="javascript" type="text/javascript">
function $id(sid){
	return document.getElementById(sid);
}
function getCookie(name) {
	var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	if (arr != null) {return unescape(arr[2]);}
	return '';
}
function setCookie(name, value, n) {
	var expdate = new Date;
	expdate.setTime(expdate.getTime() + n*1000);
	document.cookie = name + ("=" + escape(value) + ";expires=" + expdate.toGMTString() + ";path=/;");
}
var classstr = "";
var channelstr = "";
var u = document.URL;
function GetData(str,rid) {
	var mclass = "";
	var disp = "";
	if(str!=""){
		str=str.replace(/(\/|\\|\||\(|\)|\.|\*|\$|\&|\?|\+|\{|\}|\^|\[|\]|\-)/ig,'').toLowerCase();
		mclass = " class=\"sc\"";
	}else{
		disp = " style=\"display: none\"";
	}
	if(rid == 1 || str != ""){
	var clsArr = "数字付费频道,国内卫视频道,体育频道,游戏竞技频道,影视频道,少儿卡通频道,国外频道,港澳台频道,中央频道,湖南省,江苏省,浙江省,安徽省,北京市,天津市,辽宁省,江西省,黑龙江省,山东省,上海市,云南省,四川省,河南省,广东省,湖北省,福建省,重庆市,贵州省,河北省,吉林省,广西壮族自治区,青海省,山西省,陕西省,内蒙古自治区,宁夏回族自治区,西藏自治区,新疆维吾尔自治区,甘肃省,海南省".split(",");
	var cidArr = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,AA,AB,AC,AD,AE,AF,AG,AG,AI,AJ,AK,AL,AM,AN".split(",");
	var ubArr = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0".split(",");
	var linkArr = ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,".split(",");
	var channelArr = ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,".split(",");
	var ctArr = "付,卫视,体,游,影,儿".split(",");
	var cid = "";
	var tid = "";
	var pid = "";var cname = "";var cd = "";var ctype = "";var area = 0;
	var i = 0;var j = 0;var a = parseInt(u.substr(12,1));
	var fid = "";
	var nextis = 1;
	for(i = 0; i < jsons.length; i++){
		pid = jsons[i].pid;
		cname = jsons[i].cname;
		cd = jsons[i].cd;
		ctype = jsons[i].ctype;
		area = jsons[i].area;
		if(tid == "2"){
			if(fid != ""){
				fid = "-" + fid + "-";
				if(fid.indexOf("-"+ pid +"-") > -1){
					nextis = 1
				}else{
					nextis = 0
				}
			}
		}
		if(nextis == a-5){
		if(cname.toLowerCase().indexOf(str) > -1 && u.indexOf('ma.')!=-1){
			if(str == ""){
			if(ctype.indexOf("付") > -1){
				if(tid != "2"){
					ubArr[0] = parseInt(ubArr[0]) + 1;
					cid = "";
					linkArr[0] = linkArr[0] + "<a href=\"javascript:play('"+ pid +"_0');\" hidefocus=\"true\" id=\""+ pid +"_0\">"+ cname +" "+ cid +"<font style=\"color:#99cc00\"> "+ cd +"</font></a>";
					channelArr[0] = pid +"_0,"+ channelArr[0];
				}
			}
			if(cname.indexOf("卫视") > -1){
				if(cname.indexOf("-") == -1){
					ubArr[1] = parseInt(ubArr[1]) + 1;
					if(tid == "2"){cid = "B" + ubArr[1];}else{cid = "";}
					linkArr[1] = linkArr[1] + "<a href=\"javascript:play('"+ pid +"_1');\" hidefocus=\"true\" id=\""+ pid +"_1\">"+ cname +" "+ cid +"<font style=\"color:#99cc00\"> "+ cd +"</font></a>";
					channelArr[1] = pid +"_1,"+ channelArr[1];
				}
			}
			for(j = 2; j < ctArr.length; j++){
				if(ctype.indexOf(ctArr[j]) > -1){
					ubArr[j] = parseInt(ubArr[j]) + 1;
					if(tid == "2"){cid = cidArr[j] + ubArr[j];}else{cid = "";}
					linkArr[j] = linkArr[j] + "<a href=\"javascript:play('"+ pid +"_"+j+"');\" hidefocus=\"true\" id=\""+ pid +"_"+j+"\">"+ cname +" "+ cid +"<font style=\"color:#99cc00\"> "+ cd +"</font></a>";
					channelArr[j] = pid +"_"+j+","+ channelArr[j];
				}
			}
			}
			for(j = 6; j < clsArr.length; j++){
				if(j == area + a){
					ubArr[j] = parseInt(ubArr[j]) + 1;
					if(tid == "2"){cid = cidArr[j] + ubArr[j];}else{cid = "";}
					linkArr[j] = linkArr[j] + "<a href=\"javascript:play('"+ pid +"');\" hidefocus=\"true\" id=\""+ pid +"\">"+ cname +" "+ cid +"<font style=\"color:#99cc00\"> "+ cd +"</font></a>";
					channelArr[j] = pid +","+ channelArr[j];
				}
			}
		}}
	}
	var tn = 0;
	var tngif = "";
	var liststr = "";
	for(i = 0; i < linkArr.length; i++){
		if(linkArr[i] != ""){
			tn = parseInt(ubArr[i]/5) + 1;
			if(tn == 1){tngif = "|"}
			if(tn == 2){tngif = "||"}
			else if(tn == 3){tngif = "|||"}
			else if(tn == 4){tngif = "||||"}
			else{tngif = "|||||"}
			tngif = "<font style=\"color:#99cc00;font-size:8px\">"+ tngif +"</font>";
			if(tid == "2"){tngif = cidArr[i] + " " + tngif}
			liststr = liststr + "<li"+ mclass +" id=\"li_"+ i +"\"><h1 class=\"lm_1\"><a href=\"javascript:OpenChanel("+ i +");\" class=\"list_name\" id=\"cls_"+ i +"\" hidefocus=\"true\">"+ clsArr[i] +" "+ tngif +"</a></h1><h2 class=\"lm_2\" id=\"CHT_"+ i +"\""+ disp +">"+ linkArr[i] +"</h2></li>";
			channelstr = channelArr[i] + "cls_"+ i +","+ channelstr;
			classstr = "cls_"+ i +","+ classstr;
		}
	}
	classstr = classstr + "k,";
	if(liststr == ""){liststr = "<span>暂时没有找到，请稍后访问！</span>"}
	liststr = "<ul id=\"menu\">"+ liststr +"</ul>";
	}
	if(str != ""){
		$id("halist").style.display="none";
		$id("solist").style.display="block";
		$id("solist").innerHTML = liststr;
	}else{
		if(rid == 1){
			$id("halist").innerHTML = liststr;
		}else{
			$id("solist").innerHTML = "";
			$id("solist").style.display="none";
			$id("halist").style.display="block";
		}
	}
}
var LastLink = 'zhejiang';
function play(id){
	var y;
	var x;
	var ol = new Array(6);
	var oi = new Array(6);
	id = id.replace('_0','').replace('_1','').replace('_2','').replace('_3','').replace('_4','').replace('_5','');
	if(id.indexOf('==')>-1){
		y = 1;
		id = id.replace('==','');
	}
	try{
		ol[0] =  $id(LastLink);ol[1] = $id(LastLink+'_0');ol[2] = $id(LastLink+'_1');ol[3] = $id(LastLink+'_2');ol[4] = $id(LastLink+'_3');ol[5] = $id(LastLink+'_4');
		oi[0] = $id(id);oi[1] = $id(id+'_0');oi[2] = $id(id+'_1');oi[3] = $id(id+'_2');oi[4] = $id(id+'_3');oi[5] = $id(id+'_4');
		for (x in ol) {
			if (ol[x]){
				ol[x].style.backgroundColor = '';
				ol[x].style.color = '';
			}
		}
		for (x in oi) {
			if (oi[x]){
				oi[x].style.backgroundColor = '#555555';
				oi[x].style.color = '#ffffff';
			}
		}
	}catch(E){
		return;
	}
	LastLink = id;
	if(y!=1){
		parent.frames['play'].location.href = 'tv.asp?pid='+id+'&sid=&swd=&uid=';
		setCookie('channelId',id,360*24*60*60);
	}
}
function keyDown(){
	var e = event?event:window.event;
	var t = e.srcElement?e.srcElement:e.target;if(u.substr(13,1) != "4") return;
	try{
		var activeid = t.id;
		if(e.keyCode == 40){
			if(parent.document.getElementById("tv_list").style.display != "none") {
				if(activeid != "cls_39"){e.keyCode = 9;}else{e.keyCode = 0;}
			}
		}else if(e.keyCode == 38){
			var lastid = "k";
			if(activeid.indexOf("cls_")>-1){
				lastid = (","+classstr).split(","+activeid+",")[1].split(",")[0];
			}else{
				lastid = (","+channelstr).split(","+activeid+",")[1].split(",")[0];
			}
			stopDefault(e);
			$id(lastid).focus();
		}else if(e.keyCode == 37 || e.keyCode == 39){
			parent.showsubmenu(0);
		}
	}catch(E){}
	return;
}
function stopDefault(e) {
	if (e && e.preventDefault){
		e.preventDefault();
	} else {
		window.event.returnValue = false;
	}
}
if(top==self){window.location="/"}
function killErrors(){return true;}
window.onerror = killErrors;
</script>
</head>
<body oncontextmenu=window.event.returnValue=false onkeydown="keyDown();">
<div class="mlt" onClick="javascript:GetData($id('k').value,0);">
  <form name="searchform" target="_self" style="height:22px; margin:0px; padding:0px; list-style:none;font-size:12px;">
    <a href="list.asp?tid=&fid=&swd=&uid=&wk=htpc" hidefocus="true" title="点击切换到HTPC版列表" target="_self">HT版</a>
    <input type="text" name="k" id="k" style="width:105px; height:16px; margin:0px; color:#FFFFFF; background-color:#000000; border:0px #000000 solid" onKeyUp="javascript:GetData(this.value,0);" autocomplete="off"/>
  </form>
</div>
<!-- 频道列表导航开始 -->
<div id="solist" style="display:none"><ul><li id="li_40"><h1 class="lm_1"></h1><h2 class="lm_2" id="CHT_40"></h2></ul></div>
<div id="halist" style="display:block;"></div>
<!-- 频道列表导航结束 -->
<script language="javascript" type="text/javascript">
GetData('',1);
//CLICK处理
var crrCn=40;
function OpenChanel(id) {
	try{
	var o1 = $id("CHT_" + crrCn);
	var o2 = $id("li_" + crrCn);
	var o3 = $id("li_" + id);
	var o4 = $id("CHT_" + id);
	if (crrCn == id) {
		if (o1.style.display == "none") {
			o1.style.display = "block";
		}
		else {
			o1.style.display = "none";
		}
		if (o2.style.backgroundImage.indexOf('menu_listbk2.gif') > -1) {
			o2.style.backgroundImage = "url(images/menu_listbk.gif)";
		}
		else {
			o2.style.backgroundImage = "url(images/menu_listbk2.gif)";
		}
	}
	else {
		o2.style.backgroundImage = "url(images/menu_listbk.gif)";
		o3.style.backgroundImage = "url(images/menu_listbk2.gif)";
		o4.style.display = "block";
		if(o1.style.display != "none"){
			o1.style.display = "none";
			if(id > crrCn){
				
				location.href="#li_"+id;
				$id("cls_"+id).focus();
				
			}
		}
		crrCn = id;
	}
	}catch(E){
		return;
	}
	setCookie('channelClassId',id,360*24*60*60);
}
var channelClassId = getCookie("channelClassId");
var channelId = getCookie("channelId");
if(channelClassId==''){channelClassId=11}
if(channelId==''){channelId='zhejiang'}
OpenChanel(channelClassId);
play(channelId+'==');
if('0-1-2-3-4-5'.indexOf(channelClassId)>-1){
	if($id(channelId+'_'+channelClassId)){try{$id(channelId+'_'+channelClassId).focus();}catch(E){$id("cls_"+channelClassId).focus()}}
}else{
	if($id(channelId)){try{$id(channelId).focus();}catch(E){$id("cls_"+channelClassId).focus()}}
}
if(navigator.userAgent.indexOf("MSIE")>0) {
	document.execCommand("BackgroundImageCache", false, true);
}
</script>
</body>
</html>