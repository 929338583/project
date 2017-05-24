<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="/WEB-INF/taglib/datetag.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="container-fluid paper-wrap bevel tlbr">
     <div class="row">
         <div id="paper-top">
             <div class="col-sm-12">
                 <h2 class="tittle-content-header">
                     <span class="entypo-menu"></span>
                     <span>权限管理
                     </span>
                 </h2>
             </div>
         </div>
     </div>

     <ul id="breadcrumb">
         <li onclick="exec('/index')"><span class="entypo-home"></span></li>
         <li><i class="fa fa-lg fa-angle-right"></i></li>
         <li><a href="#" title="Sample page 1">系统管理</a></li>
         <li><i class="fa fa-lg fa-angle-right"></i></li>
         <li><a href="#" title="Sample page 1">权限管理</a></li>
     </ul>
	 <div class="content-wrap">
	 	<div class="row">
	 		<div class="col-sm-12">
	 			<div class="nest" id="tabletreeClose">
	 				<div class="title-alt">
	 					<h6>权限管理</h6>
	 				</div>
	 				<div class="body-nest" id="tabletree">
	 					<div class="row" style="margin-bottom:10px;">
	 						 <div class="col-sm-4">
	 						 	 <select class="filter-status form-control" id="rid" name="rid" onchange="post('/permission/permission')">
	 						 	 	 <option value="0">选择角色
	 						 		 <c:forEach var="item" items="${roles}" varStatus="status">
	 						 		    <c:choose>
											<c:when test="${item.id==rid}">
												<option value="${item.id}" selected = "selected">${item.orgName}-->${item.name}
											</c:when>
											<c:otherwise>
												<option value="${item.id}">${item.orgName}-->${item.name}
											</c:otherwise>
										</c:choose>
	 						 		 </c:forEach>
                                 </select>
                             </div>
                             <div class="col-sm-8">
                             </div>
                         </div>
					 	<table id="example-advanced" class="table-striped">
					 		<thead>
                                 <tr>
									<th>资源名称</th>
									<th>权限</th>
									<th>描述</th>
                                    <th>授权</th>
                                 </tr>
                             </thead>
                             <tbody>
                             
                              <c:forEach var="item" items="${list}" varStatus="status">
                              		<c:choose>
										<c:when test="${item.pid==0}">
											<tr data-tt-id='${item.id}'>
												<td>${item.name}</td>
												<td>${item.permission}</td>
												<td>${item.remark}</td>
												<td>
													<c:choose>
														<c:when test="${empty item.ischeck}">
															<input type="checkbox" id="pmsn_${item.id}" onclick="saveOrRemove(${item.id})">
														</c:when>
														<c:otherwise>
															<input type="checkbox" id="pmsn_${item.id}" checked="checked" onclick="saveOrRemove(${item.id})">
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr data-tt-id='${item.id}' data-tt-parent-id='${item.pid}'>
												<td>${item.name}</td>
												<td>${item.permission}</td>
												<td>${item.remark}</td>
												<td>
													<c:choose>
														<c:when test="${empty item.ischeck}">
															<input type="checkbox" id="pmsn_${item.id}" onclick="saveOrRemove(${item.id})">
														</c:when>
														<c:otherwise>
															<input type="checkbox" id="pmsn_${item.id}" checked="checked" onclick="saveOrRemove(${item.id})">
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</c:forEach>
                             </tbody>
					 	</table>
					 </div>
	 			</div>
	 		</div>
	 	</div>
	 </div>
     <div class="footer-space"></div>
     <div id="footer"></div>
</div>
<input type="hidden" id="ctx" value="<%= request.getContextPath()%>">
<%@ include file="../source/source-tree.jsp" %>
<script>
/* 展开树*/
$(function() {
	jQuery('#example-advanced').treetable('expandAll');
});

function saveOrRemove(permissionId){
	var isChecked = $("#pmsn_"+permissionId).is(':checked');
	if(isChecked){
		save(permissionId);
	}else{
		remove(permissionId);
	}
}

function save(permissionId){
	var ctx = $("#ctx").val();
	var obj = new Object();
	obj.rid = parseInt($("#rid").val());
	obj.pid = permissionId;
	var data = JSON.stringify(obj);
	
	if(obj.rid==0){
		alert("请选择角色！");
		return;
	}
	
	$.ajax({
		url:ctx+"/permission/add",
        type:"post",
        data:data,
        dataType: 'json',
        contentType:"application/json",
        success : function(result) {
            alert(result);
        }
	});
}

function remove(permissionId){
	var ctx = $("#ctx").val();
	var obj = new Object();
	obj.rid = $("#rid").val();
	obj.pid = permissionId;
	var data = JSON.stringify(obj);
	
	if(obj.rid==0){
		alert("请选择角色！");
		return;
	}
	
	$.ajax({
		url:ctx+"/permission/delete",
        type:"post",
        data:data,
        dataType: 'json',
        contentType:"application/json",
        success: function(result) {
            console.log(result);
        }
	});
}
</script>