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
                new Product(1, "Дубленка Mondial", "59 999 руб.", 59999, "/img/img10.png", "/img/img10.jpg", "Зеленый", "Коричневый", "Красный"),
                new Product(2, "Куртка кожаная Karl Lagerfeld", "64 999 руб.", 64999, "/img/img11.png","/img/img11.jpg", "Серебристый", "Золотой", "Бронза"),
                new Product(3, "Пальто Weekend Max Mara", "59 999 руб", 59999, "/img/img12.png", "/img/img12.jpg", "Красный", "Синий", "Черный"),
                new Product(4, "Платье To be Bride", "69 700 руб",69700, "/img/img16.png", "/img/img16.jpg", "Черно-бежевый", "Сине-бежевый", "Бежевый"),
                new Product(5, "Платье Фламенко Michal Nergin", "110 900 руб.", 110900,  "/img/img17.png", "/img/img17.jpg", "Черно-золотистый", "Черно-серебристый", "Серебристо-золотой"),
                new Product(6, "Платье Red Valentino", "59 399 руб.", 59399, "/img/img18.png", "/img/img18.jpg", "Черный", "Синий", "Красный"),
                new Product(7, "Туфли Casadei", "47 499 руб.", 47499,  "/img/img22.png", "/img/img22.jpg", "Розово-красный", "Розово-синий", "Розово-зеленый"),
                new Product(8, "Туфли Nando Muzi", "33 999 руб.", 33999,  "/img/img23.png", "/img/img23.jpg", "Черный", "Серый", "Белый"),
                new Product(9, "Туфли Loriblu", "32 999 руб.", 32999,  "/img/img24.png", "/img/img24.jpg", "Синий", "Розовый", "Желтый")
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
