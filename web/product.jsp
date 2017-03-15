<%@ page import="java.util.Locale" %>
<%@ page import="java.util.ResourceBundle" %>
<jsp:useBean id="product" class="org.leyla.Product" scope="request"/>
<%
    Locale locale = new Locale("ru");

    String lang = request.getParameter("lang");

    if (lang != null && lang.startsWith("en")) {
        locale = Locale.ENGLISH;
    }

    if (lang != null && lang.startsWith("de")) {
        locale = Locale.GERMAN;
    }

    ResourceBundle myres = ResourceBundle.getBundle("messages", locale);

%>
<div class="product-preview-div">
    <jsp:getProperty name="product" property="name"/>
    <br/>
    <!-- ссылка на карточку продукта -->
    <a href="/shop/<%= locale.getLanguage() %>?id=<jsp:getProperty name="product" property="id"/>">
        <img src="<jsp:getProperty name="product" property="img"/>" class="small-img"/></a>
    <br/>
    <jsp:getProperty name="product" property="description"/>
    <br/>
    Price: <jsp:getProperty name="product" property="price"/>
    <br/>
    <button type="button" class="small-buy-button" onclick="buyProduct(<jsp:getProperty name="product" property="id"/>)"><%= myres.getString("BUY_BUTTON") %>
    </button>
</div>