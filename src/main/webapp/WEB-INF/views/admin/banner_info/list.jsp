<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="uri" value="${pageContext.request.contextPath}" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>幻灯片</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/layui/css/layui.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/css/global.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/icheck/minimal/red.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/common/page/myPagination.css?t=4" />
                    
                    </head>
                    <body class="layui-layout-body" style="overflow:scroll;">
                    <style type="text/css">
                    .btnStyle{
                        margin-left:8px;
                        margin-top:8px
                    }
                    .loadingModel {
                        position: absolute;
                        top: 0;
                        left: 0;
                        background-color: rgba(9, 9, 9, 0.63);
                        width: 100%;
                        height: 100%;
                        z-index: 1000;
                    }
                    
                    
                    .loading-content {
                        width: 50%;
                        text-align: center;
                        background: #ffffff;
                        border-radius: 6px;
                        line-height: 30px;
                        z-index: 10001;
                    }
                    </style>
                    <div id="loadingDiv"></div>
                    <div id="imgModal"></div>
                    <fieldset class="layui-elem-field">
                    <legend>幻灯片</legend>
                    <div class="layui-field-box">
                    <div>
                    <div class="layui-form-item" style="text-align:center;">
                    
                    </div>
                    </div>
                    
                    <hr>
                    <div class="layui-form-item">
                    
                    <span id="batchUpdateDiv">
                    
                    </span>
                    <span class="l" id="globalBtns">
                    <a href="${pageContext.request.contextPath}/admin/banner_info/add" class="layui-btn layui-btn-radius">新增</a>
                        
                        </span>
                        </div>
                        <hr>
                        <table class="layui-table">
                        
                        <thead>
                        <tr  style="text-align:center">
                        <th>底层幻灯片</th>
                        <th>文字幻灯片</th>
                        <th>边框幻灯片</th>
                        <th>幻灯片名</th>
                        <th style="width:200px;">操作</th>
                        
                        </tr>
                        </thead>
                        <tbody id="banner_info_body">
                        
                        </tbody>
                        </table>
                        
                        <div id="banner_info_bar" class="pagination" style="margin-top:20px;">
                        </div>
                        </div>
                        </fieldset>
                        
                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-1.11.1.min.js"></script>
                            <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/page/myPagination.js"></script>
                                
                                <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layui/layui.js"></script>
                                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layuiutil.js"></script>
                                        
                                        
                                        
                                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/utils/listutils.js?v=1832"></script>
                                            
                                            
                                            
                                            <script type="text/javascript">
                                            
                                            $(function(){
                                                
                                                ajaxList(1);
                                                
                                                
                                            });
                                            
                                            function ajaxList(page) {
                                                
                                                
                                                showLoading('${pageContext.request.contextPath}/static/common/loading.gif');
                                                    $.ajax({
                                                        type : 'get',
                                                        url : "${pageContext.request.contextPath}/admin/banner_info/queryList",
                                                            data : {
                                                                
                                                                "page":page
                                                                
                                                            },
                                                            success : function(result) {
                                                                hideLoading();
                                                                var rows = result.list;//得到数据列
                                                                var total = result.count;//得到数据总数
                                                                lastPage=result.totalPage;
                                                                totalCount=total;
                                                                var html = '';
                                                                for (var i = 0; i < rows.length; i++) {
                                                                    html += '<tr>' ;
                                                                    var bannerImg1Str = rows[i].bannerInfo.bannerImg1;
                                                                    if(bannerImg1Str!=null){
                                                                        var bannerImg1Split = bannerImg1Str.split(";");
                                                                        var tmp = '';
                                                                        for(var j=0;j<bannerImg1Split.length;j++){
                                                                            if(bannerImg1Split[j]!=''){
                                                                                tmp+='<div style="display:inline"><img src="'+bannerImg1Split[j]+'" style="width:100px" onclick="maxImg(this)"></div>';
                                                                            }
                                                                        }
                                                                        html+='<td>'+tmp+'</td>';
                                                                        }else{
                                                                            html+='<td></td>';
                                                                        }
                                                                        var bannerImg2Str = rows[i].bannerInfo.bannerImg2;
                                                                        if(bannerImg2Str!=null){
                                                                            var bannerImg2Split = bannerImg2Str.split(";");
                                                                            var tmp = '';
                                                                            for(var j=0;j<bannerImg2Split.length;j++){
                                                                                if(bannerImg2Split[j]!=''){
                                                                                    tmp+='<div style="display:inline"><img src="'+bannerImg2Split[j]+'" style="width:100px" onclick="maxImg(this)"></div>';
                                                                                }
                                                                            }
                                                                            html+='<td>'+tmp+'</td>';
                                                                            }else{
                                                                                html+='<td></td>';
                                                                            }
                                                                            var bannerImg3Str = rows[i].bannerInfo.bannerImg3;
                                                                            if(bannerImg3Str!=null){
                                                                                var bannerImg3Split = bannerImg3Str.split(";");
                                                                                var tmp = '';
                                                                                for(var j=0;j<bannerImg3Split.length;j++){
                                                                                    if(bannerImg3Split[j]!=''){
                                                                                        tmp+='<div style="display:inline"><img src="'+bannerImg3Split[j]+'" style="width:100px" onclick="maxImg(this)"></div>';
                                                                                    }
                                                                                }
                                                                                html+='<td>'+tmp+'</td>';
                                                                                }else{
                                                                                    html+='<td></td>';
                                                                                }
                                                                                var bannerTxtVal=setNullToEmpty(rows[i].bannerInfo.bannerTxt);
                                                                                html+='<td>'+ bannerTxtVal+'</td>';
                                                                                html+='<td>';
                                                                                html+='<a href="${pageContext.request.contextPath}/admin/banner_info/update?id='+rows[i].bannerInfo.id+'" class="layui-btn layui-btn-normal layui-btn-radius btnStyle">修改</a>';
                                                                                    html+='<a href="javascript:void(0)" onclick="del(this)" data-id="'+rows[i].bannerInfo.id+'" class="layui-btn layui-btn-danger layui-btn-radius btnStyle">删除</a>';
                                                                                    html+='</td>';
                                                                                    html+='</tr>';
                                                                                }
                                                                                if (rows.length == 0) {
                                                                                    html += '<tr><td></td><td></td><td>无数据</td><td></td><td></td></tr>';
                                                                                }
                                                                                $("#banner_info_body").html(html);
                                                                                
                                                                                
                                                                                new myPagination({
                                                                                    id: 'banner_info_bar',
                                                                                    curPage:page, //初始页码
                                                                                    pageTotal: result.totalPage, //总页数
                                                                                    pageAmount: 10,  //每页多少条
                                                                                    dataTotal: total, //总共多少条数据
                                                                                    pageSize: 5, //可选,分页个数
                                                                                    showPageTotalFlag:true, //是否显示数据统计
                                                                                    showSkipInputFlag:false, //是否支持跳转
                                                                                    getPage: function (page) {
                                                                                        ajaxList(page);
                                                                                    }
                                                                                })
                                                                                
                                                                            }
                                                                        });
                                                                    }
                                                                    
                                                                    function del(e){
                                                                        if(window.confirm('你确定要删除该幻灯片吗')){
                                                                            var id = $(e).attr("data-id");
                                                                            $.ajax({
                                                                                type : 'get',
                                                                                url : "${pageContext.request.contextPath}/admin/banner_info/del",
                                                                                    data : {
                                                                                        "id":id
                                                                                    },
                                                                                    success : function(result) {
                                                                                        alert(result.msg);
                                                                                        if(result.code==1){
                                                                                            ajaxList(1);
                                                                                        }
                                                                                    }
                                                                                });
                                                                                return true;
                                                                                }else{
                                                                                    return false;
                                                                                }
                                                                            }
                                                                            
                                                                            
                                                                            function gotoPage(e){
                                                                                
                                                                                var url = $(e).attr("data-url");
                                                                                window.location.href=url;
                                                                            }
                                                                            
                                                                            </script>
                                                                            
                                                                            </body>
                                                                            </html>
