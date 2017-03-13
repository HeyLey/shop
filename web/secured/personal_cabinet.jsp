<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="ex" uri="/WEB-INF/custom.tld" %>


<ex:add_order id="${param.order_id}"/>

<html>
<head>
    <title>Personal page</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<jsp:include page="../top_menu.jsp"/>

<div class="top-container">
    <div class="big-text"> Пользователь ${pageContext.request.userPrincipal.name}</div>
    <div class="big-text"> Номер вкладки поумолчанию: ${initParam["default-tab"]}</div>
</div>
</body>
</html>
