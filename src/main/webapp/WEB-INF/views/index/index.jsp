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
<meta name="author" content="order by" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_portal_index.css" />
<script src="${pageContext.request.contextPath}/static/index/style/js/jquery-1.7.2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/common.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/pace.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/static/index/style/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body id="nv_portal" class="pg_index">
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
            <li><a href="${pageContext.request.contextPath}/" style="color:#90C42F">网站首页</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/about" >关于我们</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/news" >新闻资讯</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/product" >项目案例</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/question" >常见问题</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/contact" >联系我们</a></li>
            
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
<script src="${pageContext.request.contextPath}/static/index/style/js/jquery-1.7.2.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/static/index/style/js/jquery.fullpage.min.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/static/index/style/js/scoll.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/static/index/style/js/addons.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/static/index/style/js/case.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/static/index/style/js/tab.lib.js" type="text/javascript"></script> 
<script type="text/javascript">

PTM(document).ready(function(){

PTM(".wk_about").tab({

tabId:"#wk_about_menu",tabTag:"a",conId:"#wk_about_div",conTag:"div.wk_aaa",act:"mouseover",effact: "scrollx",dft:0

});

});

</script> 
</div>
<div class="clear"></div>
<div class="wk_index_main"> 
  <!--简单的全屏页面滑动条代码,section page1,2,3,4-->
  <!--page1-->
   <div class="section page1">
    <div class="wk_slide-wrap">
      <ul>
        <li id="wk_s1" class="wk_selected">
          <div class="wk_banner"></div>
          <div class="wk_wrap">
            <div class="wk_banner13"><img src="${pageContext.request.contextPath}/static/index/style/images/banner13.png" alt="" /></div>
            <div class="wk_banner12"><img src="${pageContext.request.contextPath}/static/index/style/images/banner12.png" alt="" /></div>
            <div class="wk_banner14"><img src="${pageContext.request.contextPath}/static/index/style/images/banner14.png" alt="" /></div>

          </div>
        </li>
        <li id="wk_s2">
          <div class="wk_banner"></div>
          <div class="wk_wrap">
            <div class="wk_banner22"><img src="${pageContext.request.contextPath}/static/index/style/images/banner22.png" alt="" /></div>
            <div class="wk_banner23"><img src="${pageContext.request.contextPath}/static/index/style/images/banner23.png" alt="" /></div>
            <div class="wk_banner24"><a href="#" target="_blank">了解更多</a></div>
          </div>
        </li>
        <li id="wk_s3">
          <div class="wk_banner"></div>
          <div class="wk_wrap">
            <div class="wk_banner32"><img src="${pageContext.request.contextPath}/static/index/style/images/banner32.png" alt="" /></div>
            <div class="wk_banner33"><img src="${pageContext.request.contextPath}/static/index/style/images/banner33.png" alt="" /></div>
          </div>
        </li>
      </ul>
    </div>
    <div class="wk_arrow"><a href="#service"><img src="${pageContext.request.contextPath}/static/index/style/images/ico3.png" /></a></div>
    <div class="wk_slide-nav-wrap">
      <div id="wk_slide-nav">
        <ul>
          <li class="wk_nav-line"></li>
          <li class="wk_nav-bullet-container active" data-index="0"><a class="nav-link" href="javascript:void(0)">
            <div class="nav-bullet"></div>
            <div class="nav-text">高端定制开发</div>
            </a></li>
          <li class="wk_nav-line"></li>
          <li class="wk_nav-bullet-container" data-index="1"><a class="nav-link" href="javascript:void(0)">
            <div class="nav-bullet"></div>
            <div class="nav-text">互联网整合营销</div>
            </a></li>
          <li class="wk_nav-line"></li>
          <li class="wk_nav-bullet-container" data-index="2"><a class="nav-link" href="javascript:void(0)">
            <div class="nav-bullet"></div>
            <div class="nav-text">响应式网站</div>
            </a></li>
          <li class="wk_nav-line"> </li>
        </ul>
      </div>
    </div>
  </div>
  

 
  
  <!--page2 首页业务介绍模块-->
  
  <div class="section page2">
    <div class="wk_fwxm">
      <ul>
      	<c:set var="count" value="1" />
        <c:forEach var="item" items="${bl2}">
         <li class="wk_li${count}">
          <div class="wk_fwxm_bg"></div>
          <div class="wk_fwxm_main">
            <div class="wk_fwxm_ico"></div>
            <h2>${item.title}</h2>
            <p>${item.subTitle}</p>
            <div class="wk_fwxm_des">${item.bussinessDetail}</div>
            <div class="wk_ljzx"><a href="#">立即咨询</a></div>
          </div>
        </li>
        	<c:set var="count" value="${count+1}" />
        </c:forEach>

      </ul>
    </div>
  </div>
  
  <!--page3 产品案例前端展示-->
  
  <div class="section page3">
    <div class="case">
      <h2><img src="${pageContext.request.contextPath}/static/index/style/images/case_title.png" alt="" /></h2>
      <h2 class="wk_h2"><img src="${pageContext.request.contextPath}/static/index/style/images/case_title1.png" alt="" /></h2>
      <div class="wk_btndiv"> <a class="abtn aleft" href="javascript:void(0);"></a> <a class="abtn aright" href="javascript:void(0);"></a> </div>
      <div class="wk_scrollcontainer">
        <ul>
        	<li>	
       	<c:set var="count" value="0" />
          <c:forEach var="item" items="${pl}">
          	<c:if test="${count%8==0 and count!=0}">
          	  </li>
          	  <li>	
          	</c:if>
          	
          	 <div class="wk_case_list"> <a href="${pageContext.request.contextPath}/commonapi/product/detail?id=${item.id}" target="_blank" title="Jackery app">
              <div class="wk_case_img"><img src="${item.proImg}" width="275" height="190" alt="Jackery app"/></div>
              <div class="wk_case_ico"></div>
              <div class="wk_case_xian"> <span class="wk_span_1"></span> <span class="wk_span_2">
              </span> <span class="wk_span_3"></span>
               <span class="wk_span_4"></span> </div>
              </a> </div>
          	
          </c:forEach>
          </li>	

        </ul>
        
        <!--首页-案例-内部调用代码设置位置--> 
        
      </div>
    </div>
    <script type="text/javascript">

