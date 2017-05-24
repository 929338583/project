<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="container-fluid paper-wrap bevel tlbr">
     <div class="row">
         <div id="paper-top">
             <div class="col-sm-12">
                 <h2 class="tittle-content-header">
                     <i class="icon-document-edit"></i> 
                     <span>添加组织
                     </span>
                 </h2>
             </div>
         </div>
     </div>
     <ul id="breadcrumb">
         <li><span class="entypo-home"></span></li>
         <li><i class="fa fa-lg fa-angle-right"></i></li>
         <li><a href="#" title="Sample page 1">系统管理</a></li>
         <li><i class="fa fa-lg fa-angle-right"></i></li>
         <li><a href="#" title="Sample page 1">组织管理</a></li>
     </ul>
     
     <div class="content-wrap">
         <div class="row">
             <div class="col-sm-12">
                 <div class="nest" id="basicClose">
                     <div class="title-alt">
                         <h6>属性</h6>
                     </div>
                     <div class="body-nest" id="basic">
                         <div class="form_center">
                             <form role="form">
                             	<div class="form-group">
                                     <label>上级</label>
                                     <div class="input-group">
                                     	 <c:choose>
											<c:when test="${empty data.pname}">
												<input type="text" id="pname" value="无" class="form-control">
											</c:when>
											<c:otherwise>
												<input type="text" id="pname" value="${data.pname }" class="form-control">
											</c:otherwise>
										  </c:choose>
                                          <input type="hidden" id="pid" name="pid">
                                          <span class="input-group-addon entypo-doc-text" data-toggle="modal" data-target="#myModal"></span>
                                     </div>
                                 </div>
                                 <div class="form-group">
                                     <label>名称</label>
                                     <input type="text" name="name" value="${data.name }" class="form-control">
                                 </div>
                                 <div class="form-group">
                                     <label>排序</label>
                                     <input type="text" name="sort" value="${data.sort }" class="form-control">
                                 </div>
                                 <div class="form-group">
                                     <label>备注</label>
                                     <textarea name="remark" style="height:200px!important;margin:20px 0" class="form-control" rows="3">${data.remark }</textarea>
                                 </div>
                                 <input type="hidden" name="id" value="${data.id}" >
                                 <button class="btn btn-info" type="button" onclick="post('/organ/edit')">
                                 	<span class="entypo-floppy"></span> 保存</button>
                                 <button class="btn btn-info" type="button" onclick="back('/organ/organs')">
                                 	<span class="fontawesome-share"></span> 返回</button>
                             </form>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 	<div class="footer-space"></div>
    <div id="footer"></div>
 </div>
 <!-- 弹出显示 -->
 <div aria-labelledby="myLargeModalLabel" role="dialog" class="modal fade bs-example-modal-lg" style="display: none;" id="myModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">
                    <span class="entypo-cancel"></span>
                </button>
                <h6 class="modal-title">选择组织</h6>
            </div>
            
            <div class="modal-body">
                <div class="compose_mail">
                    <div class="body-nest" id="tabletree">
					 	<table id="example-advanced" class="table-striped">
					 		<thead>
                                 <tr>
									<th>名称</th>
									<th>备注</th>
                                    <th>选择</th>
                                 </tr>
                             </thead>
                             <tbody>
                              <c:forEach var="item" items="${list}" varStatus="status">
                              		<c:choose>
										<c:when test="${item.pid==0}">
											<tr data-tt-id='${item.id}'>
												<td>${item.name}</td>
												<td>${item.remark}</td>
												<td>
												    <input type="radio" value="${item.id}" name="organ" onclick="setOrgan('${item.id}','${item.name}')">
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr data-tt-id='${item.id}' data-tt-parent-id='${item.pid}'>
												<td>${item.name}</td>
												<td>${item.remark}</td>
												<td>
												    <input type="radio" value="${item.id}" name="organ" onclick="setOrgan('${item.id}','${item.name}')">
												</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</c:forEach>
                             </tbody>
					 	</table>
					 </div>
					 &nbsp;&nbsp;&nbsp;&nbsp;
					 <button class="btn btn-info" type="button" aria-hidden="true" data-dismiss="modal">
						<span class="fontawesome-check"></span> 确认</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../source/source-tree.jsp" %>
<script>
function setOrgan(id,pname){
	document.getElementById("pid").value=id;
	document.getElementById("pname").value=pname;
}
</script>