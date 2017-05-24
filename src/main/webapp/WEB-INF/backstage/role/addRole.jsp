<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="container-fluid paper-wrap bevel tlbr">
     <div class="row">
         <div id="paper-top">
             <div class="col-sm-3">
                 <h2 class="tittle-content-header">
                     <i class="icon-document-edit"></i> 
                     <span>添加角色</span>
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
                 <div class="nest" id="basicClose">
                     <div class="title-alt">
                         <h6>属性</h6>
                     </div>
                     <div class="body-nest" id="basic">
                         <div class="form_center">
                                 <div class="form-group">
                                     <label>名称</label>
                                     <input type="text" name="name" class="form-control">
                                 </div>
                                 <div class="form-group">
                                     <label>所属组织</label>
                                     <div class="input-group">
                                            <input type="text" id="orgName" class="form-control">
                                            <span class="input-group-addon entypo-doc-text" data-toggle="modal" data-target="#myModal"></span>
                                            <input type="hidden" id="orgId" name="orgId">
                                     </div>
                                 </div>
                                 <div class="form-group">
									  <label>状态</label>
								 </div>
								 <div class="form-group">
                                      <input type="radio" name="status" value="1" checked="checked">
                                      <label>未锁定</label>
                                      &nbsp;&nbsp;&nbsp;&nbsp;
                                      <input type="radio" name="status" value="-1" >
                                      <label>锁定</label>
								 </div> 
								 <div class="form-group">
                                     <label>备注</label>
                                     <textarea style="height:200px!important;margin:20px 0" name="remark" class="form-control" rows="3"></textarea>
                                 </div>
                                 <button class="btn btn-info" type="button" onclick="post('/role/add')">
                                 	<span class="entypo-floppy"></span> 保存</button>
                                 <button class="btn btn-info" type="button" onclick="back('/role/roles')">
                                 	<span class="fontawesome-share"></span> 返回</button>
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
												    <input type="radio" onclick="setOrgan(${item.id},'${item.name}')">
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr data-tt-id='${item.id}' data-tt-parent-id='${item.pid}'>
												<td>${item.name}</td>
												<td>${item.remark}</td>
												<td>
												    <input type="radio" onclick="setOrgan(${item.id},'${item.name}')">
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
function setOrgan(orgId,orgName){
	document.getElementById("orgName").value=orgName;
	document.getElementById("orgId").value=orgId;
}

</script>