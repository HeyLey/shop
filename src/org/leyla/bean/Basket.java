package org.leyla.bean;

import org.leyla.Product;
import org.leyla.ProductsProvider;

import java.util.ArrayList;
import java.util.List;

public class Basket {
    private List<OrderPart> orders = new ArrayList<>();

    public List<OrderPart> getOrders() {
        return orders;
    }

    public void addOrder(int id) {
        Product product = ProductsProvider.getProduct(id);
        if (product == null) {
            return;
        }
        for (OrderPart o : orders) {
            if (o.getProduct() == product) {
                o.setNumber(o.getNumber() + 1);
                return;
            }
        }
        orders.add(new OrderPart(product, 1));
    }
}
