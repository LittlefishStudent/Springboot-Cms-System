<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="order by yuwencheng/" />
<title>${setting.sysTitle}</title>
<meta name="keywords" content="${setting.sysIntro}" />
<meta name="description" content="${setting.sysIntro}" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_portal_list.css" />
<script src="${pageContext.request.contextPath}/static/index/style/js/common.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/jquery-1.7.2.js" type="text/javascript"></script>
       <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/pace.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/static/index/style/css/style.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/common/page/myPagination.css?t=4" />
</head>
<body id="nv_portal" class="pg_list pg_list_2">
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
            
            <li><a href="${pageContext.request.contextPath}/commonapi/news" style="color:#90C42F">????????????</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/product" >????????????</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/question" >????????????</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/contact" >????????????</a></li>
            
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
<div id="wp" class="wp"> </div>
<div class="wk_list_box wk_list_box15"> </div>
<div class="clear"></div>
<div class="wk_ymbg">
  <div id="wp" class="wp">
    <div class="wp"> 
      
      <!--[diy=diy1]-->
      <div id="diy1" class="area"></div>
      <!--[/diy]--> 
      
    </div>
    <div id="ct" class="ct2 wp cl">
      <div class="mn">
        <div class="wk_c_right_name">
          <div class="wk_c_right_name_r">
            <ul>
              <li> <img src="${pageContext.request.contextPath}/static/index/style/images/right_wz.png" alt="" /> </li>
              <li> <span>?????????????????????</span> <a href='${pageContext.request.contextPath}/'>??????</a> > <a href='${pageContext.request.contextPath}/commonapi/news'>????????????</a> >  </li>
            </ul>
          </div>
        </div>
        
        <!--[diy=listcontenttop]-->
        <div id="listcontenttop" class="area"></div>
        <!--[/diy]-->
        
        <div class="wk_content_right_m">
          <div class="wk_tidings_m" id="listContent">
          
          
          
            
          
            
          </div>
        </div>
        <div class="clear"></div>
        <div class="pagess">
        <div id="list_bar" class="pagination" style="margin-top:20px;"></div>
        </div>
        <!--[diy=diycontentbottom]-->
        
        <div id="diycontentbottom" class="area"></div>
        <!--[/diy]--> 
        
      </div>
      <div class="sd pph">
        <div class="wk_c_left_t"> <span class="wk_c_left_t1">????????????</span> <span class="wk_c_left_t2">News</span> </div>
        <div class="wk_c_left_cnt">
          <ul>
           <c:if test="${type==null or type==''}">
              <li class="wk_menu1_cur"><a href="${pageContext.request.contextPath}/commonapi/news" style="color:#90C42F" title="??????" >??????</a></li>
            </c:if>
             <c:if test="${type!=null and type!=''}">
              <li class="wk_menu1_cur"><a href="${pageContext.request.contextPath}/commonapi/news"  title="??????" >??????</a></li>
            </c:if>
            <c:forEach var="item" items="${nl}">
              <c:if test="${type==item.id}">
              <li class="wk_menu1_cur"><a href="${pageContext.request.contextPath}/commonapi/news?type=${item.id}" style="color:#90C42F" title="${item.typeName}" >${item.typeName}</a></li>
            </c:if>
             <c:if test="${type!=item.id}">
              <li class="wk_menu1_cur"><a href="${pageContext.request.contextPath}/commonapi/news?type=${item.id}" title="${item.typeName}" >${item.typeName}</a></li>
            </c:if>
            </c:forEach>
            
          </ul>
        </div>
        <div class="clear"></div>
        
        <!--[diy=wk_zcyl1]-->
        <div id="wk_zcyl1" class="area"></div>
        <!--[/diy]-->
        
        <div class="clear"></div>
        <div class="wk_c_left_cont"> <span class="wk_c_left_cont1">????????????</span><span class="wk_c_left_cont2">Contact</span> </div>

<div class="wk_left_contdiv"> 
    <span><strong>??? ??????</strong>${setting.companyAddress}</span> 
    <span><strong>???????????????</strong>${setting.companyName}</span> 
    <span><strong>???????????????</strong>${setting.sqTel}</span> 
    <span><strong>???????????????</strong>${setting.shTel}</span> 
    <span><strong>??????Q Q???</strong>${setting.qqVal}</span> 
    <span><strong>??? ??????</strong><a href="mailto:${setting.email}">${setting.email}</a></span> 
