ymaps.ready(init);

var shop_id = undefined;

function init() {

    var myMap = new ymaps.Map("map", {
        center: [59.978288, 30.335000],
        zoom: 12
    }, {
        searchControlProvider: 'yandex#search'
    });

    var shop1 = new ymaps.Placemark([59.984008, 30.351001], {
        balloonContent: 'Магазин 1',
        iconCaption: 'Харченко 19'
    }, {
        preset: 'islands#greenDotIcon'
    });

    shop1.events.add(['balloonopen'
    ], function (e) {
        $("#shop_addres").text("Харченко 19");
        shop_id = 1;
    });

    var shop2 = new ymaps.Placemark([59.970614, 30.318572], {
        balloonContent: 'Магазин 2',
        iconCaption: 'ул. Профессора Попова 4'
    }, {
        preset: 'islands#greenDotIcon'
    });

    shop2.events.add(['balloonopen'
    ], function (e) {
        $("#shop_addres").text("ул. Профессора Попова 4");
        shop_id = 2;
    });

    myMap.geoObjects
        .add(shop1)
        .add(shop2);
}


function make_order() {
    if (shop_id) {

    } else {
        alert("Выберите магазин");
    }
}