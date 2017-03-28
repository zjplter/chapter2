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
    <title>前途陌路-客户管理-编辑客户</title>
    <link href="${BASE}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${BASE}/css/app.css" type="text/css" rel="stylesheet">
</head>
<body>

    <div style="margin: auto; width:1000px;">

        <h1 align="center">编辑客户界面</h1>
        </br>
        <form action="${BASE}/customer_edit" method="post">
            <table class="table table-bordered">
                <tr>
                    <td>客户名称：</td>
                    <td>
                        <input type="hidden" name="id" value="${customer.id}">
                        <input type="text" name="name" value="${customer.name}">
                    </td>
                </tr>
                <tr>
                    <td>联系人：</td>
                    <td>
                        <input type="text" name="contact" value="${customer.contact}">
                    </td>
                </tr>
                <tr>
                    <td>电话号码：</td>
                    <td>
                        <input type="text" name="telephone" value="${customer.telephone}">
                    </td>
                </tr>
                <tr>
                    <td>邮箱地址：</td>
                    <td>
                        <input type="text" name="email" value="${customer.email}">
                    </td>
                </tr>
            </table>
            <button type="submit" class="btn btn-success">保存</button>
        </form>
    </div>

</body>
</html>