<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="/WEB-INF/taglib/datetag.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  PAPER WRAP -->
 <div class="container-fluid paper-wrap bevel tlbr">
     <div class="row">
         <div id="paper-top">
             <div class="col-sm-12">
                 <h2 class="tittle-content-header">
                     <span class="entypo-menu"></span>
                     <span>用户管理</span>
                 </h2>
             </div>
         </div>
     </div>

     <ul id="breadcrumb">
         <li><span class="entypo-home"></span></li>
         <li><i class="fa fa-lg fa-angle-right"></i></li>
         <li><a href="#" title="Sample page 1">系统管理</a></li>
         <li><i class="fa fa-lg fa-angle-right"></i></li>
         <li><a href="#" title="Sample page 1">用户管理</a></li>
     </ul>

     <div class="content-wrap">
         <div class="row">
             <div class="col-sm-12">
                 <div class="nest" id="FootableClose">
                     <div class="title-alt">
                         <h6>用户列表</h6>
                     </div>
                     <div class="body-nest" id="Footable">
						<div class="row" style="margin-bottom:10px;">
                             <div class="col-sm-4">
                                 <input class="form-control" id="filter" placeholder="用户名" type="text">
                             </div>
                             <div class="col-sm-2">
                                 <select class="filter-status form-control">
                                     <option value="active">全部状态
                                     <option value="disabled">锁定
                                     <option value="suspended">未锁定
                                 </select>
                             </div>
                             <div class="col-sm-6">
                                 <a href="javascript:void(0)" onclick="exec('/user/toAdd')" class="pull-right btn btn-info">
                                 	<span class="entypo-plus-squared"></span> 新增</a>
                             </div>
                         </div>
                         <table class="table-striped footable-res footable metro-blue" data-page-size="15">
                             <thead>
                                 <tr>
                                    <th>#</th>
									<th>姓名</th>
									<th>用户名</th>
									<th>创建时间</th>
									<th>状态</th>
                                    <th>操作</th>
                                 </tr>
                             </thead>
                             <tbody>
                              	<c:forEach var="item" items="${list}" varStatus="status">
									<tr>
										<td>${status.index + 1}</td>
										<td>${item.realname}</td>
										<td>${item.username}</td>
										<td><f:date value="${item.createDate}"/></td>
										<c:choose>
											<c:when test="${item.status == 1}">
												<td>
 													<span class="status-metro status-active" title="Active">未锁定</span>
												</td>
											</c:when>
											<c:otherwise>
												<td>
	                                               <span class="status-metro status-disabled" title="Disabled">锁定</span>
	                                            </td>
											</c:otherwise>
										</c:choose>
										<td>
										   <a href="javascript:void(0)" onclick="exec('/user/toEdit',{id:'${item.id}'})"> 
										       <i class="fa fa-pencil"></i>
										   </a> 
										   <c:if test="${item.username !='admin'}">
												<a href="javascript:void(0)" onclick="exec('/user/delete',{id:'${item.id}'})"> 
												   <i class="fa fa-trash-o"></i>
												</a>
											</c:if>
										</td>
									</tr>
								</c:forEach>
                             </tbody>
                             <tfoot>
                                 <tr>
                                     <td colspan="6">
                                         <div class="pagination pagination-centered"></div>
                                     </td>
                                 </tr>
                             </tfoot>
                         </table>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="footer-space"></div>
     <div id="footer"></div>
</div>