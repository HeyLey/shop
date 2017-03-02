<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="ex" uri="WEB-INF/custom.tld"%>
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
<ul class="top-menu">
    <div class="about">
        <li class="dropdown-top">
            <a class="dropdown-top" href="/">О компании</a>
            <ul class="dropdown-inside">
                <li><a href="/">Услуги</a></li>
                <li><a href="/">Оферта</a></li>
                <li><a href="/">Центр поддержки</a></li>
                <li><a href="/">Контакты</a></li>
                <li><a href="/">Вакансии</a></li>
            </ul>
        </li>

        <li class="dropdown-top">
            <a class="dropdown-top" href="/">Доставка</a>
            <ul class="dropdown-inside">
                <li><a href="/">Условия доставки</a></li>
                <li><a href="/">Доступные регионы</a></li>
            </ul>
        </li>

        <li class="dropdown-top">
            <a class="dropdown-top" href="/">Возврат</a>
            <ul class="dropdown-inside">
                <li><a href="/">Условия возврата</a></li>
                <li><a href="/">Как оформить</a></li>
            </ul>
        </li>
        <div class="lang">
            <li><a href="/products_page.jsp?lang=ru" class="dropdown-top">Русский</a></li>
            <li><a href="/products_page.jsp?lang=en" class="dropdown-top">English</a></li>
            <li><a href="/products_page.jsp?lang=de" class="dropdown-top">Deutsch</a></li>
        </div>
        <div class="corb">
            <jsp:include page="/user_page.jsp"/>
        </div>
    </div>
</ul>

<div class="top-container">
    <div class="basket">
        <c:forEach items="${basket.orders}" var="order">
            ${order.product.name} <br/>
            <img src="${order.product.img}" class="small-img"/> <br/>
            Количество:<c:out value="${order.number}"/> <br/>
            <hr>
        </c:forEach>
    </div>

    <c:choose>
        <c:when test="${empty autorisation}">
            <a href="autorisation.jsp">Авторизоваться</a>
        </c:when>
        <c:otherwise>
            <button>Заказать</button>
        </c:otherwise>
    </c:choose>


</div>
</body>
</html>
