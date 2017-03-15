<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="ex" uri="/WEB-INF/custom.tld" %>
<c:if test="${empty param.lang}">
    <fmt:setLocale value="ru"/>
</c:if>

<c:if test="${param.lang eq 'ru'}">
    <fmt:setLocale value="ru"/>
</c:if>

<c:if test="${param.lang eq 'en'}">
    <fmt:setLocale value="en"/>
</c:if>

<c:if test="${param.lang eq 'de'}">
    <fmt:setLocale value="de"/>
</c:if>

<fmt:setBundle basename="messages"/>

<ex:add_order id="${param.order_id}"/>

<html>
<head>
    <title>Basket</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
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
                    Price: ${order.product.price} <br/>
                    Количество:<c:out value="${order.number}"/> <br/>
                </div>
            </c:forEach>
        </div>

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