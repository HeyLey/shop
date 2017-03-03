package org.leyla;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// создание списка продуктов
public class ProductsProvider {

    private static List<Product> allProducts;

    static {
        allProducts = Arrays.asList(
                new Product(1, "Трусы", "Описание", 100, "/img/img10.png"),
                new Product(2, "Майка", "Описание", 100, "/img/img11.png"),
                new Product(3, "Фуфайка", "Описание", 100, "/img/img12.png"),
                new Product(4, "Трусы", "Описание", 100, "/img/img16.png"),
                new Product(5, "Майка", "Описание", 100, "/img/img17.png"),
                new Product(6, "Фуфайка", "Описание", 100, "/img/img18.png"),
                new Product(1, "Трусы", "Описание", 100, "/img/img22.png"),
                new Product(2, "Майка", "Описание", 100, "/img/img23.png"),
                new Product(3, "Фуфайка", "Описание", 100, "/img/img24.png")
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
