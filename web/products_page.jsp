<%@ page import="java.util.Locale" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Locale locale = new Locale("ru");

    String lang = request.getParameter("lang");

    if (lang != null && "en".equals(lang)) {
        locale = Locale.ENGLISH;
    }

    if (lang != null && "de".equals(lang)) {
        locale = Locale.GERMAN;
    }

    ResourceBundle myres = ResourceBundle.getBundle("messages", locale);

    String query = null;

    Cookie[] cookies = request.getCookies();
    for (Cookie c : cookies) {
        if ("query".equals(c.getName())) {
            query = c.getValue();
        }
    }
    if (query != null) {
        request.setAttribute("query", query);
    }
%>
<html>
<head>
    <title>Product list</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="/scripts/filter_input.js"></script>
    <script>
        lang = "<%= locale.getLanguage() %>";

        function buyProduct(id) {
            window.location.href = ("/basket.jsp?order_id=" + id);
        }
    </script>
</head>
<body>
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

<div class="top-container">
    <ul class="main-menu">
        <li><a href="#women">Для женщин</a></li>
        <ul class="sub-menu">
            <li><a href="#1">Платья</a></li>
            <li><a href="#2">Юбки</a></li>
            <li><a href="#3">Брюки</a></li>
            <li><a href="#4">Блузки</a></li>
            <li><a href="#5">Верхняя одежда</a></li>
            <li><a href="#6">Обувь</a></li>
        </ul>
        <li><a href="#man">Для мужчин</a></li>
        <ul class="sub-menu">
            <li><a href="#1">Пиджаки</a></li>
            <li><a href="#2">Брюки</a></li>
            <li><a href="#3">Рубашки</a></li>
            <li><a href="#4">Футболки</a></li>
            <li><a href="#5">Верхняя одежда</a></li>
            <li><a href="#6">Обувь</a></li>
        </ul>
        <li><a href="/products_page.jsp">Все товары</a></li>
    </ul>
</div>
<div class="data-container">
    <p>Фильтр: <input id="filter_input" type="text" value="<%= query != null ? query : ""%>"/></p>
    <div id="products-list">
        <jsp:include page="/products_list.jsp"/>
    </div>

</div>
</body>
</html>
