<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<c:set var="autorisation" scope="session" value="true"/>

<h2>Авторизация прошла успешна</h2>
<a href="/basket.jsp">В корзину</a>