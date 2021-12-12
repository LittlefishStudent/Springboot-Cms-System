<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="uri" value="${pageContext.request.contextPath}" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>系统设置</title>
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
                    <legend>系统设置</legend>
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
                    
                    </span>
                    </div>
                    <hr>
                    <table class="layui-table">
                    
                    <thead>
                    <tr  style="text-align:center">
                    <th>系统标题</th>
                    <th>系统描述</th>
                    <th>公司名</th>
                    <th>公司地址</th>
                    <th>经度</th>
                    <th>纬度</th>
                    <th>微信二维码</th>
                    <th>售前电话</th>
                    <th>售后热线</th>
                    <th>联系电话</th>
                    <th>联系QQ</th>
                    <th>联系邮箱</th>
                    <th>备案号</th>
                    <th style="width:200px;">操作</th>
                    
                    </tr>
                    </thead>
                    <tbody id="sys_setting_body">
                    
                    </tbody>
                    </table>
                    
                    <div id="sys_setting_bar" class="pagination" style="margin-top:20px;">
                    </div>
                    </div>
                    </fieldset>
                    
                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-1.11.1.min.js"></script>
                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/page/myPagination.js"></script>
                            
                            <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layui/layui.js"></script>
                                <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layuiutil.js"></script>
                                    
                                    
                                    
                                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/utils/listutils.js?v=3606"></script>
                                        
                                        
                                        
                                        <script type="text/javascript">
                                        
                                        $(function(){
                                            
                                            ajaxList(1);
                                            
                                            
                                        });
                                        
                                        function ajaxList(page) {
                                            
                                            
                                            showLoading('${pageContext.request.contextPath}/static/common/loading.gif');
                                                $.ajax({
                                                    type : 'get',
                                                    url : "${pageContext.request.contextPath}/admin/sys_setting/queryList",
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
                                                                var sysTitleVal=setNullToEmpty(rows[i].sysSetting.sysTitle);
                                                                html+='<td>'+ sysTitleVal+'</td>';
                                                                var sysIntroVal=setNullToEmpty(rows[i].sysSetting.sysIntro);
                                                                html+='<td>'+ sysIntroVal+'</td>';
                                                                var companyNameVal=setNullToEmpty(rows[i].sysSetting.companyName);
                                                                html+='<td>'+ companyNameVal+'</td>';
                                                                var companyAddressVal=setNullToEmpty(rows[i].sysSetting.companyAddress);
                                                                html+='<td>'+ companyAddressVal+'</td>';
                                                                var companyLatVal=setNullToEmpty(rows[i].sysSetting.companyLat);
                                                                html+='<td>'+ companyLatVal+'</td>';
                                                                var companyLngVal=setNullToEmpty(rows[i].sysSetting.companyLng);
                                                                html+='<td>'+ companyLngVal+'</td>';
                                                                var wetchatImgStr = rows[i].sysSetting.wetchatImg;
                                                                if(wetchatImgStr!=null){
                                                                    var wetchatImgSplit = wetchatImgStr.split(";");
                                                                    var tmp = '';
                                                                    for(var j=0;j<wetchatImgSplit.length;j++){
                                                                        if(wetchatImgSplit[j]!=''){
                                                                            tmp+='<div style="display:inline"><img src="'+wetchatImgSplit[j]+'" style="width:100px" onclick="maxImg(this)"></div>';
                                                                        }
                                                                    }
                                                                    html+='<td>'+tmp+'</td>';
                                                                    }else{
                                                                        html+='<td></td>';
                                                                    }
                                                                    var sqTelVal=setNullToEmpty(rows[i].sysSetting.sqTel);
                                                                    html+='<td>'+ sqTelVal+'</td>';
                                                                    var shTelVal=setNullToEmpty(rows[i].sysSetting.shTel);
                                                                    html+='<td>'+ shTelVal+'</td>';
                                                                    var contactTelVal=setNullToEmpty(rows[i].sysSetting.contactTel);
                                                                    html+='<td>'+ contactTelVal+'</td>';
                                                                    var qqValVal=setNullToEmpty(rows[i].sysSetting.qqVal);
                                                                    html+='<td>'+ qqValVal+'</td>';
                                                                    var emailVal=setNullToEmpty(rows[i].sysSetting.email);
                                                                    html+='<td>'+ emailVal+'</td>';
                                                                    var beianNoVal=setNullToEmpty(rows[i].sysSetting.beianNo);
                                                                    html+='<td>'+ beianNoVal+'</td>';
                                                                    html+='<td>';
                                                                    html+='<a href="${pageContext.request.contextPath}/admin/sys_setting/update?id='+rows[i].sysSetting.id+'" class="layui-btn layui-btn-normal layui-btn-radius btnStyle">修改</a>';
                                                                        html+='</td>';
                                                                        html+='</tr>';
                                                                    }
                                                                    if (rows.length == 0) {
                                                                        html += '<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>无数据</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>';
                                                                    }
                                                                    $("#sys_setting_body").html(html);
                                                                    
                                                                    
                                                                    new myPagination({
                                                                        id: 'sys_setting_bar',
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
                                                        
                                                        
                                                        
                                                        function gotoPage(e){
                                                            
                                                            var url = $(e).attr("data-url");
                                                            window.location.href=url;
                                                        }
                                                        
                                                        </script>
                                                        
                                                        </body>
                                                        </html>