PTM(function(){

PTM(".case").Xslider({

unitdisplayed:1,

numtoMove:1,

speed:500,

scrollobjSize:Math.ceil(PTM(".uldiv").find("li").length*1)

})

})

</script> 
  </div>
  
  <!--page4-->
  
  <div class="section page4">
    <div class="wk_about">
      <h2><img src="${pageContext.request.contextPath}/static/index/style/images/about_title.png" alt="" /></h2>
      <h2 class="wk_h2"><img src="${pageContext.request.contextPath}/static/index/style/images/about_title1.png" alt=""/></h2>
      <div class="wk_about_menu" id="wk_about_menu"><a class="active">简介</a><a>动态</a><a>历程</a></div>
      <div class="wk_about_div" id="wk_about_div">
        <div class="wk_about_main wk_aaa">
          <div class="wk_about_left"><img src="${pageContext.request.contextPath}/static/index/style/images/about_img.png" alt="" /></div>
          <div class="wk_about_right">
            <div class="wk_about_top"> <a><img src="${pageContext.request.contextPath}/static/index/style/images/about_ico1.png" alt="" /></a> 
            <a><img src="${pageContext.request.contextPath}/static/index/style/images/about_ico2.png" alt="" /></a>
             <a><img src="${pageContext.request.contextPath}/static/index/style/images/about_ico3.png" alt="" /></a>
              <a style="margin-right:0;"><img src="${pageContext.request.contextPath}/static/index/style/images/about_ico4.png" alt="" /></a>
              <div class="clear"></div>
            </div>
            <div class="wk_about_des">
              杭州宁然网络科技有限公司是一家杭州专业的seo优化公司,以领先优化技术实力打造行业品牌流量，是专业致力于杭州seo网站优化、百度关键词优化排名、万词霸屏以及杭州网站建设等服务的杭州网络营销推广优化公司,技术领先的国内智能SEO优化服务商，坚持只做“有用的网站”和“有价值的网络营销”，追求商业策划与数据分析，帮助广大客户顺利对接上历次互联网浪潮，准确优选出符合自己需要的互联网运用，也为无数年轻人创造了职业和事业的成功故事，造就了中国互联网行业大量职业经理人、创业者和品牌领军人物。
            </div>
          </div>
        </div>
        <div class="wk_news_list wk_aaa">
          <ul>
            <li >
              <dl>
                <dt>2020-11-31</dt>
              </dl>
              <h4><a href="newsshow.html" title="杭州网站建设要花多少钱" target="_blank">杭州网站建设要花多少钱</a></h4>
              <div class="wk_news_des">　网站建设其实是互联网未来10年的趋势，因为现在的营销不单单是像以往一样，在线下进行，现在的趋势就是线上的流量远远大于线下的流量，线下租个公交站广告位或...</div>
              <div class="wk_news_more"><a href="/tech_sys/commonapi/news/detail?id=25" title="阅读更多" target="_blank"></a></div>
            </li>
