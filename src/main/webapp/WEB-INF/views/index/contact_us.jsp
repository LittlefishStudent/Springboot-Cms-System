<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="author" content="order by yuwencheng/" />
<title>${setting.sysTitle}</title>
<meta name="description" content="${setting.sysIntro}" />
<meta name="keywords" content="${setting.sysIntro}" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_portal_list.css" />
<script src="${pageContext.request.contextPath}/static/index/style/js/common.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/jquery-1.7.2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/pace.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/static/index/style/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<body id="nv_portal" class="pg_list pg_list_1 pg_list_6">
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div id="toptb" class="cl" style="display:none;"> </div>
<div id="hd" style="background:#FFF; height:60px; border-bottom:1px solid #E6E6E6; ">
  <div class="clear"></div>
  <div id="week_nav">
    <div class="wk_navwp">
      <div class="wk_lonav">
        <div class="wk_logo">
          <h2><a href="${pageContext.request.contextPath}/" title=""><img src="${pageContext.request.contextPath}/static/index/style/images/logo.png" alt="" border="0" /></a></h2>
        </div>
        <div class="wk_inav">
          <ul class="nav">
            <li><a href="${pageContext.request.contextPath}/" >????????????</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/about" >????????????</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/news" >????????????</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/product" >????????????</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/question" >????????????</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/contact" style="color:#90C42F">????????????</a></li>
            
          </ul>
        </div>
      </div>
      
    </div>
  </div>
</div>

<div id="mu" class="cl">
  <div class="wp"> </div>
</div>
<script src="${pageContext.request.contextPath}/static/index/style/js/week_nav.js" type="text/javascript"></script>
<div id="wp" class="wp">
  <style id="diy_style" type="text/css">
#frameyd1cLA {  border:0px !important;margin:0px !important;}#portal_block_18 {  border:0px !important;margin:0px !important;}#portal_block_18 .dxb_bc {  margin:0px !important;}#framep2n1bg {  border:0px !important;margin:0px !important;}#portal_block_19 {  border:0px !important;margin:0px !important;}#portal_block_19 .dxb_bc {  margin:0px !important;}#frameHCV83Y {  border:0px !important;margin:0px !important;}#portal_block_20 {  border:0px !important;margin:0px !important;}#portal_block_20 .dxb_bc {  margin:0px !important;}#framelo3Fmy {  border:0px !important;margin:0px !important;}#portal_block_21 {  border:0px !important;margin:0px !important;}#portal_block_21 .dxb_bc {  margin:0px !important;}
</style>
<link href="${pageContext.request.contextPath}/static/index/style/css/about.css" rel="stylesheet" type="text/css" />
</div>
<div class="wk_list_box wk_list_box3"> </div>

<div class="clear"></div>
<div class="week_contact">
  <div class="week_container">
    <ul class="contact-ways">
      <li> <a href="tel:400-500-8899"> <i class="i-phone"></i>
        <h4>??????????????????</h4>
        <p class="cway-txt">${setting.contactTel}</p>
        </a> </li>
      <li> <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=${setting.qqVal}&amp;site=qq&amp;menu=yes"> <i class="i-qq"></i>
        <h4>QQ????????????</h4>
        <p class="cway-txt">${setting.qqVal}</p>
        </a> </li>
      <li> <a href="Mailto:${setting.email}"> <i class="i-mail"></i>
        <h4>??????????????????</h4>
        <p class="cway-txt">${setting.email}</p>
        </a> </li>
    </ul>
  </div>
</div>
<div class="clear"></div>
<div class="week_weixin">
  <div class="week_container">
    <h3>????????????</h3>
    <p>???????????????????????????????????????????????????</p>
    <p class="week_weixin-p"><img src="${setting.wetchatImg}" /></p>
  </div>
</div>
<div class="clear"></div>
<div class="week_map">
  <div id="allmap">
  <div style="width:100%;height:520px;" id="dituContent"></div>
  </div>
  <div class="mark-info">
    <h4>${setting.companyName}</h4>
    <p>${setting.contactTel}</p>
  </div>
</div>

<div class="clear"></div>
<div id="wp" class="wp">
  <div class="wp"><!--[diy=diy1]-->
    <div id="diy1" class="area"></div>
    <!--[/diy]--></div>
  
  <!--[diy=listcontenttop]-->
  <div id="listcontenttop" class="area"></div>
  <!--[/diy]-->
  
  <div class="clear"></div>
  
  <!--[diy=diycontentbottom]-->
  <div id="diycontentbottom" class="area"></div>
  <!--[/diy]-->
  
  <div class="wp mtn"> 
    
    <!--[diy=diy3]-->
    <div id="diy3" class="area"></div>
    <!--[/diy]--> 
    
  </div>
