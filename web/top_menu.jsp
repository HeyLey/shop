<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<ul class="top-menu">
    <div class="about">
        <li class="dropdown-top">
            <a class="dropdown-top">О компании</a>
            <ul class="dropdown-inside">
                <li><a href="/services.jsp">Услуги</a></li>
                <li><a href="/offer.jsp">Оферта</a></li>
                <li><a href="/support.jsp">Центр поддержки</a></li>
                <li><a href="/contacts.jsp">Контакты</a></li>
                <li><a href="/job.jsp">Вакансии</a></li>
            </ul>
        </li>

        <li class="dropdown-top">
            <a class="dropdown-top">Доставка</a>
            <ul class="dropdown-inside">
                <li><a href="/delivery.jsp">Условия доставки</a></li>
                <li><a href="/regions.jsp">Доступные регионы</a></li>
            </ul>
        </li>

        <li class="dropdown-top">
            <a class="dropdown-top">Возврат</a>
            <ul class="dropdown-inside">
                <li><a href="/return.jsp">Условия возврата</a></li>
                <li><a href="/conditions.jsp">Как оформить</a></li>
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