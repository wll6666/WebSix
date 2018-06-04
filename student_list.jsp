
<!-- 请求修改  跳转Updateservlet.java -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="com.demo.bean.student"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/student.css">


 <script language="javascript">
    function realSysTime(clock){
    	var now=new Date();			//创建Date对象
    	var year=now.getFullYear();	//获取年份
    	var month=now.getMonth();	//获取月份
    	var date=now.getDate();		//获取日期
    	var day=now.getDay();		//获取星期
    	var hour=now.getHours();	//获取小时
    	var minu=now.getMinutes();	//获取分钟
    	var sec=now.getSeconds();	//获取秒钟
    	month=month+1;
    	var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
    	var week=arr_week[day];		//获取中文的星期
    	var time=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minu+":"+sec;	//组合系统时间
    	clock.innerHTML="时间："+time;	//显示系统时间
    }
    window.onload=function(){
		window.setInterval("realSysTime(clock)",1000);	//实时获取并显示系统时间
    }
    </script>
	

<title>管理成员</title>
<style type="text/css">
	td{font-size: 12px;}
	h2{margin: 0px}
</style>
</head>
<body>

	<div style=:"position:absolute;top:0px">
	<img src="新建文件夹/bg.jpg" width="100%" height="1300px">
	</div>
	           <!-- 导航栏 -->
	<div class="tou">	
	<div class="demo1">
	<div class="head">
		<div style="position: absolute;z-index: 1;right: 0px;"><img src="新建文件夹/8.jpg"  width="750px;" height="80px"></div>
		<div style="position: absolute;width: 100%;height: 60px"><img src="新建文件夹/5.jpg" width="102%" height="100%" style="margin-left: -23px"></div>
    <div style="position: absolute;"><span class="nav_1">班级网站</span>
    <span class="nav_2"> class website</span></div>

  </div>
  													<!-- head-->


													<!-- center -->



	<div class="center" style="background-color: #dcdcdc;">
		<div style="margin-left:-85px;">
			<ul>
			<li> <a href="index.jsp" style="font-family: 隶书; line-height: 30px;font-size: 25px;"> 网站首页 </a></li> 
 			<li>      <a href="message.jsp" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			添加成员    </a></li>
  			<li>      <a href="FindServlet" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			成员显示    </a></li>
 			<li style=" background-color:white;">      <a href="FindServlet0" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			修改资料    </a></li>
  			<li>      <a href="picture.jsp" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			班级相册   </a></li>
			<li>      <a href="course.jsp" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			班级课表    </a></li>
			<li style="background-color:#dcdcdc">
			<span>
				<div style="background-color:#dcdcdc; margin-top:10px;text-align:center; color:black;font-size: 25px;line-height: 15px; font-family: 隶书">联系我们</div>
				
				<dl style="margin-top: 5px;margin-left:8px">
					<dt style="padding:5px 15px;background-color:#f0ffff;font-family:隶书;font-size:18px;"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1786903774&amp;site=oicqzone.com&amp;menu=yes" target="_blank">卢 壘</a></dt>
					<dt style="padding:5px 15px;background-color:#f0ffff;font-family:隶书;font-size:18px;"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1786903774&amp;site=oicqzone.com&amp;menu=yes" target="_blank">王露露</a></dt>
					<dt style="padding:5px 15px;background-color:#f0ffff;font-family:隶书;font-size:18px;"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1786903774&amp;site=oicqzone.com&amp;menu=yes" target="_blank">米真辰</a></dt>
				</dl>
			</span>
			</li>
		</ul>
		</div>	
	</div>    

</div>

<!-- 左上角图片 -->
<div style=" position: absolute; left:0px;top:0px; width: 240px; height: 200px;">
	<img src="新建文件夹/6.jpg" width="100%" height="100%">
		<div style=" position: absolute; left:100px;top:40px; width: 190px; height: 180px;">
			<img src="新建文件夹/7.jpg" width="100%" height="100%">
		</div>
		<div style="text-align:center;position:absolute;margin-top:-120px;margin-left:50px;font-family:隶书;font-size:20px;">欢迎您：${name}<br><br>
		<a href=login.jsp style="text-decoration:none;font-family:隶书;">退出登录</a>
		</div>
</div> 

<!-- 显示框 -->
<div class="pic"><img src="新建文件夹/4.jpg" width="100%" height="100%">
<div style="position: absolute;bottom: 0px;"><img src="新建文件夹/8.jpg" width="900px"></div>

<div style="position: absolute;top:50%;left:50%;width: 600px;
	height: 350px;margin-top:-180px;margin-left:-300px ;">
		<table style="margin-top:-10px;margin-left:-50px;"lign="center" width="700px" border="1" height="180" bordercolor="black" cellpadding="1" cellspacing="1">
		<tr >
			<td align="center" colspan="13">
				<h2>所有成员信息</h2>
			</td>
		</tr>
		<tr align="center"  >
			<td ><b>学号</b></td>
			<td ><b>姓名</b></td>
			<td ><b>性别</b></td>
			<td ><b>电话</b></td>
			<td><b>QQ</b></td>
			<td ><b>身份证号</b></td>
			<td><b>修改电话</b></td>
			<td><b>&nbsp;</b></td>
		</tr>
			<%
				// 获取成员信息集合
					List<student> list = (List<student>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历成员集合中的数据
						for(student student : list){
			%>
				<tr align="center" >
					<td><%=student.getId()%></td>
					<td><%=student.getName()%></td>
					<td><%=student.getSex()%></td>
					<td><%=student.getTel()%></td>
					<td><%=student.getQq()%></td>
					<td><%=student.getId_card()%></td>
					
					<td>
						<form action="UpdateServlet" method="post" onsubmit="return check(this);">
						<input type="hidden" name="id" value="<%= student.getId()%>">
						<input type="text" name="tel">
						<input type="submit" value="修改">
						</form>
					</td> 
					<td>
						&nbsp;&nbsp;<a href="DeleteServlet?id=<%=student.getId()%>">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
			<%
					}
				}
			%>
	</table>
	</div>
</div>
</div>


<!-- 左侧固定框 -->

<div class="fly">
	
<img src="新建文件夹/10.jpg" width="100%" height="100%">
<div style="position:absolute;top:30px;width:130px;">
今日作业：<br>

1、java web 第五次实验报告<br>
2、数据结构 P25 第六大题。<br>
3、数字电路P109 第22题。<br><br>
 <div id="clock"></div>
</div>


</div>


















</body>
</html>