<%--
  Created by IntelliJ IDEA.
  User: zhouj
  Date: 17/3/27
  Time: 下午1:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>前途陌路-登陆页面</title>
    <link href="${BASE}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body>

    <div align="center">
        <p align="center"><h2>前途陌路-登陆页</h2></p>
    </div>

    <div align="center">
        <img src="${BASE}/images/shouye.png" align="center">
    </div>

    <br><br><br><br>

    <form action="${BASE}/login/user" method="POST">
        <table class="table table-bordered" >
            <tr>
                <td><label>用户名称：</label></td>
                <td>
                    <input type="text" name="username" />
                </td>
            </tr>
            <tr>
                <td><label>用户密码：</label></td>
                <td>
                    <input type="text" name="password" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" class="btn">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" class="btn"></td>
            </tr>
        </table>
    </form>

    <p align="center"><h3></h3></p>

</body>
</html>