<li >
              <dl>
                <dt>2020-03-31</dt>
              </dl>
              <h4><a href="newsshow.html" title="杭州网站优化要花多少钱？" target="_blank">杭州网站优化要花多少钱？</a></h4>
              <div class="wk_news_des">一个网站上线之后，就会参与进搜索引擎的排名，举个列子，冷库行业的网站搭建好后，会发现同行业的网站有成千上万个，那么这个时候怎么保证用户搜索的时候...</div>
              <div class="wk_news_more"><a href="/tech_sys/commonapi/news/detail?id=26" title="阅读更多" target="_blank"></a></div>
            </li>
<li >
              <dl>
                <dt>2021-03-31</dt>
              </dl>
              <h4><a href="newsshow.html" title="为什么做自己的官网？" target="_blank">为什么做自己的官网？</a></h4>
              <div class="wk_news_des">现在的企业网站有一点类似于每个人的微信二维码，也有点类似于之前的名片，从表面上来看：一个企业的企业网站是可有可无的东西，但是从正规的角度来看...</div>
              <div class="wk_news_more"><a href="/tech_sys/commonapi/news/detail?id=7" title="阅读更多" target="_blank"></a></div>
            </li>
<li >
              <dl>
                <dt>2021-03-31</dt>
              </dl>
              <h4><a href="newsshow.html" title="网站转化率有哪些提升的方法呢？" target="_blank">网站转化率有哪些提升的方法呢？</a></h4>
              <div class="wk_news_des">网站上线之后，要做的就是关键词的优化，那么关键词上首页后，网站有了一定的访问流量，这个时候可能大家会发现通过流量统计数据中看到的访问客流很...</div>
              <div class="wk_news_more"><a href="/tech_sys/commonapi/news/detail?id=31" title="阅读更多" target="_blank"></a></div>
            </li>

          </ul>
          
          <!--首页-新闻动态-内部调用代码设置位置--> 
          
        </div>
        <div class="wk_history wk_aaa">
          <div class="wk_blk_18"> <a class="LeftBotton" onmousedown="ISL_GoUp_1()" onmouseup="ISL_StopUp_1()" onmouseout="ISL_StopUp_1()" href="javascript:void(0);" target="_self"></a>
            <div class="wk_pcont" id="ISL_Cont_11">
              <div class="ScrCont">
                <div id="List1_1">
                  <div id="List1_1">
                    <div class="wk_fzlc_s">
                      <h4>2020年8月</h4>
                      <div class="wk_his_ico"></div>
                      <dl>
                        <dt><img src="${pageContext.request.contextPath}/static/index/style/images/history_img1.jpg"></dt>
                        <dd>2020年8月，二个热爱设计工作的年轻人成立了杭州宁然网络科技有限公司...</dd>
                      </dl>
                    </div>
                    <div class="wk_fzlc_b">
                      <h4>2020年9月</h4>
                      <div class="wk_his_ico"></div>
                      <dl>
                        <dt><img src="${pageContext.request.contextPath}/static/index/style/images/history_img2.jpg"></dt>
                        <dd>经过近两年来不断的创新探索和稳定发展,逐渐积累了丰富的客户资源，至今已服务客户300余家
                          
                          
                          
                          ...</dd>
                      </dl>
                    </div>
                    <div class="wk_fzlc_s">
                      <h4>2020年11月</h4>
                      <div class="wk_his_ico"></div>
                      <dl>
                        <dt><img src="${pageContext.request.contextPath}/static/index/style/images/history_img3.jpg"></dt>
                        <dd>随着人员和客户资源的不断增加，逐步以公司的模式进行运营...</dd>
                      </dl>
                    </div>
                    <div class="wk_fzlc_b">
                      <h4>2020年12月</h4>
                      <div class="wk_his_ico"></div>
                      <dl>
                        <dt><img src="${pageContext.request.contextPath}/static/index/style/images/history_img4.jpg"></dt>
                        <dd>服务客户已超过600余家，公司产品研发力度持续增强，手机网站和PC客户端、移动互联网...</dd>
                      </dl>
                    </div>
                    <div class="wk_fzlc_s">
                      <h4>2021年1月</h4>
                      <div class="wk_his_ico"></div>
                      <dl>
                        <dt><img src="${pageContext.request.contextPath}/static/index/style/images/history_img5.jpg"></dt>
                        <dd>公司更名为技术有限公司，并与众多知名企业进行合作...</dd>
                      </dl>
                    </div>
                    <div class="wk_fzlc_b">
                      <h4>2021年2月</h4>
                      <div class="wk_his_ico"></div>
                      <dl>
                        <dt><img src="${pageContext.request.contextPath}/static/index/style/images/history_img6.jpg"></dt>
                        <dd>与上海某某软件公司合并，打造集网站、APP与软件开发为一体的综合型科技产业公司...</dd>
                      </dl>
                    </div>
                    <div class="wk_fzlc_s">
                      <h4>2021年3月</h4>
                      <div class="wk_his_ico"></div>
                      <dl>
                        <dt><img src="${pageContext.request.contextPath}/static/index/style/images/history_img7.jpg"></dt>
                        <dd>与铭艺影视传媒公司合作，共同为客户提供互联网影视传媒服务...</dd>
                      </dl>
                    </div>
                    <div class="wk_fzlc_b">
                      <h4>2021年4月</h4>
                      <div class="wk_his_ico"></div>
                      <dl>
                        <dt><img src="${pageContext.request.contextPath}/static/index/style/images/history_img8.jpg"></dt>
                        <dd>致力于互联网+服务，打造品牌设计建设与网络推广营销综合服务新模式，更好的为客户提供全方位的互联网服务...</dd>
                      </dl>
                    </div>
                  </div>
                  
                  <!--首页-发展历程-内部调用代码设置位置--> 
                  
                </div>
                <div id="List2_1"></div>
              </div>
            </div>
            <a class="RightBotton" onmousedown="ISL_GoDown_1()" onmouseup="ISL_StopDown_1()" onmouseout="ISL_StopDown_1()" href="javascript:void(0);" target="_self"></a> </div>
          <div class="c"></div>
        </div>
      </div>
    </div>
  </div>
  
  <!--page5-->
  
  <div class="section page5">
    <div class="wk_service">
      <h2><img src="${pageContext.request.contextPath}/static/index/style/images/service_title.png" alt="" /></h2>
      <h2 class="wk_h2"><img src="${pageContext.request.contextPath}/static/index/style/images/service_title1.png" alt="" /></h2>
      <div class="wk_service_xian"></div>
      <div class="wk_service_main">
        <ul>
        <c:forEach var="item" items="${cl}">
          <li><a href="${item.customerUrl}" target="_blank"> <img src="${item.customerImg}" alt="" /> <span class="wk_span_1"></span> <span class="wk_span_2"></span> <span class="wk_span_3"></span> <span class="wk_span_4"></span> </a></li>
        </c:forEach>
        
        </ul>
        
        <!--首页-合作客户-内部调用代码设置位置--> 
        
      </div>
    </div>
  </div>
  
  <!--page6-->
  
  <div class="section page6">
    <div class="wk_contact">
      <div class="wk_contact_left"><img src="${pageContext.request.contextPath}/static/index/style/images/contact_img.png" alt="" /></div>
      <div class="wk_contact_left1"><img src="${pageContext.request.contextPath}/static/index/style/images/contact_img1.png" alt="" /></div>
      <div class="wk_contact_right">
        <h2><img src="style/images/contact_title.png" alt="" /></h2>
        <ul class="wk_cont_div">
          <li class="wk_serve-ico-kf">业务咨询：<span class="wk_cont_a"><img src="${pageContext.request.contextPath}/static/index/style/images/cont_a.png" /></span><a href="http://wpa.qq.com/msgrd?v=3&uin=${setting.qqVal}&site=qq&menu=yes" target="_blank">${setting.qqVal} 【点击咨询】</a></li>
          <li class="wk_serve-ico-kf">技术服务：<span class="wk_cont_a"><img src="${pageContext.request.contextPath}/static/index/style/images/cont_a.png" /></span><a href="http://wpa.qq.com/msgrd?v=3&uin=${setting.qqVal}&site=qq&menu=yes" target="_blank">${setting.qqVal} 【点击咨询】</a></li>
          <li><span class="wk_cont_c"></span>${setting.email}</li>
          <li><span class="wk_cont_d"></span>${setting.companyName}</li>
        </ul>
      </div>
    </div>
  </div>
  
  <!--index_footer 友情链接模块-->
  
  <div class="section fp-auto-height">
  <div class="wk_footer_side">
    <div class="wk_footer"> Copyright ©2020 ${setting.companyName} 版权所有  <a title="baidu" href="#" target="_blank">技术支持：</a> 备案号：<a href="http://www.miitbeian.gov.cn/" target="_blank" title="${setting.beianNo}">${setting.beianNo}</a> <br />
      友情链接：
      <c:forEach var="item" items="${ll}">
      <a href='${item.linkUrl}' target='_blank'>${item.linkName}</a>
      </c:forEach>
      
           </div>
  </div>
