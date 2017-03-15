<%@ page import="java.util.Locale" %>
<%@ page import="java.util.ResourceBundle" %>
<jsp:useBean id="product" class="org.leyla.Product" scope="request"/>
<%

    Locale locale = new Locale("ru");

    Object obj = session.getAttribute("locale");
    if (obj != null) {
        locale = (Locale) obj;
    }

    ResourceBundle myres = ResourceBundle.getBundle("messages", locale);
%>
<div class="product-preview-div">
    <jsp:getProperty name="product" property="name"/>
    <br/>
    <!-- ссылка на карточку продукта -->
    <a href="/product_card.jsp?id=<jsp:getProperty name="product" property="id"/>">
        <img src="<jsp:getProperty name="product" property="img"/>" class="small-img"/></a>
    <br/>
    Price: <jsp:getProperty name="product" property="price"/>
    <br/>
    <button type="button" class="small-buy-button" onclick="buyProduct(<jsp:getProperty name="product" property="id"/>)"><%= myres.getString("BUY_BUTTON") %>
    </button>
</div>