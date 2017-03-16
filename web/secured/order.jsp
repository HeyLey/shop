<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="ex" uri="/WEB-INF/custom.tld" %>
<html>
<head>
    <title>Order</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
    <script src="/scripts/maps.js" type="text/javascript"></script>
    <style>
        #map {
            width: 60%;
            height: 60%;
            padding: 0;
            margin: 0;
        }
    </style>
</head>
<body>
<jsp:include page="../top_menu.jsp"/>

<div class="top-container">
    <jsp:include page="../main_menu.jsp"/>
    <div class="data-container">
        <h1>Ваш заказ</h1>
        <div class="basket">
            <c:forEach items="${basket.orders}" var="order">
                <div style="display: inline-block;">
                        ${order.product.name} <br/>
                    <img src="${order.product.img}" class="small-img"/> <br/>
                    Количество:<c:out value="${order.number}"/> <br/>
                    <hr>
                </div>
            </c:forEach>
        </div>


        <form action="/secured/buy.jsp" method="post">
            <br/><br/>
            <input id = "radio1" type="radio" name="delivery" value="false"> Самовывоз<br> <br/>
            <h2>Выберете магазин на карте</h2>
            <div id="map"></div> <br/><br/><br/>
            <input type="radio" name="delivery" value="true"> Доставка курьером<br> <br/> <br/>
            <pre>
При выборе пункта "доставка курьером" укажите в поле ниже Ваш подробный адрес,
включая индекс, а также Ваш номер телефона.</pre> <br/>
            <textarea id = "address" name = "address" rows="4" cols="50">Адрес доставки</textarea><br/> <br/> <br/>
            <input type="submit" class="small-buy-button" value="Заказать">
        </form>
    </div>
</body>
</html>
