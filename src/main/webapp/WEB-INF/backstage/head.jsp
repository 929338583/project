<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<nav role="navigation" class="navbar navbar-static-top">
        <div class="container-fluid">
           <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
               <ul class="nav navbar-nav">
                   <li class="dropdown">
                       <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                       		<i style="font-size:20px;" class="icon-conversation"></i>
                       		<div class="noft-red">2</div>
                       </a>
                       <ul style="margin: 11px 0 0 9px;" role="menu" class="dropdown-menu dropdown-wrap">
                           <li>
                               <a href="#">
                                   <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/women/1.jpg">安东尼 <b>3分钟以前</b>
                               </a>
                           </li>
                           <li class="divider"></li>
                           <li>
                               <a href="#">
                                   <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/2.jpg">大卫李 <b>2 小时以前</b>
                               </a>
                           </li>
                           <li class="divider"></li>
                           <li>
                               <div>全部信息</div>
                           </li>
                       </ul>
                   </li>
                   <li>
                       <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                       		<i style="font-size:19px;" class="icon-warning tooltitle"></i>
                       		<div class="noft-green">2</div>
                       </a>
                       <ul style="margin: 12px 0 0 0;" role="menu" class="dropdown-menu dropdown-wrap">
                           <li>
                               <a href="#">
                                   <span style="background:#DF2135" class="noft-icon maki-bus"></span><i>起点</i>  <b>01B</b>
                               </a>
                           </li>
                           <li class="divider"></li>
                           <li>
                               <a href="#">
                                   <span style="background:#AB6DB0" class="noft-icon maki-ferry"></span><i>出发</i>  <b>9:00 AM</b>
                               </a>
                           </li>
                           <li class="divider"></li>
                           <li>
                               <div>查看全部</div>
                           </li>
                       </ul>
                   </li>
                   <li>
                   		<a href="#">
                   				<i data-toggle="tooltip" data-placement="bottom" title="Help" style="font-size:20px;" class="icon-help tooltitle"></i>
                   		</a>
                   </li>

               </ul>
               <div id="nt-title-container" class="navbar-left running-text visible-lg">
                   <ul class="date-top">
                       <li class="entypo-calendar" style="margin-right:5px"></li>
                       <li id="Date"></li>
                   </ul>

                   <ul id="digital-clock" class="digital">
                       <li class="entypo-clock" style="margin-right:5px"></li>
                       <li class="hour"></li>
                       <li>:</li>
                       <li class="min"></li>
                       <li>:</li>
                       <li class="sec"></li>
                       <li class="meridiem"></li>
                   </ul>
                   <ul id="nt-title">
                       <li><i class="wi-day-lightning"></i>&#160;&#160;北京&#160;
                           <b>85</b><i class="wi-fahrenheit"></i>&#160;; 今天- 70 °F (20.2 °C)
                       </li>
                       <!-- <li><i class="wi-day-lightning"></i>&#160;&#160;沈阳&#160;
                           <b>85</b><i class="wi-fahrenheit"></i>&#160;; 今天- 72 °F (22.2 °C)
                       </li> -->
                   </ul>
               </div>

               <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                   <li>
                       <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                           <img alt="" class="admin-pic img-circle" src="http://api.randomuser.me/portraits/thumb/men/10.jpg">您好, 中国 <b class="caret"></b>
                       </a>
                       <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                           <li>
                               <a href="#">
                                   <span class="entypo-user"></span>&#160;&#160;个人中心</a>
                           </li>
                           <li>
                               <a href="#">
                                   <span class="fontawesome-edit"></span>&#160;&#160;修改密码</a>
                           </li>
                           <li class="divider"></li>
                           <li>
                               <a href="javascript:void(0)" onclick="exec('/user/users')">
                                   <span class="fontawesome-signout"></span>&#160;&#160;退出系统</a>
                           </li>
                       </ul>
                   </li>
                   <li>
                       <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                           <span class="icon-gear"></span>&#160;&#160;Setting
                       </a>
                       <ul role="menu" class="dropdown-setting dropdown-menu">
                           <li class="theme-bg">
                               <div id="button-bg"></div>
                               <div id="button-bg2"></div>
                               <div id="button-bg3"></div>
                               <div id="button-bg5"></div>
                               <div id="button-bg6"></div>
                               <div id="button-bg7"></div>
                               <div id="button-bg8"></div>
                               <div id="button-bg9"></div>
                               <div id="button-bg10"></div>
                               <div id="button-bg11"></div>
                               <div id="button-bg12"></div>
                               <div id="button-bg13"></div>
                           </li>
                       </ul>
                   </li>
               </ul>

           </div>
       </div>
   </nav>