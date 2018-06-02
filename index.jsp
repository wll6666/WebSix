<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<title>首页</title>
	
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
	
	
	
</head>
<body style="background-color: green;">
<div>
	<div style=:"position:absolute;top:0px">
	<img src="新建文件夹/bg.jpg" width="100%" height="1500px">
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
			<li style=" background-color:white;"> <a href="index.jsp" style="font-family: 隶书; line-height: 30px;font-size: 25px;"> 网站首页 </a></li> 
 			<li>      <a href="message.jsp" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			添加成员    </a></li>
  			<li>      <a href="FindServlet" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			成员显示    </a></li>
 			<li>      <a href="FindServlet0" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			修改资料    </a></li>
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


<!-- 显示框 -->
<div class="pic" style="margin:left:-305px;">
	<div style="position:absolute;z-index:1;width:100%;height:100%;left:50%;top:50%;margin-top:-250px;margin-left:-470px; ">
		<img src="新建文件夹/4.jpg" width="940px" height="500px">
	</div>
	<div style="position: absolute;bottom: 0px;z-index:2;">
		<img src="新建文件夹/8.jpg" width="940px" height="100%">
	</div>
	<div style="position: absolute;top:50%;left:50%;width: 800px;
	height: 400px;margin-top:-200px;margin-left:-400px ; border:1px solid red;">


	<img src="新建文件夹/cl.jpg" width="100%" height="100%">





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







<!-- 内容框 -->

<div class="kuai" style="top:120%;height:550px;right:90px;">
	<img src="新建文件夹/11.jpg" width="100%" height="100%">
	<div class="demo3" style="height:250px;">
		<div style="width:100px;height:30px;position:absolute;top:13px;left:57px;font-family:隶书;font-size:25px;">
			<em>班级公告</em>
		</div>
		<!-- 上框 -->
		<div style="width:480px;height:135px;position:absolute;top:90px;left:50px;">
			1、贵州大学关于2018-2019学年度学生学费减免的通知已上传至QQ共享群。请符合条件的同学按照文件的要求与2018年6月15日前完成网上申报。并准备好材料，于6月6日交到班长处。
			<br>
			2、关于做好2017-2018学年第二学期学生网上评教工作的通知已上传至QQ共享群。请同学们于6月6日前完成评教工作。
		</div>
<img src="新建文件夹/a.png" width="100%" height="100%">

	  
	  <div style="position:absolute; top:120px;left:650px;">  

	  					<span> 链接 </span><br>
	  	   <a href="http://www.gzu.edu.cn/">贵州大学官网</a><br>
	  	     <a href="http://lib.gzu.edu.cn/">贵州大学图书馆</a><br>
	       <a href="http://210.40.2.253:8888/">贵州大学教务管理系统</a><br>
	    
	  
	    </div>
	  
	  
	  
	  
	  
	</div>
	<div style="position: absolute;left:10px; top:50%;width: 95%;height: 50px">
	<div style="width:100px;height:30px;position:absolute;top:21px;left:30px;font-family:隶书;font-size:22px;">
		班级风采
	</div>
	
	
	<div style="width:100px;height:30px;position:absolute;top:21px;left:600px;
	  font-family:隶书;font-size:22px;">
		今日趣闻
	</div>
		<img src="新建文件夹/b.png" width="100%" height="100%">
	</div>
	<div class="demo4" style="height:200px;">
		
<img src="新建文件夹/15.jpg" width="100%" height="100%">
<!-- 左下框班级风采 -->
<div style="width:380px;height:150px;position:absolute;top:25px;margin-left:29px;">
1、我班代表于2016年12月荣获阳明学院工学二部宪法知识竞赛一等奖！！！
<br>
2、我班代表于2017年3月荣获大数据与信息工程学院辩论赛一等奖！！！
<br>

</div>

	</div>
	<div class="demo5" style="height:200px;">
		
<img src="新建文件夹/12.jpg" width="100%" height="100%">
<!-- 右下框今日趣闻 -->
	<div style="width:380px;height:150px;position:absolute;top:25px;margin-left:29px;"	>
	1、贵州大学一夜之间变成“九八五”是人性的扭曲，还是道德的沦陷？
	<br>
	2、震惊！！！某老师在上课过程中不小心透露了某强同学被屡次点名的原因。
	
	</div>
	</div>
</div> 

</div>
<!-- 左上角图片 -->
<div style="position: absolute; left:0px;top:0px; width: 240px; height: 200px;">






	<img src="新建文件夹/6.jpg" width="100%" height="100%">
		<div style=" position: absolute; left:100px;top:40px; width: 190px; height: 180px;">
			<img src="新建文件夹/7.jpg" width="100%" height="100%">
			
			
						
		</div>
		<div style="width:150px;text-align:center;position:absolute;margin-top:-120px;margin-left:50px;
		    font-family:隶书;font-size:20px;">欢迎您：${name}<br><br>
		<a href=login.jsp style="text-decoration:none;font-family:隶书;">退出登录</a>
		</div>
		
		
		
</div> 
</body>
</html>