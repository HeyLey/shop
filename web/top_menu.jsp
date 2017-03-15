<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<ul class="top-menu">
    <div class="about">
        <li class="dropdown-top">
            <a class="dropdown-top">О компании</a>
            <ul class="dropdown-inside">
                <li><a href="/menu/services.jsp">Услуги</a></li>
                <li><a href="/menu/offer.jsp">Оферта</a></li>
                <li><a href="/menu/support.jsp">Центр поддержки</a></li>
                <li><a href="/menu/contacts.jsp">Контакты</a></li>
                <li><a href="/menu/job.jsp">Вакансии</a></li>
            </ul>
        </li>

        <li class="dropdown-top">
            <a class="dropdown-top">Доставка</a>
            <ul class="dropdown-inside">
                <li><a href="/menu/delivery.jsp">Условия доставки</a></li>
                <li><a href="/menu/regions.jsp">Доступные регионы</a></li>
            </ul>
        </li>

        <li class="dropdown-top">
            <a class="dropdown-top">Возврат</a>
            <ul class="dropdown-inside">
                <li><a href="/menu/return.jsp">Условия возврата</a></li>
                <li><a href="/menu/conditions.jsp">Как оформить</a></li>
            </ul>
        </li>
        <script src="/scripts/language.js"></script>
        <div class="lang">
            <li><a href="#" onclick="changeLanguage('ru');" class="dropdown-top">Русский</a></li>
            <li><a href="#" onclick="changeLanguage('en');" class="dropdown-top">English</a></li>
            <li><a href="#" onclick="changeLanguage('de');" class="dropdown-top">Deutsch</a></li>
        </div>
        <div class="corb">
            <ul>
                <c:choose>
                    <c:when test="${not empty pageContext.request.userPrincipal}">
                        <li>
                            <a href="/secured/personal_cabinet.jsp">Пользователь: ${pageContext.request.userPrincipal.name}</a>
                        </li>
                        <li><a href="/secured/logout.jsp">Выход</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/secured/personal_cabinet.jsp">Вход</a></li>
                    </c:otherwise>
                </c:choose>

                <li><a href="/basket.jsp">Корзина</a></li>
                <c:if test="${not empty basket.orders}">
                    <c:if test="${not empty pageContext.request.userPrincipal}">
                        <li><a href="/secured/order.jsp">Заказать</a></li>
                    </c:if>
                </c:if>

            </ul>
        </div>
    </div>
</ul>