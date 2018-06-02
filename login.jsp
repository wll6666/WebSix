<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>班级管理系统</title>
</head>
 <body style="margin:0px;padding:0px;">
 
<div style="width:100%;height:100%;">
	<img src="image/girl.jpg" width="1366px" height="646px">
	  <div style="position:absolute;top:50%;left:50%;margin-top:-100px;margin-left:-100px;">
	  
	  	<h2 style="text-align:center;">班级管理系统</h2>
	  	
	  	<div class="right">
  		<form class="form" action="Login" method="post">
    		<table align="center">
         		 <tr>
               		 <td>用户名：</td> <td> <input type="text" name="name" style="color: gray;" name="username" value="请输入用户名" onfocus="if (this.value=='请输入用户名') {this.value='';this.style.color='#000';}" onblur="if (this.value=='') {this.value='请输入用户名';this.style.color='gray'}"></td>
         		 </tr>  
         		  <tr>       
           			<td>&nbsp;&nbsp;</td>
           			<td>&nbsp;&nbsp;</td>              		         
         		 </tr>      
         		 <tr>
                <td>密码：</td><td><input type="password" name="password" ></td>
         		 </tr>                  
         		 <tr>
            			<td > <input type="submit" name="submit"></td>
           				<td> <a href="UserAdd.jsp" style=" font-size:14px;padding:3px 5px; text-decoration:none;background-color:#fff;color:#000;">注册  </a></td>           
          		</tr>		
     		 </table>
 		 </form>

</div>
</div>
</div>
</body>
</html>