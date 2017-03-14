package org.leyla;

import java.io.Serializable;

//товар

public class Product implements Serializable {
    private int id;
    private String name;
    private String description;
   // private String description_;
    private int price;
    private String img;
    private String img_;
    String[] colors = new String[3];
    String[] sizes = new String[3];

    public Product() {
    }

    public Product(int id, String name, String description, /*String description_,*/ int price, String img, String img_, String color1, String color2, String color3, String s1, String s2, String s3) {
        this.id = id;
        this.name = name;
        this.description = description;
      //  this.description = description_;
        this.price = price;
        this.img = img;
        this.img_ = img_;
        colors[0] = color1;
        colors[1] = color2;
        colors[2] = color3;
        sizes[0] = s1;
        sizes[1] = s2;
        sizes[2] = s3;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public String getPriceString() {
        return Integer.toString(price) + " руб." ;
    }

    public String getImg() {
        return img;
    }

    public String getImg_() {
        return img_;
    }

    public String getDescription() {
        return description;
    }

    //public String getDescription_() {
      //  return description_;
    //}

    public void setDescription(String description) {
        this.description = description;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setColor(int i) {
        this.colors[i] = colors[i];
    }

    public void setSize(int i) {
        this.sizes[i] = sizes[i];
    }

    public String getSize(int i) {
        return sizes[i];
    }

    public String getColor(int i) {
        return colors[i];
    }
}
