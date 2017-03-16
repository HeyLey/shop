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
        <jsp:include page="../main_menu.jsp"/>
    <div class="data-container">
        <div class="big-text">Заказ успешно оформлен.</div> <br/><pre>
Ожидайте звонка оператора.
История заказов доступна в личном кабинете. </pre>
    </div>

</div>

</body>
</html>
