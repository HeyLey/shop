package org.leyla;


public class OrderPart {
    private Product product;
    private int number;

    public OrderPart() {
    }

    public OrderPart(Product product, int number) {
        this.product = product;
        this.number = number;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }
}
