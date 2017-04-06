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
    <title>前途陌路</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${BASE}/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link href="${BASE}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${BASE}/css/htmleaf-demo.css" type="text/css" rel="stylesheet">
    <link href="${BASE}/css/login.css" type="text/css" rel="stylesheet">
    <!--[if IE]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body {
            background-color: #7ab5d3;
        }
    </style>
</head>
<body>
    <div class="htmleaf-container" style="margin-top: 200px;">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <form class="form-horizontal" action="${BASE}/login/user" method="POST">
                        <span class="heading">前途陌路-用户登录</span>
                        <div class="form-group">
                            <input type="test" class="form-control" id="inputUsername" placeholder="用户名或电子邮件" name="username">
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="form-group help">
                            <input type="password" class="form-control" id="inputPassword" placeholder="密　码" name="password">
                            <i class="fa fa-lock"></i>
                            <a href="#" class="fa fa-question-circle"></a>
                        </div>
                        <div class="form-group">
                            <div class="main-checkbox">
                                <input type="checkbox" value="None" id="checkbox1" name="check"/>
                                <label for="checkbox1"></label>
                            </div>
                            <span class="text">Remember me</span>
                            <button type="submit" class="btn btn-default">登录</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
