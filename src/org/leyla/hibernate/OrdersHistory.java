package org.leyla.hibernate;

import org.hibernate.Session;
import org.leyla.Product;
import org.leyla.ProductsProvider;
import org.leyla.bean.OrderBean;
import org.leyla.bean.OrderPart;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrdersHistory {
    public List<OrderBean> getOrders(String userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        List<OrderBean> result = new ArrayList<>();

        for (Object obj: session.createQuery("from UserOrder ").list()) {
            UserOrder order = (UserOrder) obj;

            String time = (new Date(order.getTime())).toString();

            OrderBean orderBean = new OrderBean(
                    order.getUserName(),
                    order.getAddress(),
                    order.isDelivery(),
                    time);

            List<OrderPart> parts = orderBean.getParts();
            int i = 0;
            for (Purchase purchase : order.getPurchases()) {
                Product product = ProductsProvider.getProduct(purchase.getProductId());
                parts.add(new OrderPart(i++, product, purchase.getNumber(), purchase.getColor(), purchase.getSize()));
            }
            result.add(orderBean);
        }
        return result;
    }
}
