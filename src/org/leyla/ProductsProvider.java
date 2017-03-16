package org.leyla;


import java.util.ArrayList;
import java.util.List;

// создание списка продуктов
public class ProductsProvider {

    private static List<Product> allProducts;

    static {
        allProducts = new ArrayList<>();
        addProduct("Дубленка Mondial", "59 999 руб.", 59999, "/img/img10.png", "/img/img10.jpg")
                .withLongDescription("Тут идет длинное описание")
                .withColor("Зеленый", "Коричневый", "Красный")
                .withCloseSize();

        addProduct("Куртка кожаная Karl Lagerfeld", "64 999 руб.", 64999, "/img/img11.png", "/img/img11.jpg")
                .withColor("Серебристый", "Золотой", "Бронза")
                .withCloseSize();

        addProduct("Пальто Weekend Max Mara", "59 999 руб.", 59999, "/img/img12.png", "/img/img12.jpg")
                .withColor("Красный", "Синий", "Черный")
                .withCloseSize();

        addProduct("Платье To be Bride", "69 700 руб.", 69700, "/img/img16.png", "/img/img16.jpg")
                .withColor("Черно-бежевый", "Сине-бежевый", "Бежевый")
                .withCloseSize();

        addProduct("Платье Фламенко Michal Nergin", "110 900 руб.", 110900, "/img/img17.png", "/img/img17.jpg")
                .withColor("Черно-золотистый", "Черно-серебристый", "Серебристо-золотой")
                .withCloseSize();

        addProduct("Платье Red Valentino", "59 399 руб.", 59399, "/img/img18.png", "/img/img18.jpg")
                .withColor("Черный", "Синий", "Красный")
                .withCloseSize();

        addProduct("Туфли Casadei", "47 499 руб.", 47499, "/img/img22.png", "/img/img22.jpg")
                .withColor("Розово-красный", "Розово-синий", "Розово-зеленый")
                .withShoeSize();

        addProduct("Туфли Nando Muzi", "33 999 руб.", 33999, "/img/img23.png", "/img/img23.jpg")
                .withColor("Черный", "Серый", "Белый")
                .withShoeSize();

        addProduct("Туфли Loriblu", "32 999 руб.", 32999, "/img/img24.png", "/img/img24.jpg")
                .withColor("Синий", "Розовый", "Желтый")
                .withShoeSize();

        addProduct("Блуза Али Michal Nergin", "38 490 руб.", 38490, "/img/img1.png", "/img/img1.jpg")
                .withColor("Бирюзовый", "Розовый", "Желтый")
                .withCloseSize();

        addProduct("Блуза Cavalli Class", "27 499 руб.", 27499, "/img/img2.png", "/img/img2.jpg")
                .withColor("Розовый", "Желтый", "Бирюзовый")
                .withCloseSize();

        addProduct("Блуза Sportmax Code", "23 999 руб.", 23999, "/img/img3.png", "/img/img3.jpg")
                .withColor("Черный", "Красный", "Синий")
                .withCloseSize();

        addProduct("Юбка Twin-Set Simona Barbieri", "25 599 руб.", 25599, "/img/img4.png", "/img/img4.jpg")
                .withColor("Серый", "Черный", "Бежевый")
                .withCloseSize();

        addProduct("Юбка Elisabetta Franchi", "15 999 руб.", 15999, "/img/img5.png", "/img/img5.jpg")
                .withColor("Красный", "Черный", "Синий")
                .withCloseSize();

        addProduct("Юбка Elmira Markes", "14 100 руб.", 14100, "/img/img6.png", "/img/img6.jpg")
                .withColor("Черный", "Серебристый", "Золотой")
                .withCloseSize();

        addProduct("Брюки Boutique Moschino", "28 499 руб.", 28499, "/img/img31.png", "/img/img31.jpg")
                .withColor("Желтый", "Розовый", "Голубой")
                .withCloseSize();

        addProduct("Брюки French Connection", "26 999 руб.", 26999, "/img/img32.png", "/img/img32.jpg")
                .withColor("Коричневый", "Красный", "Черный")
                .withCloseSize();

        addProduct("Брюки Max&Co", "19 999 руб.", 19999, "/img/img33.png", "/img/img33.jpg")
                .withColor("Бордовый", "Черный", "Синий")
                .withCloseSize();

        // -----------------------------------

        addProduct("Рубашка Just Cavalli", "19 999 руб.", 19999, "/img/img7.png", "/img/img7.jpg")
                .withColor("Черный", "Синий", "Серый")
                .withCloseSize();

        addProduct("Рубашка Love Moschino", "14 999 руб.", 14999, "/img/img8.png", "/img/img8.jpg")
                .withColor("Белый", "Черный", "Серый")
                .withCloseSize();

        addProduct("Рубашка NIGHT RIDE Affliction", "11 499 руб.", 11499, "/img/img9.png", "/img/img9.jpg")
                .withColor("Красный", "Серый", "Черный")
                .withCloseSize();

        addProduct("Пуховик Woolrich", "82 199 руб.", 82199, "/img/img13.png", "/img/img13.jpg")
                .withColor("Черный", "Зеленый", "Коричневый")
                .withCloseSize();

        addProduct("Дубленка Mondial", "69 900 руб.", 69900, "/img/img14.png", "/img/img14.jpg")
                .withColor("Черный", "Коричневый", "Бежевый")
                .withCloseSize();

        addProduct("Пуховик C.P. Company", "53 899 руб.", 53899, "/img/img15.png", "/img/img15.jpg")
                .withColor("Красный", "Синий", "Черный")
                .withCloseSize();

        addProduct("Брюки спортивные Markus Lupfer", "27 399 руб.", 27399, "/img/img19.png", "/img/img19.jpg")
                .withColor("Черно-серый", "Черно-синий", "Черно-белый")
                .withCloseSize();

        addProduct("Брюки Boss", "21 000 руб.", 21000, "/img/img20.png", "/img/img20.jpg")
                .withColor("Черный", "Серый", "Белый")
                .withCloseSize();

        addProduct("Чиносы Iceberg", "16 299 руб.", 16299, "/img/img21.png", "/img/img21.jpg")
                .withColor("Белый", "Серый", "Синий")
                .withCloseSize();

        addProduct("Пиджак Boss", "48 000 руб.", 48000, "/img/img25.png", "/img/img25.jpg")
                .withColor("Черный", "Серый", "Белый")
                .withCloseSize();

        addProduct("Пиджак Joop!", "35 999 руб.", 35999, "/img/img26.png", "/img/img26.jpg")
                .withColor("Серый", "Белый", "Черный")
                .withCloseSize();

        addProduct("Пиджак Tommy Hilfiger", "33 990 руб.", 33990, "/img/img27.png", "/img/img27.jpg")
                .withColor("Бежевый", "Черный", "Серый")
                .withCloseSize();

        addProduct("Лоферы Roberto Cavalli", "39 999 руб.", 39999, "/img/img28.png", "/img/img28.jpg")
                .withColor("Черный", "Серый", "Коричневый")
                .withShoeSize();

        addProduct("Туфли Roberto Botticelli", "49 399 руб.", 49399, "/img/img29.png", "/img/img29.jpg")
                .withColor("Черный", "Коричневый", "Бежевый")
                .withShoeSize();

        addProduct("Туфли Moma", "29 999 руб.", 29999, "/img/img30.png", "/img/img30.jpg")
                .withColor("Синий", "Черный", "Белый")
                .withShoeSize();

        addProduct("Футболка Plein Sport", "24 499 руб.", 24499, "/img/img34.png", "/img/img34.jpg")
                .withColor("Белый", "Черный", "Красный")
                .withCloseSize();

        addProduct("Поло Love Moschino", "18 999 руб.", 18999, "/img/img35.png", "/img/img35.jpg")
                .withColor("Красный", "Синий", "Зеленый")
                .withCloseSize();

        addProduct("Футболка Versace Jeans", "14 499 руб.", 14499, "/img/img36.png", "/img/img36.jpg")
                .withColor("Зеленый", "Желтый", "Синий")
                .withCloseSize();
    }


    private static Product addProduct(String name, String description, int price, String img, String img_) {
        Product product = new Product(allProducts.size(), name, description, price, img, img_);

        allProducts.add(product);
        return product;
    }


    // поиск продукта (фильтрация)

    public static List<Product> getProducts(String query) {
        List<Product> result = new ArrayList<>();
        for (Product p : allProducts) {
            if (query == null) {
                result.add(p);
            } else if (p.getName().toLowerCase().contains(query.toLowerCase()) ||
                    p.getDescription().toLowerCase().contains(query.toLowerCase())) {
                result.add(p);
            }
        }
        return result;
    }

    public static Product getProduct(int id) {
        for (Product p : allProducts) {
            if (p.getId() == id) {
                return p;
            }
        }
        return null;
    }
}
