<%@ page import="org.leyla.Product" %>
<%@ page import="org.leyla.ProductsProvider" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String query = request.getParameter("query");
    if (query != null) {
        Cookie cookie = new Cookie("query", query);
        response.addCookie(cookie);
    } else {
        query = (String) request.getAttribute("query");
    }

    for (Product product : ProductsProvider.getProducts(query)) {
        request.setAttribute("product", product);
%>
<jsp:include page="/product.jsp"/>
<% } %>
