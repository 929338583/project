<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="skin-select">
        <div id="logo">
          <h1>MONKEY<span>版本 v0.0.1</span></h1>
        </div>

        <a id="toggle">
            <span class="entypo-menu"></span>
        </a>
        <div class="dark">
            <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search" placeholder="Search Menu...">
                </span>
            </form>
        </div>

        <div class="search-hover">
            <form id="demo-2">
                <input type="search" placeholder="搜索..." class="id_search">
            </form>
        </div>

        <div class="skin-part">
            <div id="tree-wrap">
                <div class="side-bar">
                    <ul class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">
                              <span>系统功能</span>
                              <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
                          </a>
                      </li>

                      <li>
                          <a class="tooltip-tip ajax-load" href="javascript:void(0)" title="用户管理" onclick="exec('/user/users')">
                              <i class="icon icon-user"></i>
                              <span>用户管理</span>
                          </a>
                      </li>
                      <li>
                          <a class="tooltip-tip ajax-load" href="javascript:void(0)" title="组织管理" onclick="exec('/organ/organs')">
                              <i class="icon icon-align-left"></i>
                              <span>组织管理</span>
                          </a>
                      </li>
                      <li>
                          <a class="tooltip-tip ajax-load" href="javascript:void(0)" title="角色管理" onclick="exec('/role/roles')">
                              <i class="icon icon-star"></i>
                              <span>角色管理</span>
                          </a>
                      </li>
                      <li>
                          <a class="tooltip-tip ajax-load" href="javascript:void(0)" title="权限管理" onclick="exec('/permission/permission')">
                              <i class="icon icon-lock"></i>
                              <span>权限管理</span>
                          </a>
                      </li>
                  </ul>

                  <ul class="topnav menu-left-nest">
                      <li>
                          <a href="#" style="border-left:0px solid!important;" class="title-menu-left">
                              <span >应用功能</span>
                              <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
                          </a>
                      </li>

                      <li>
                          <a class="tooltip-tip ajax-load" href="index.html" title="统计管理">
                              <i class="icon-window"></i>
                              <span>统计管理</span>
                          </a>
                      </li>
                      <li>
                          <a class="tooltip-tip ajax-load" href="mail.html" title="文章管理">
                              <i class="icon-mail"></i>
                              <span>消息管理</span>
                              <div class="noft-blue">289</div>
                          </a>
                      </li>

                      <li>
                          <a class="tooltip-tip ajax-load" href="icon.html" title="文章管理">
                              <i class="icon-preview"></i>
                              <span>文章管理</span>
                              <div class="noft-blue" style="display: inline-block; float: none;">New</div>
                          </a>
                      </li>

                      <li>
                          <a class="tooltip-tip" href="#" title="视频管理">
                              <i class="icon-document-new"></i>
                              <span>视频管理</span>
                          </a>
                          <ul>
                              <li>
                                  <a class="tooltip-tip2 ajax-load" href="blank_page.html" title="Blank Page"><i class="icon-media-record"></i><span>Blank Page</span></a>
                              </li>
                               <li>
                                  <a class="tooltip-tip2 ajax-load" href="profile.html" title="Profile Page"><i class="icon-user"></i><span>Profile Page</span></a>
                              </li>
                              <li>
                                  <a class="tooltip-tip2 ajax-load" href="invoice.html" title="Invoice"><i class="entypo-newspaper"></i><span>Invoice</span></a>
                              </li>
                              <li>
                                  <a class="tooltip-tip2 ajax-load" href="pricing_table.html" title="Pricing Table"><i class="fontawesome-money"></i><span>Pricing Table</span></a>
                              </li>
                              <li>
                                  <a class="tooltip-tip2 ajax-load" href="time-line.html" title="Time Line"><i class="entypo-clock"></i><span>Time Line</span></a>
                              </li>
                              <li>
                                  <a class="tooltip-tip2" href="404.html" title="404 Error Page"><i class="icon-thumbs-down"></i><span>404 Error Page</span></a>
                              </li>
                              <li>
                                  <a class="tooltip-tip2" href="500.html" title="500 Error Page"><i class="icon-thumbs-down"></i><span>500 Error Page</span></a>
                              </li>
                              <li>
                                  <a class="tooltip-tip2" href="lock-screen.html" title="Lock Screen"><i class="icon-lock"></i><span>Lock Screen</span></a>
                              </li>
                          </ul>
                      </li>

                      <li>
                          <a class="tooltip-tip " href="login.html" title="帮助">
                              <i class="icon-download"></i>
                              <span>帮助</span>
                          </a>
                      </li>
                  </ul>
              </div>
          </div>
      </div>
 </div>