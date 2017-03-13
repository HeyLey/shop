<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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