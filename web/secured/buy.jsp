<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="ex" uri="/WEB-INF/custom.tld" %>
<html>
<head>
    <title>Buy</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>

<ex:make_order address="${param.address}"
               delivery="${param.delivery}"
               user="${pageContext.request.userPrincipal.name}"/>

<jsp:include page="../top_menu.jsp"/>

<div class="top-container">
    <div class="big-text">Заказ успешно оформлен</div>
</div>

</body>
</html>
