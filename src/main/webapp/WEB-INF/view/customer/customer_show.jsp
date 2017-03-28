<%--
  Created by IntelliJ IDEA.
  User: zhouj
  Date: 17/3/27
  Time: 下午1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>前途陌路-客户管理-查看客户</title>
    <link href="${BASE}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${BASE}/css/app.css" type="text/css" rel="stylesheet">
</head>
<body>

    <div style="margin: auto; width:1000px;">
        <h1>查看客户界面</h1>

        <div>
            <a href="${BASE}/customer" class="btn btn-success">后退</a>
        </div>

        </br>
        <table class="table">
            <tr>
                <td>客户名称：</td>
                <td>
                    ${customer.name}
                </td>
            </tr>
            <tr>
                <td>联系人：</td>
                <td>
                    ${customer.contact}
                </td>
            </tr>
            <tr>
                <td>电话号码：</td>
                <td>
                    ${customer.telephone}
                </td>
            </tr>
            <tr>
                <td>邮箱地址：</td>
                <td>
                    ${customer.email}
                </td>
            </tr>
        </table>
    </div>
</body>
</html>