<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="uri" value="${pageContext.request.contextPath}" />
    
    <script type="text/javascript">
    var uri='${uri}';
        </script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>修改-系统设置</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/layui/css/layui.css">
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/common/webupload/webuploader.css">
                
                <style type="text/css">
                
                .loadingModel {
                    position: absolute;
                    top: 0;
                    left: 0;
                    display: none;
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
                </head>
                <div id="loadingDiv"></div>
                <div id="imgModal"></div>
                <div class="layui-container" style="overflow:hidden;min-height:850px">
                <div class="layui-row">
                <div class="layui-col-lg12">
                <fieldset class="layui-elem-field">
                <legend>修改-系统设置</legend>
                <div class="layui-field-box">
                <div >
                
                
                <div class="layui-form-item layui-form-text" id="sysTitleParentContent">
                <label class="layui-form-label">系统标题</label>
                <div class="layui-input-block">
                <input type="text"  style="display:inline;width:500px;" value="${data.sysTitle}" placeholder="请输入系统标题" id="sysTitle" class="layui-input">	<span style="color:red">*必填</span>
                    
                    </div>
                    </div>
                    
                    <div class="layui-form-item layui-form-text" id="sysIntroParentContent">
                    <label class="layui-form-label">系统描述</label>
                    <div class="layui-input-block">
                    <textarea  placeholder="请输入系统描述"  id="sysIntro"  rows="15" cols="100">${data.sysIntro}</textarea>	<span style="color:red">*必填</span>
                        
                        </div>
                        </div>
                        
                        <div class="layui-form-item layui-form-text" id="companyNameParentContent">
                        <label class="layui-form-label">公司名</label>
                        <div class="layui-input-block">
                        <input type="text"  style="display:inline;width:500px;" value="${data.companyName}" placeholder="请输入公司名" id="companyName" class="layui-input">	<span style="color:red">*必填</span>
                            
                            </div>
                            </div>
                            
                            <div class="layui-form-item layui-form-text" id="companyAddressParentContent">
                            <label class="layui-form-label">公司地址</label>
                            <div class="layui-input-block">
                            <input type="text"  style="display:inline;width:500px;" value="${data.companyAddress}" placeholder="请输入公司地址" id="companyAddress" class="layui-input">	<span style="color:red">*必填</span>
                                
                                </div>
                                </div>
                                
                                <div class="layui-form-item layui-form-text" id="companyLatParentContent">
                                <label class="layui-form-label">经度</label>
                                <div class="layui-input-block">
                                <input type="text"  style="display:inline;width:500px;" value="${data.companyLat}" placeholder="请输入经度" id="companyLat" class="layui-input">	<span style="color:red">*必填</span>
                                    
                                    </div>
                                    </div>
                                    
                                    <div class="layui-form-item layui-form-text" id="companyLngParentContent">
                                    <label class="layui-form-label">纬度</label>
                                    <div class="layui-input-block">
                                    <input type="text"  style="display:inline;width:500px;" value="${data.companyLng}" placeholder="请输入纬度" id="companyLng" class="layui-input">	<span style="color:red">*必填</span>
                                        
                                        </div>
                                        </div>
                                        
                                        <div class="layui-form-item layui-form-text" id="wetchatImgParentContent">
                                        <label class="layui-form-label">微信二维码</label>
                                        <div class="layui-input-block">
                                        <div class="imgUpload" tip="请上传微信二维码，数量不超过1" red-tip="(*必填)"   upload-num="1" init-val="${data.wetchatImg}" upload-type="1" id="wetchatImg"></div>
                                            
                                            </div>
                                            </div>
                                            
                                            <div class="layui-form-item layui-form-text" id="sqTelParentContent">
                                            <label class="layui-form-label">售前电话</label>
                                            <div class="layui-input-block">
                                            <input type="text"  style="display:inline;width:500px;" value="${data.sqTel}" placeholder="请输入售前电话" id="sqTel" class="layui-input">	<span style="color:red">*必填</span>
                                                
                                                </div>
                                                </div>
                                                
                                                <div class="layui-form-item layui-form-text" id="shTelParentContent">
                                                <label class="layui-form-label">售后热线</label>
                                                <div class="layui-input-block">
                                                <input type="text"  style="display:inline;width:500px;" value="${data.shTel}" placeholder="请输入售后热线" id="shTel" class="layui-input">	<span style="color:red">*必填</span>
                                                    
                                                    </div>
                                                    </div>
                                                    
                                                    <div class="layui-form-item layui-form-text" id="contactTelParentContent">
                                                    <label class="layui-form-label">联系电话</label>
                                                    <div class="layui-input-block">
                                                    <input type="text"  style="display:inline;width:500px;" value="${data.contactTel}" placeholder="请输入联系电话" id="contactTel" class="layui-input">	<span style="color:red">*必填</span>
                                                        
                                                        </div>
                                                        </div>
                                                        
                                                        <div class="layui-form-item layui-form-text" id="qqValParentContent">
                                                        <label class="layui-form-label">联系QQ</label>
                                                        <div class="layui-input-block">
                                                        <input type="text"  style="display:inline;width:500px;" value="${data.qqVal}" placeholder="请输入联系QQ" id="qqVal" class="layui-input">	<span style="color:red">*必填</span>
                                                            
                                                            </div>
                                                            </div>
                                                            
                                                            <div class="layui-form-item layui-form-text" id="emailParentContent">
                                                            <label class="layui-form-label">联系邮箱</label>
                                                            <div class="layui-input-block">
                                                            <input type="text"  style="display:inline;width:500px;" value="${data.email}" placeholder="请输入联系邮箱" id="email" class="layui-input">	<span style="color:red">*必填</span>
                                                                
                                                                </div>
                                                                </div>
                                                                
                                                                <div class="layui-form-item layui-form-text" id="beianNoParentContent">
                                                                <label class="layui-form-label">备案号</label>
                                                                <div class="layui-input-block">
                                                                <input type="text"  style="display:inline;width:500px;" value="${data.beianNo}" placeholder="请输入备案号" id="beianNo" class="layui-input">	<span style="color:red">*必填</span>
                                                                    
                                                                    </div>
                                                                    </div>
                                                                    
                                                                    <div class="layui-form-item">
                                                                    <div class="layui-input-block">
                                                                    <button class="layui-btn" onclick="submitData();" >立即提交</button>
                                                                    <button  class="layui-btn layui-btn-primary"  onclick="javascript:history.back(-1);" >返回</button>
                                                                    </div>
                                                                    </div>
                                                                    <div style="height:200px"></div>
                                                                    </div>
                                                                    </div>
                                                                    </fieldset>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-1.11.1.min.js"></script>
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layui/layui.js"></script>
                                                                            <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/utils/listutils.js?v=2456"></script>
                                                                                <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/webupload/webuploader.js"></script>
                                                                                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/webupload/upload.js"></script>
                                                                                        
                                                                                        
                                                                                        
                                                                                        <script type="text/javascript">
                                                                                        
                                                                                        
                                                                                        
                                                                                        $(function(){
                                                                                            
                                                                                            createFileUpload('${pageContext.request.contextPath}');
                                                                                                
                                                                                                
                                                                                            })
                                                                                            
                                                                                            
                                                                                            
                                                                                            function submitData(){
                                                                                                var sysTitle= $('#sysTitle').val();
                                                                                                var sysIntro= $('#sysIntro').val();
                                                                                                var companyName= $('#companyName').val();
                                                                                                var companyAddress= $('#companyAddress').val();
                                                                                                var companyLat= $('#companyLat').val();
                                                                                                var companyLng= $('#companyLng').val();
                                                                                                var wetchatImg=getUploadFileStr('wetchatImg');
                                                                                                var sqTel= $('#sqTel').val();
                                                                                                var shTel= $('#shTel').val();
                                                                                                var contactTel= $('#contactTel').val();
                                                                                                var qqVal= $('#qqVal').val();
                                                                                                var email= $('#email').val();
                                                                                                var beianNo= $('#beianNo').val();
                                                                                                
                                                                                                $.ajax({
                                                                                                    type: 'post',
                                                                                                    url: '${pageContext.request.contextPath}/admin/sys_setting/update_submit',
                                                                                                        data:{
                                                                                                            "id":'${data.id}',
                                                                                                                
                                                                                                                "sysTitle":sysTitle,
                                                                                                                "sysIntro":sysIntro,
                                                                                                                "companyName":companyName,
                                                                                                                "companyAddress":companyAddress,
                                                                                                                "companyLat":companyLat,
                                                                                                                "companyLng":companyLng,
                                                                                                                "wetchatImg":wetchatImg,
                                                                                                                "sqTel":sqTel,
                                                                                                                "shTel":shTel,
                                                                                                                "contactTel":contactTel,
                                                                                                                "qqVal":qqVal,
                                                                                                                "email":email,
                                                                                                                "beianNo":beianNo
                                                                                                            },
                                                                                                            success: function(result) {
                                                                                                                if(result.code == 0){
                                                                                                                    alert(result.msg);
                                                                                                                    }else{
                                                                                                                        alert(result.msg);
                                                                                                                        self.location=document.referrer;
                                                                                                                    }
                                                                                                                }
                                                                                                            });
                                                                                                        }
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        </script>
                                                                                                        </body>
                                                                                                        </html>
