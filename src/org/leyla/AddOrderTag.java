package org.leyla;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import org.leyla.bean.Basket;

public class AddOrderTag extends SimpleTagSupport {
    private String id;

    public void setId(String id) {
        this.id = id;
    }

    public void doTag() throws JspException, IOException {
        if (id == null || id.isEmpty()) {
            return;
        }

        int id = Integer.parseInt(this.id);

        Basket basket = (Basket) getJspContext().getAttribute("basket", PageContext.SESSION_SCOPE);

        if (basket == null) {
            basket = new Basket();
            getJspContext().setAttribute("basket", basket, PageContext.SESSION_SCOPE);
        }
        basket.addOrder(id);
    }
}
