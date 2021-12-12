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
        <title>新增-新闻</title>
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
                <legend>新增-新闻</legend>
                <div class="layui-field-box">
                <div >
                
                
                <div class="layui-form-item layui-form-text" id="titleParentContent">
                <label class="layui-form-label">标题</label>
                <div class="layui-input-block">
                <input type="text"  style="display:inline;width:500px;"  placeholder="请输入标题" id="title" class="layui-input">	<span style="color:red">*必填</span>
                
                </div>
                </div>
                
                <div class="layui-form-item layui-form-text" id="newsTypeIdParentContent">
                <label class="layui-form-label">新闻类型</label>
                <div class="layui-input-block">
                <select  id="newsTypeId" style="display:inline;height:30px;width:500px;" >
                <c:forEach items="${newsTypeInfoList}" var="item">
                    <option value="${item.id}">${item.name}</option>
                        </c:forEach>
                        </select>
                        <span style="color:red">*必填</span>
                        
                        </div>
                        </div>
                        
                        <div class="layui-form-item layui-form-text" id="newsImgParentContent">
                        <label class="layui-form-label">新闻大图</label>
                        <div class="layui-input-block">
                        <div class="imgUpload" tip="请上传新闻大图，数量不超过1"  red-tip="(*必填)"  upload-num="1" init-val="" upload-type="1" id="newsImg"></div>
                        
                        </div>
                        </div>
                        <!-- 富文本编辑器文档-->
                        <div class="layui-form-item layui-form-text" id="contentParentContent">
                        <label class="layui-form-label">内容</label>
                        <div class="layui-input-block">
                        <div id="contentDiv1" data-id="content"  class="toolbar" style="border: 1px solid #ccc;margin-top:3%;"></div>
                        <div id="contentDiv2"  class="text" style="border: 1px solid #ccc;min-height:300px;z-index:1"></div>
                        <span style="color:red">*必填</span>
                        
                        </div>
                        </div>
                        
                        <div class="layui-form-item layui-form-text" id="publishNameParentContent">
                        <label class="layui-form-label">发布人</label>
                        <div class="layui-input-block">
                        <input type="text"  style="display:inline;width:500px;"  placeholder="请输入发布人" id="publishName" class="layui-input">	<span style="color:red">*必填</span>
                        
                        </div>
                        </div>
                        
                        <div class="layui-form-item layui-form-text" id="publishDateParentContent">
                        <label class="layui-form-label">发布日期</label>
                        <div class="layui-input-block">
                        <input type="text" class="layui-input Wdate"  readonly="readonly"  style="display:inline;width:500px;"   onFocus="WdatePicker({startDate: '%y-%M-%d' })"  placeholder="请输入发布日期" id="publishDate">	<span style="color:red">*必填</span>
                            
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
                                
                                <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/My97DatePicker/4.8/WdatePicker.js"></script>
                                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/wangeditor-3.0.17/wangEditor.min.js"></script>
                                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/wangeditor-3.0.17/wangeditor_emotion.js"></script>
                                            
                                            
                                            
                                            <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layui/layui.js"></script>
                                                <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/utils/listutils.js?v=8745"></script>
                                                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/webupload/webuploader.js"></script>
                                                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/webupload/upload.js"></script>
                                                            
                                                            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/common/selectSearch/jquery.searchableSelect.css?d=129339" />
                                                                <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/selectSearch/jquery.searchableSelect.js?d=1293393"></script>
                                                                    
                                                                    
                                                                    <script type="text/javascript">
                                                                    
                                                                    
                                                                    var wangList=[];
                                                                    
                                                                    $(function(){
                                                                        
                                                                        $('#newsTypeId').next().remove();
                                                                        $('#newsTypeId').searchableSelect();
                                                                        createFileUpload('${pageContext.request.contextPath}');
                                                                            var contentMap = {};
                                                                                var contentEdit =window.wangEditor;
                                                                                editor = new contentEdit('#contentDiv1', '#contentDiv2');
                                                                                editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/commonapi/imgUpload/imgUploadForWangEditor'
                                                                                    editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024;
                                                                                    editor.customConfig.uploadImgMaxLength = 5;
                                                                                    editor.customConfig.uploadImgTimeout = 30000;
                                                                                    editor.customConfig.uploadFileName = 'files'
                                                                                    editor.customConfig.emotions = [{ title: '默认',type: 'image',content:wangeditorEmotions}];
                                                                                        editor.create();
                                                                                        $('#contentDiv2').css("z-index","1");
                                                                                        contentMap.id='content';
                                                                                        contentMap.edit=editor;
                                                                                        wangList.push(contentMap);
                                                                                        editor.txt.html('');
                                                                                        
                                                                                        
                                                                                    })
                                                                                    
                                                                                    
                                                                                    
                                                                                    function getEditVal(name){
                                                                                        for(var i=0;i<wangList.length;i++){
                                                                                            var dataId = wangList[i].id;
                                                                                            if(dataId==name){
                                                                                                return wangList[i].edit.txt.html();
                                                                                            }
                                                                                        }
                                                                                        return '';
                                                                                    }
                                                                                    function submitData(){
                                                                                        var title= $('#title').val();
                                                                                        var newsTypeId= $('#newsTypeId').val();
                                                                                        var newsImg=getUploadFileStr('newsImg');
                                                                                        var content=getEditVal('content');
                                                                                        var publishName= $('#publishName').val();
                                                                                        var publishDate= $('#publishDate').val();
                                                                                        
                                                                                        $.ajax({
                                                                                            type: 'post',
                                                                                            url: '${pageContext.request.contextPath}/admin/news_info/add_submit',
                                                                                                data:{
                                                                                                    
                                                                                                    "title":title,
                                                                                                    "newsTypeId":newsTypeId,
                                                                                                    "newsImg":newsImg,
                                                                                                    "content":content,
                                                                                                    "publishName":publishName,
                                                                                                    "publishDate":publishDate
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
