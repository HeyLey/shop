<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="/scripts/tabs.js"></script>
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
            <li><a class="dropdown-top">Moя корзина</a></li>
        </div>
    </div>
</ul>

<div class="top-container">
    <ul class="main-menu">
        <li><a href="#women">Для женщин</a></li>
        <ul class="sub-menu">
            <li><a href="#1">Платья</a></li>
            <li><a href="#2">Юбки</a></li>
            <li><a href="#3">Блузки</a></li>
            <li><a href="#4">Верхняя одежда</a></li>
            <li><a href="#5">Обувь</a></li>
        </ul>
        <li><a href="#man">Для мужчин</a></li>
        <ul class="sub-menu">
            <li><a href="#1">Костюмы</a></li>
            <li><a href="#2">Брюки</a></li>
            <li><a href="#3">Рубашки</a></li>
            <li><a href="#4">Верхняя одежда</a></li>
            <li><a href="#5">Обувь</a></li>
        </ul>
    </ul>
    <div class="data-container">
        <img src="/dress.jpg" class="image-preview"/>

        <div class="content-container">
            <div class="product-header">Платье BCBGMAXAZRIA</div>
            <div class="price">72 000 руб</div>
            <div class="main-param">
                Цвет: <select name="size">
                <option value="r1">Коричневый</option>
            </select><br/>
                Размер:
                <select name="size">
                    <option value="r1">S</option>
                    <option value="r2">M</option>
                    <option value="r3">L</option>
                </select><br/>
            </div>
            <button type="button" id="buy">${buy_button}</button>
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
                Платье BCBGMAXAZRIA выполнено из сетчатого текстиля с вышивкой.
                Особенности:
                подкладка, глубокий вырез на спинке,
                застежка на молнию сзади,
                вышивка металлической нитью.
            </div>
            <div id = "tab-2" class="tab-content" ${tab2_style}>
                tСостав: Материал 1: Нейлон - 73%, Металлизированное волокно - 12%, Район - 9%, Спандекс - 4%, Модал - 2%;
                Материал 2: Полиэстер - 100%
                Материал подкладки: Полиэстер - 90%, Спандекс - 10%
                Длина рукава: 20 см
                Длина: 135 см
                Размер модели на фото: 44
                Рост модели на фото: 178
                Параметры модели: 85-61-92
                Длина: макси
                Рукав: короткий
                Застежка: на молнии
                Цвет: золотой
                Сезон: Мульти
                Стиль: Выход в свет
                Коллекция: Осень-зима
                Детали одежды: вышивка, сетка
                Узор: Другое
                Вырез/воротник: Круглый
                Тип размера: Стандартный
                Тип платья: Приталенное
                Назначение платья: Для особого случая
                Подкладка: 1
                Артикул: BC529EWJAV98
            </div>
            <div id = "tab-3" class="tab-content" ${tab3_style}>
                tab-3
            </div>
        </div>
    </div>

</div>
</body>
</html>