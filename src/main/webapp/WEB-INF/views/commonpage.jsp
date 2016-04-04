    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>  
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
    <%@ taglib uri ="http://www.springframework.org/security/tags" prefix="sec"%> 
 
    <%@ page language="java" contentType="text/html; charset=UTF-8"  
        pageEncoding="UTF-8"%>  
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>Insert title here</title> 
    
    <script type="text/javascript">
    function showInfo(){
    	var form = document.forms[0];
    	form.action="/testmybatis_securityoo/main/showUser";
    	form.method="post";
    	form.submit();
    }
    </script> 
    </head>  
    <body>  
        <h1>Common Page</h1>  
        <p>每个人都能访问的页面.</p>  
        <a href="/testmybatis_securityoo/main/admin"> Go AdminPage </a>  
        <br />  
        <a href="/testmybatis_securityoo/auth/login">退出登录</a>  
      
         <hr>
         Input form: 拥有 'ROLE_ADMIN'角色  ，以下类容才会显示。
      <hr>
      <sec:authorize access="hasRole('ROLE_ADMIN')">
        <s:form action="/testmybatis_securityoo/main/showUser" commandName="dbUser" method="post">  
         username:<s:input path="username"/>
         <br>
         password:<s:input path="password"/>
         <br>
         <button value="submit">submit</button>
        </s:form>
      </sec:authorize>
      
    </body>  
    </html>  