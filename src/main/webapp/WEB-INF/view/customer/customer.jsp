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
    <title>前途陌路-客户管理</title>
    <link href="${BASE}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${BASE}/css/app.css" type="text/css" rel="stylesheet">
</head>
<body>

    <div style="margin: auto; width:1000px;">

        <h1 align="center">客户列表</h1>

        <h4>
            <a href="${BASE}/customer_create?method=GET" class="btn btn-success">new data</a>
            <a href="${BASE}/login/user?method=GET" class="btn btn-success">login out</a>
        </h4>

        <table class="table table-bordered table-condensed">
            <tr>
                <th>客户名称</th>
                <th>联系人</th>
                <th>电话号码</th>
                <th>邮箱地址</th>
                <th>操作</th>
            </tr>
            <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td><a href="${BASE}/customer_show?id=${customer.id}&method=GET">${customer.name}</a></td>
                    <td>${customer.contact}</td>
                    <td>${customer.telephone}</td>
                    <td>${customer.email}</td>
                    <td>
                        <a href="${BASE}/customer_edit?id=${customer.id}&method=GET" class="btn btn-mini">编辑</a>
                        <a href="${BASE}/customer_delete?id=${customer.id}" class="btn btn-mini">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>