</div>

</div>
<script src="${pageContext.request.contextPath}/static/index/style/js/banner.js" type="text/javascript"></script>
<div class="clear"></div>
<div class="wp"><!--[diy=diy1]-->
  
  <div id="diy1" class="area"></div>
  
  <!--[/diy]--></div>
<div class="clear"></div>
<div id="wp" class="wp"> </div>
<div id="wk_ft" style="display:none; ">
  <div id="ft" class="wp cl" style="border:0;"> </div>
</div>
<ul id="scbar_type_menu" class="p_pop" style="display: none;">
</ul>

<link href="${pageContext.request.contextPath}/static/index/style/css/service.css" rel="stylesheet" type="text/css" />
<div class="main-im">
  <div id="open_im" class="open-im"> </div>
  <div class="im_main" id="im_main">
    <div id="close_im" class="close-im"><a href="javascript:void(0);" title="点击关闭"> </a></div>
    <a href="http://wpa.qq.com/msgrd?v=3&uin=${setting.qqVal}&site=qq&menu=yes" target="_blank" class="im-qq qq-a" title="在线QQ客服">
    <div class="qq-container"></div>
    <div class="qq-hover-c"><img class="img-qq" src="${pageContext.request.contextPath}/static/index/style/images/qq.png"></div>
    <span>QQ在线咨询</span> </a>
    <div class="im-tel">
      <dt>售前咨询热线</dt>
      <dt class="tel-num">${setting.sqTel}</dt>
      <dt>售后服务热线</dt>
      <dt class="tel-num">${setting.shTel}</dt>
    </div>
    <div class="im-footer" style="position:relative">
      <div class="weixing-container">
        <div class="weixing-show">
          <div class="weixing-txt">微信扫一扫<br>
            关注我们<br>
            获取更多精彩风格</div>
          <img class="weixing-ma" src="${setting.wetchatImg}">
          <div class="weixing-sanjiao"></div>
          <div class="weixing-sanjiao-big"></div>
        </div>
      </div>
      <div class="go-top"><a href="#" title="返回顶部"></a> </div>
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
<script src="${pageContext.request.contextPath}/static/index/style/js/home.js" type="text/javascript"></script>
<div id="scrolltop"> <span hidefocus="true"><a title="返回顶部" onclick="window.scrollTo('0','0')" class="scrolltopa" ><b>返回顶部</b></a></span> </div>
<script type="text/javascript">_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</script>
<div id="discuz_tips" style="display:none;"></div>
<script src="${pageContext.request.contextPath}/static/index/style/js/discuz_tips.js" type="text/javascript" charset="UTF-8"></script>
</body>
</html>
