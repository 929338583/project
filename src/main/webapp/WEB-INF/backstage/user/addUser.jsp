<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/encrypt.js"></script>
 <div class="container-fluid paper-wrap bevel tlbr">
     <div class="row">
         <div id="paper-top">
             <div class="col-sm-12">
                 <h2 class="tittle-content-header">
                     <i class="icon-document-edit"></i> 
                     <span>添加用户</span>
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
                         <div class="titleClose">
                             <a class="gone" href="#basicClose">
                                 <span class="entypo-cancel"></span>
                             </a>
                         </div>
                         <div class="titleToggle">
                             <a class="nav-toggle-alt" href="#basic">
                                 <span class="entypo-up-open"></span>
                             </a>
                         </div>
                     </div>
                     <div class="body-nest" id="basic">
                         <div class="form_center">
                             <form role="form">
                             	 <div class="form-group">
                                     <label>用户角色</label>
                                     <div class="input-group">
	                                     <input type="text" id="roleNames" class="form-control">
	                                     <input type="hidden" id="ids" name="ids" class="form-control">
	                                     <span class="input-group-addon entypo-doc-text" data-toggle="modal" data-target="#myModal"></span>
                                     </div>
                                 </div>
                                 <div class="form-group">
                                     <label>用户名</label>
                                     <input type="text" name="username" class="form-control">
                                 </div>
                                 <div class="form-group">
                                     <label>密码</label>
                                     <input type="password" id="temp" class="form-control"  onblur="encryptPassword()">
                                     <input type="hidden" id="password" name="password">
                                 </div>
                                 <div class="form-group">
                                     <label>确认密码</label>
                                     <input type="password" id="confirmPassword" class="form-control">
                                 </div>
                                 <div class="form-group">
                                     <label>姓名</label>
                                     <input type="text" name="realname" class="form-control">
                                 </div>
                                 <div class="form-group">
                                     <label>身份证号码</label>
                                     <input type="text" name="card" class="form-control">
                                 </div>
                                 <div class="form-group">
                                     <label>电话号码</label>
                                     <input type="text" name="phone" class="form-control">
                                 </div>
                                 <div class="form-group">
                                     <label>邮箱</label>
                                     <input type="text" name="email" class="form-control">
                                 </div>
                                 <div class="form-group">
									  <label>状态</label>
								 </div>
								 <div class="form-group">
                                      <input type="radio" id="status" name="status" value="1" checked="checked">
                                      <label>未锁定</label>
                                      &nbsp;&nbsp;&nbsp;&nbsp;
                                      <input type="radio" id="status" name="status" value="-1">
                                      <label >锁定</label>
								 </div>
                                 <button class="btn btn-info" type="button" onclick="post('/user/add')">
                                 	<span class="entypo-floppy"></span> 保存</button>
                                 <button class="btn btn-info" type="button" onclick="back('/user/users')">
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
                <h6 class="modal-title">选择角色</h6>
            </div>
            
            <div class="modal-body">
                <div class="compose_mail">
                    <div class="body-nest" id="tabletree">
					 	<table id="example-advanced" class="table-striped">
					 		<thead>
                                 <tr>
									<th>名称</th>
									<th>备注</th>
                                    <th>角色</th>
                                 </tr>
                             </thead>
                             <tbody>
                              <c:forEach var="item" items="${organs}" varStatus="status">
                              		<c:choose>
										<c:when test="${item.pid==0}">
											<tr data-tt-id='${item.id}'>
												<td>${item.name}</td>
												<td>${item.remark}</td>
												<td>
													<c:if test="${!empty item.roles}">
														<c:forEach var="role" items="${item.roles}" varStatus="status">
															<input type="checkbox" value="${role.id}" name="roleId" onclick="selectRoles(${role.id},'${role.name}')">${role.name}
														</c:forEach>
													</c:if>
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr data-tt-id='${item.id}' data-tt-parent-id='${item.pid}'>
												<td>${item.name}</td>
												<td>${item.remark}</td>
												<td>
												    <c:if test="${!empty item.roles}">
														<c:forEach var="role" items="${item.roles}" varStatus="status">
															<input type="checkbox" value="${role.id}" name="roleId" onclick="selectRoles()">${role.name}
														</c:forEach>
													</c:if>
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

function encryptPassword(){
	var password = document.getElementById("temp").value;
	document.getElementById("password").value=encrypt(password);
}
</script>
<script>
function selectRoles(){
	var role=document.getElementsByName("roleId");
	var ids = [];
	var names = [];
    for(var i=0;i<role.length;i++){
       if(role[i].checked){
    	  ids.push(role[i].value);
    	  names.push((role[i].nextSibling.nodeValue).replace(/^\s\s*/,'').replace(/\s\s*$/,''));
       }
    }
    
    document.getElementById("ids").value=ids;
    document.getElementById("roleNames").value=names;
}
</script>