</div>

        <div class="clear"></div>
        
        <!--[diy=wk_zcyl2]-->
        <div id="wk_zcyl2" class="area"></div>
        <!--[/diy]-->
        
        <div class="clear"></div>
      </div>
    </div>
  </div>
  <div class="wp mtn"> 
    
    <!--[diy=diy3]-->
    <div id="diy3" class="area"></div>
    <!--[/diy]--> 
    
  </div>
</div>

<div id="wk_ft">
  <div class="section fp-auto-height">
    <div class="wk_footer_side">
     <div class="wk_footer"> Copyright ??2020 ${setting.companyName} ????????????  <a title="baidu" href="#" target="_blank">???????????????</a> ????????????<a href="http://www.miitbeian.gov.cn/" target="_blank" title="${setting.beianNo}">${setting.beianNo}</a> <br />
        ???????????????
         <c:forEach var="item" items="${ll}">
      <a href='${item.linkUrl}' target='_blank'>${item.linkName}</a>
      </c:forEach>
        </div>
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
         
       <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/page/myPagination.js"></script>
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
ajaxList(1);

});

// $(function(){
	
	  
// })
                                            
                                            function ajaxList(page) {
                                                
                                                
                                                    $.ajax({
                                                        type : 'get',
                                                        url : "${pageContext.request.contextPath}/commonapi/news/search",
                                                            data : {
                                                                "page":page,
                                                                "type":'${type}'
                                                                
                                                            },
                                                            success : function(result) {
                                                                var rows = result.data;//???????????????
                                                                var total = result.count;//??????????????????
                                                                lastPage=result.totalPage;
                                                                totalCount=total;
                                                                var html = '';
                                                                for (var i = 0; i < rows.length; i++) {
                                                                
                                                                	html+='<div class="wk_tidings_main">';
                                                                	html+='<div class="wk_tidings_img"> <a href="${pageContext.request.contextPath}/commonapi/news/detail?id='+rows[i].id+'" target="_blank" title="'+rows[i].title+'"><img src="'+rows[i].newsImg+'" alt="'+rows[i].title+'"/></a> </div>';
                                                                	html+='<div class="wk_tidings_main_name"> <span class="wk_tidings_main_name2"><a href="${pageContext.request.contextPath}/commonapi/news/detail?id='+rows[i].id+'" target="_blank" title="'+rows[i].title+'">'+rows[i].title+'</a></span> </div>';
                                                                	html+='<div class="wk_tidings_main_cnt"> <span class="wk_tidings_main_cnt2">'+rows[i].publishDate+'</span> </div>';
                                                                	html+='<div class="wk_tidings_main_more"><a target="_blank" title="more" href="${pageContext.request.contextPath}/commonapi/news/detail?id='+rows[i].id+'">more>></a> </div>';
                                                                	html+='</div>';
                                                                	
                                                                }
                                                                 if (rows.length == 0) {
                                                                      html += '<p style="text-align:center;color:gray">????????????</p>';
                                                                 }
                                                                        $("#listContent").html(html);
                                                                        
                                                                        
                                                                        new myPagination({
                                                                            id: 'list_bar',
                                                                            curPage:page, //????????????
                                                                            pageTotal: result.totalPage, //?????????
                                                                            pageAmount: 10,  //???????????????
                                                                            dataTotal: total, //?????????????????????
                                                                            pageSize: 5, //??????,????????????
                                                                            showPageTotalFlag:true, //????????????????????????
                                                                            showSkipInputFlag:false, //??????????????????
                                                                            getPage: function (page) {
                                                                                ajaxList(page);
                                                                            }
                                                                        })
                                                                        
                                                                    }
                                                                });
                                                            }

</script> 
<script src="${pageContext.request.contextPath}/static/index/style/js/home.js" type="text/javascript"></script>
<div id="scrolltop"> <span hidefocus="true"><a title="????????????" onclick="window.scrollTo('0','0')" class="scrolltopa" ><b>????????????</b></a></span> </div>
<script type="text/javascript">_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</script>
<div id="discuz_tips" style="display:none;"></div>
<script src="${pageContext.request.contextPath}/static/index/style/js/discuz_tips.js" type="text/javascript" charset="UTF-8"></script>
</body>
</html>
