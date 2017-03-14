<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="/scripts/tabs.js"></script>
    <script>
        function buyProduct(id) {
            window.location.href = ("/basket.jsp?order_id=" + id);
        }
    </script>
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
            <li><a href="/shop/ru" class="dropdown-top">Русский</a></li>
            <li><a href="/shop/en" class="dropdown-top">English</a></li>
            <li><a href="/shop/de" class="dropdown-top">Deutsch</a></li>
        </div>
        <div class="corb">
            <li><a class="dropdown-top">Вход</a></li>
            <li><a class="dropdown-top">Корзина</a></li>
            <li><a class="dropdown-top">История</a></li>
        </div>
    </div>
</ul>

<div class="top-container">
    <ul class="main-menu">
        <li><a href="#women">Для женщин</a></li>
        <ul class="sub-menu">
            <li><a href="#1">Платья</a></li>
            <li><a href="#2">Юбки</a></li>
            <li><a href="#4">Брюки</a></li>
            <li><a href="#5">Блузки</a></li>
            <li><a href="#6">Верхняя одежда</a></li>
            <li><a href="#7">Обувь</a></li>
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
    <div class="data-container">
        <img src="${product_image2}" class="image-preview"/>

        <div class="content-container">
            <div class="product-header">${product_name}</div>
            <div class="price">${product_price}</div>
            <div class="main-param">
                Цвет: <select name="size">
                <option value="r1">${product_color}</option>
                <option value="r2">${product_color2}</option>
                <option value="r3">${product_color3}</option>
            </select><br/>
                Размер:
                <select name="size">
                    <option value="r1">${s1}</option>
                    <option value="r2">${s2}</option>
                    <option value="r3">${s3}</option>
                </select><br/>
            </div>
            <div class = "size_tab">
                <a href="/size_table.jsp">Таблица размеров</a>
            </div>
            <button type="button" id="buy" onclick="buyProduct(${product_id})">${buy_button}</button>
        </div>
        <div id="tabs-container">
            <ul class="tabs-menu">
                <li ${tab1_class}><a href="#tab-1">О товаре</a></li>
                <li ${tab2_class}><a href="#tab-2">Подробное описание</a></li>
                <li ${tab3_class}><a href="#tab-3">Отзывы</a></li>
            </ul>
        </div>
        <div class="tab">
            <div id = "tab-1" class="tab-content" ${tab1_style}>
                ${product_description}
            </div>
            <div id = "tab-2" class="tab-content" ${tab2_style}>
                ${product_description}
            </div>
            <div id = "tab-3" class="tab-content" ${tab3_style}>
                tab-3
            </div>
        </div>
    </div>

</div>
</body>
</html>