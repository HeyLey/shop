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
        <div class="size_tab">
            <a href="/menu/size_table.jsp">Таблица размеров</a>
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
        <div id="tab-1" class="tab-content" ${tab1_style}>
        ${product_description}
        </div>
        <div id="tab-2" class="tab-content" ${tab2_style}>
        ${product_description}
        </div>
        <div id="tab-3" class="tab-content" ${tab3_style}>
            tab-3
        </div>
    </div>
</div>