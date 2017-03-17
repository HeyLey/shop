<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="ex" uri="/WEB-INF/custom.tld" %>

<c:if test="${empty sessionScope.lang}">
    <fmt:setLocale value="ru"/>
</c:if>

<c:if test="${sessionScope.lang eq 'ru'}">
    <fmt:setLocale value="ru"/>
</c:if>

<c:if test="${sessionScope.lang eq 'en'}">
    <fmt:setLocale value="en"/>
</c:if>

<c:if test="${sessionScope.lang eq 'de'}">
    <fmt:setLocale value="de"/>
</c:if>

<fmt:setBundle basename="/messages"/>

<ex:add_order id="${param.product_id}" color="${param.color}" size="${param.sz}"/>

<html>
<head>
    <title>Basket</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<jsp:include page="top_menu.jsp"/>

<div class="top-container">
    <jsp:include page="main_menu.jsp"/>
    <div class="data-container">
        <div class="basket">
            <c:forEach items="${basket.orders}" var="order">
                <div style="display: inline-block;">
                        ${order.product.name} <br/>
                    <img src="${order.product.img}" class="small-img"/> <br/>
                    Цвет: ${order.color}<br/>
                    Размер: ${order.size}<br/>
                    Цена: ${order.product.price} руб.<br/>
                    Количество: <c:out value="${order.number}"/> <br/> <br/>
                    <button class="small-buy-button" onclick="$.get('/remove?order_id=' + ${order.id}); window.location.href = '/basket.jsp';">
                        <fmt:message key="DELETE"/>
                    </button>
                    <br/> <br/> <br/>
                </div>
            </c:forEach>
        </div>
        <div class="big-text">Общая сумма: ${basket.totalPrice} руб.</div> <br/> <br/> <br/>

        <c:choose>
            <c:when test="${empty basket.orders}">
                <pre> Ваша корзина пуста. </pre>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${empty pageContext.request.userPrincipal}">
                        <a href="secured/login.jsp">Авторизоваться</a>
                    </c:when>
                    <c:otherwise>
                        <a href="secured/order.jsp">Заказать</a>
                    </c:otherwise>
                </c:choose>

            </c:otherwise>
        </c:choose>
    </div>
</div>
</body>
</html>