<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="/WEB-INF/taglib/datetag.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="container-fluid paper-wrap bevel tlbr">
     <div class="row">
         <div id="paper-top">
             <div class="col-sm-12">
                 <h2 class="tittle-content-header">
                     <span class="entypo-menu"></span>
                     <span>组织管理
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
         <li><a href="#" title="Sample page 1">组织管理</a></li>
     </ul>
	 <div class="content-wrap">
	 	<div class="row">
	 		<div class="col-sm-12">
	 			<div class="nest" id="tabletreeClose">
	 				<div class="title-alt">
	 					<h6>组织结构</h6>
	 				</div>
	 				<div class="body-nest" id="tabletree">
	 					<div class="row" style="margin-bottom:10px;">
                             <div class="col-sm-12">
                                 <a href="javascript:void(0)" onclick="exec('/organ/toAdd')" class="pull-right btn btn-info">
                                	<span class="entypo-plus-squared"></span> 新增
                                 </a>
                             </div>
                         </div>
					 	<table id="example-advanced" class="table-striped">
					 		<thead>
                                 <tr>
									<th>名称</th>
									<th>备注</th>
									<th>创建时间</th>
                                    <th>操作</th>
                                 </tr>
                             </thead>
                             <tbody>
                             
                              <c:forEach var="item" items="${list}" varStatus="status">
                              		<c:choose>
										<c:when test="${item.pid==0}">
											<tr data-tt-id='${item.id}'>
												<td>${item.name}</td>
												<td>${item.remark}</td>
												<td><f:date value="${item.createDate}"/></td>
												<td>
												    <a href="javascript:void(0)" onclick="exec('/organ/toEdit',{id:'${item.id}'})"> 
												       <i class="fa fa-pencil"></i>
												    </a>
												     &nbsp;
													<a href="javascript:void(0)" onclick="exec('/organ/delete',{id:'${item.id}'})"> 
													   <i class="fa fa-trash-o"></i>
													</a>
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr data-tt-id='${item.id}' data-tt-parent-id='${item.pid}'>
												<td>${item.name}</td>
												<td>${item.remark}</td>
												<td><f:date value="${item.createDate}"/></td>
												<td>
												    <a href="javascript:void(0)" onclick="exec('/organ/toEdit',{id:'${item.id}'})"> 
												       <i class="fa fa-pencil"></i>
												    </a>
												    &nbsp;
													<a href="javascript:void(0)" onclick="exec('/organ/delete',{id:'${item.id}'})"> 
													   <i class="fa fa-trash-o"></i>
													</a>
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
<%@ include file="../source/source-tree.jsp" %>
<script>
/* 展开树 */
$(function() {
	jQuery('#example-advanced').treetable('expandAll');
});
</script>