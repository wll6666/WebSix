<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<div style="postion:absoulte:
left:50%;   top:50%;">
<body  style="background-image:url(image/44.jpg); ">

<div>
 <div style="position: absolute; left: 50%;top:50%; margin-left:-120px; margin-top:-120px; ">
<center><h1>注册信息</h1></center>

 
 
  <form class="form" action="UserAdd2.jsp" method="post">
      <table align="center">
          <tr>
                <td>用户名：</td> <td> <input type="text" name="name" style="color: gray;" name="username" value="请输入用户名" onfocus="if (this.value=='请输入用户名') {this.value='';this.style.color='#000';}" onblur="if (this.value=='') {this.value='请输入用户名';this.style.color='gray'}"></td>
          </tr>
          <tr>
                <td>密码：</td><td>  <input type="password" name="password"></td>
          </tr>
          
                
          <tr>
            <td > <input type="submit" name="submit" value="注册"></td>
            
          </tr>

      </table>


  </form>
  </div>

</div>
</body>

</div>
</html>