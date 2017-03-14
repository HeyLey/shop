package org.leyla;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// создание списка продуктов
public class ProductsProvider {

    private static List<Product> allProducts;

    static {
        //TODO: заполнить ProductInfo
        allProducts = Arrays.asList(
                new Product(1, "Дубленка Mondial", "59 999 руб.", 59999, "/img/img10.png", "/img/img10.jpg", "Зеленый", "Коричневый", "Красный", "S", "M", "L"),
                new Product(2, "Куртка кожаная Karl Lagerfeld", "64 999 руб.", 64999, "/img/img11.png","/img/img11.jpg", "Серебристый", "Золотой", "Бронза", "S", "M", "L"),
                new Product(3, "Пальто Weekend Max Mara", "59 999 руб.", 59999, "/img/img12.png", "/img/img12.jpg", "Красный", "Синий", "Черный", "S", "M", "L"),
                new Product(4, "Платье To be Bride", "69 700 руб.",69700, "/img/img16.png", "/img/img16.jpg", "Черно-бежевый", "Сине-бежевый", "Бежевый", "S", "M", "L"),
                new Product(5, "Платье Фламенко Michal Nergin", "110 900 руб.", 110900,  "/img/img17.png", "/img/img17.jpg", "Черно-золотистый", "Черно-серебристый", "Серебристо-золотой", "S", "M", "L"),
                new Product(6, "Платье Red Valentino", "59 399 руб.", 59399, "/img/img18.png", "/img/img18.jpg", "Черный", "Синий", "Красный", "S", "M", "L"),
                new Product(7, "Туфли Casadei", "47 499 руб.", 47499,  "/img/img22.png", "/img/img22.jpg", "Розово-красный", "Розово-синий", "Розово-зеленый", "37", "38", "39"),
                new Product(8, "Туфли Nando Muzi", "33 999 руб.", 33999,  "/img/img23.png", "/img/img23.jpg", "Черный", "Серый", "Белый", "37", "38", "39"),
                new Product(9, "Туфли Loriblu", "32 999 руб.", 32999,  "/img/img24.png", "/img/img24.jpg", "Синий", "Розовый", "Желтый", "37", "38", "39"),
                new Product(10, "Блуза Али Michal Nergin", "38 490 руб.", 38490, "/img/img1.png", "/img/img1.jpg", "Бирюзовый", "Розовый", "Желтый", "S", "M", "L"),
                new Product(11, "Блуза Cavalli Class", "27 499 руб.", 27499, "/img/img2.png","/img/img2.jpg", "Розовый", "Желтый", "Бирюзовый", "S", "M", "L"),
                new Product(12, "Блуза Sportmax Code", "23 999 руб.", 23999, "/img/img3.png", "/img/img3.jpg", "Черный", "Красный", "Синий", "S", "M", "L"),
                new Product(13, "Юбка Twin-Set Simona Barbieri", "25 599 руб.",25599, "/img/img4.png", "/img/img4.jpg", "Серый", "Черный", "Бежевый", "S", "M", "L"),
                new Product(14, "Юбка Elisabetta Franchi", "15 999 руб.", 15999,  "/img/img5.png", "/img/img5.jpg", "Красный", "Черный", "Синий", "S", "M", "L"),
                new Product(15, "Юбка Elmira Markes", "14 100 руб.", 14100, "/img/img6.png", "/img/img6.jpg", "Черный", "Серебристый", "Золотой", "S", "M", "L"),
                new Product(31, "Брюки Boutique Moschino", "28 499 руб.", 28499, "/img/img31.png", "/img/img31.jpg", "Желтый", "Розовый", "Голубой", "S", "M", "L"),
                new Product(32, "Брюки French Connection", "26 999 руб.", 26999,  "/img/img32.png", "/img/img32.jpg", "Коричневый", "Красный", "Черный", "S", "M", "L"),
                new Product(33, "Брюки Max&Co", "19 999 руб.", 19999, "/img/img33.png", "/img/img33.jpg", "Бордовый", "Черный", "Синий", "S", "M", "L"),


                new Product(16, "Рубашка Just Cavalli", "19 999 руб.", 19999, "/img/img7.png", "/img/img7.jpg", "Черный", "Синий", "Серый", "S", "M", "L"),
                new Product(17, "Рубашка Love Moschino", "14 999 руб.", 14999, "/img/img8.png","/img/img8.jpg", "Белый", "Черный", "Серый", "S", "M", "L"),
                new Product(18, "Рубашка NIGHT RIDE Affliction", "11 499 руб.", 11499, "/img/img9.png", "/img/img9.jpg", "Красный", "Серый", "Черный", "S", "M", "L"),
                new Product(19, "Пуховик Woolrich", "82 199 руб.",82199, "/img/img13.png", "/img/img13.jpg", "Черный", "Зеленый", "Коричневый", "S", "M", "L"),
                new Product(20, "Дубленка Mondial", "69 900 руб.", 69900,  "/img/img14.png", "/img/img14.jpg", "Черный", "Коричневый", "Бежевый", "S", "M", "L"),
                new Product(21, "Пуховик C.P. Company", "53 899 руб.", 53899 , "/img/img15.png", "/img/img15.jpg", "Красный", "Синий", "Черный", "S", "M", "L"),
                new Product(22, "Брюки спортивные Markus Lupfer", "27 399 руб.", 27399,  "/img/img19.png", "/img/img19.jpg", "Черно-серый", "Черно-синий", "Черно-белый", "S", "M", "L"),
                new Product(23, "Брюки Boss", "21 000 руб.", 21000,  "/img/img20.png", "/img/img20.jpg", "Черный", "Серый", "Белый", "S", "M", "L"),
                new Product(24, "Чиносы Iceberg", "16 299 руб.", 16299 ,  "/img/img21.png", "/img/img21.jpg", "Белый", "Серый", "Синий", "S", "M", "L"),
                new Product(25, "Пиджак Boss", "48 000 руб.", 48000, "/img/img25.png", "/img/img25.jpg", "Черный", "Серый", "Белый", "S", "M", "L"),
                new Product(26, "Пиджак Joop!", "35 999 руб.", 35999, "/img/img26.png","/img/img26.jpg", "Серый", "Белый", "Черный", "S", "M", "L"),
                new Product(27, "Пиджак Tommy Hilfiger", "33 990 руб.", 33990, "/img/img27.png", "/img/img27.jpg", "Бежевый", "Черный", "Серый", "S", "M", "L"),
                new Product(28, "Лоферы Roberto Cavalli", "39 999 руб.",39999, "/img/img28.png", "/img/img28.jpg", "Черный", "Серый", "Коричневый", "41", "42", "43"),
                new Product(29, "Туфли Roberto Botticelli", "49 399 руб.", 49399,  "/img/img29.png", "/img/img29.jpg", "Черный", "Коричневый", "Бежевый", "41", "42", "43"),
                new Product(30, "Туфли Moma", "29 999 руб.", 29999, "/img/img30.png", "/img/img30.jpg", "Синий", "Черный", "Белый", "41", "42", "43"),
                new Product(34, "Футболка Plein Sport", "24 499 руб.",24499, "/img/img34.png", "/img/img34.jpg", "Белый", "Черный", "Красный", "S", "M", "L"),
                new Product(35, "Поло Love Moschino", "18 999 руб.", 18999,  "/img/img35.png", "/img/img35.jpg", "Красный", "Синий", "Зеленый", "S", "M", "L"),
                new Product(36, "Футболка Versace Jeans", "14 499 руб.", 14499, "/img/img36.png", "/img/img36.jpg", "Зеленый", "Желтый", "Синий", "S", "M", "L")

        );
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