</div>
<div id="wk_ft">
  <div class="section fp-auto-height">
      <div class="wk_footer"> Copyright ??2020 ${setting.companyName} ????????????  <a title="baidu" href="#" target="_blank">???????????????</a>  ????????????<a href="http://www.miitbeian.gov.cn/" target="_blank" title="${setting.beianNo}">${setting.beianNo}</a> <br />
        ???????????????
         <c:forEach var="item" items="${ll}">
      <a href='${item.linkUrl}' target='_blank'>${item.linkName}</a>
      </c:forEach>
        
        </div>
</div>

</div>
</div>
<ul id="scbar_type_menu" class="p_pop" style="display: none;">
</ul>

<link href="${pageContext.request.contextPath}/static/index/style/css/service.css" rel="stylesheet" type="text/css" />
<div class="main-im">
  <div id="open_im" class="open-im"> </div>
  <div class="im_main" id="im_main">
    <div id="close_im" class="close-im"><a href="javascript:void(0);" title="????????????"> </a></div>
    <a href="http://wpa.qq.com/msgrd?v=3&uin=${setting.qqVal}&site=qq&menu=yes" target="_blank" class="im-qq qq-a" title="??????QQ??????">
    <div class="qq-container"></div>
    <div class="qq-hover-c"><img class="img-qq" src="${pageContext.request.contextPath}/static/index/style/images/qq.png"></div>
    <span>QQ????????????</span> </a>
    <div class="im-tel">
      <dt>??????????????????</dt>
      <dt class="tel-num">${setting.sqTel}</dt>
      <dt>??????????????????</dt>
      <dt class="tel-num">${setting.shTel}</dt>
    </div>
    <div class="im-footer" style="position:relative">
      <div class="weixing-container">
        <div class="weixing-show">
          <div class="weixing-txt">???????????????<br>
            ????????????<br>
            ????????????????????????</div>
          <img class="weixing-ma" src="${setting.wetchatImg}">
          <div class="weixing-sanjiao"></div>
          <div class="weixing-sanjiao-big"></div>
        </div>
      </div>
      <div class="go-top"><a href="#" title="????????????"></a> </div>
      <div style="clear:both"></div>
    </div>
  </div>
</div>
<script type="text/javascript">

PTM(document).ready(function(){

PTM('#close_im').bind('click',function(){

PTM('#main-im').css("height","0");

PTM('#im_main').hide();

PTM('#open_im').show();

});

PTM('#open_im').bind('click',function(e){

PTM('#main-im').css("height","272");

PTM('#im_main').show();

PTM(this).hide();

});



PTM(".weixing-container").bind('mouseenter',function(){

PTM('.weixing-show').show();

})

PTM(".weixing-container").bind('mouseleave',function(){        

PTM('.weixing-show').hide();

});

});

</script> 
<script src="style/js/home.js" type="text/javascript"></script>
<div id="scrolltop"> <span hidefocus="true"><a title="????????????" onclick="window.scrollTo('0','0')" class="scrolltopa" ><b>????????????</b></a></span> </div>
<script type="text/javascript">_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</script>
<div id="discuz_tips" style="display:none;"></div>
<script src="style/js/discuz_tips.js" type="text/javascript" charset="UTF-8"></script>
<script type="text/javascript">
    //?????????????????????????????????
    function initMap(){
        createMap();//????????????
        setMapEvent();//??????????????????
        addMapControl();//?????????????????????
        addMarker();//??????????????????marker
    }
    
    //?????????????????????
    function createMap(){
        var map = new BMap.Map("dituContent");//??????????????????????????????????????????
        var point = new BMap.Point(118.811012,32.080156);//???????????????????????????
        map.centerAndZoom(point,14);//?????????????????????????????????????????????????????????????????????
        window.map = map;//???map?????????????????????
    }
    
    //???????????????????????????
    function setMapEvent(){
        map.enableDragging();//???????????????????????????????????????(?????????)
        map.enableScrollWheelZoom();//??????????????????????????????
        map.enableDoubleClickZoom();//???????????????????????????????????????(?????????)
        map.enableKeyboard();//???????????????????????????????????????
    }
    
    //???????????????????????????
    function addMapControl(){
                        }
    
    //???????????????
    var markerArr = [{title:"${setting.companyName}",content:"${setting.companyAddress}",point:"${setting.companyLat}|${setting.companyLng}",isOpen:1,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ];
    //??????marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //??????InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //????????????Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//????????????????????????
</script>
</body>
</html>
