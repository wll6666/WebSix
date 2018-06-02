<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="com.demo.bean.student"%><html>
<head>

 <style>
            #a img{
                border: 1px solid  gainsboro;
                width:480px;
              
            }
            #b img{
                border: 1px solid  gainsboro;
                width: 100px;
            }
            #b img:hover{
                border: 1px solid red;
            }
        </style>
        <script>
            function over(obj){//obj表示的是this标签，src是img的属性，this指的是当前标签-img;
                document.getElementById("img").src=obj.src;//当鼠标移动到小div上的时候，改变大div的图像路径
            }
        </script>
   



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/student.css">
<title>班级相册</title>
<style type="text/css">
	td{font-size: 12px;}
	h2{margin: 0px}
</style>
</head>
<body>
<!-- 左上角图片 -->
<div style=" position: absolute; left:0px;top:0px; width: 240px; height: 200px;z-index:3;">
	<img src="新建文件夹/6.jpg" width="100%" height="100%">
		<div style=" position: absolute; left:100px;top:40px; width: 190px; height: 180px;">
			<img src="新建文件夹/7.jpg" width="100%" height="100%">
		</div>
		<div style="text-align:center;position:absolute;margin-top:-120px;margin-left:50px;font-family:隶书;font-size:20px;">欢迎您：${name}<br><br>
		<a href=login.jsp style="text-decoration:none;font-family:隶书;">退出登录</a>
		</div>
</div> 
<div>
	<div style=:"position:absolute;top:0px">
	<img src="新建文件夹/bg.jpg" width="100%" height="1300px">
	</div>
	           <!-- 导航栏 -->
	<div class="tou">	
	<div class="demo1">
	<div class="head">
		<div style="position: absolute;z-index: 1;right: 0px;"><img src="新建文件夹/8.jpg"  width="780px;" height="80px"></div>
		<div style="position: absolute;width: 100%;height: 60px"><img src="新建文件夹/5.jpg" width="101%" height="100%" style="margin-left: -18px"></div>
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
 			<li>      <a href="FindServlet0" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			修改资料    </a></li>
  			<li style=" background-color:white;">      <a href="picture.jsp" style="font-family: 隶书; line-height: 30px;font-size: 25px;">      			班级相册   </a></li>
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
<div class="pic"><div style="text-align:center; position:absolute;z-index:1;width:100%;height:100%;top:-20px">
<img src="新建文件夹/4.jpg" width="600px" height="550px">
</div>
<div style="position: absolute;bottom: 0px;z-index:3;text-align:center;margin-left:150px;">
<img src="新建文件夹/8.jpg" width="600px" height="100%">
</div>
<div style="position: absolute;top:50%;left:50%;width: 800px;height: 400px;margin-top:-205px;margin-left:-402px ;z-index:2">




      

 
        <div style="text-align:center;">
        
        <div id="a">
            <img id="img" src="picture/2.jpg"  />
        </div>
        <div id="b">
           
            <img src="picture/2.jpg"  onmouseover="over(this)"/>
            <img src="picture/3.jpg"  onmouseover="over(this)"/>
            <img src="picture/4.jpg"  onmouseover="over(this)"/>
            <img src="picture/5.jpg"  onmouseover="over(this)"/>
        </div>
        
        
        </div>






</div>









</div>




<div style="border-top:20px solid #000;border-bottom:20px solid #000; position:absolute; right:200px ; top:800px;" >  
<embed src="新建文件夹/班级视频.mp4" width="580px" height="400px" loop="true" autostart="false"/>
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
3、数字电路P109 第22题。
</div>


</div>
</div>
</body>
</html>