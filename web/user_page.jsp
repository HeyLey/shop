<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!--В «шапке» списка находится вложенная (include) страница, содержащая

информацию о пользователе со следующими кнопками: «Вход», «Корзина», «История

покупок» и кнопка локализации (реализация будет после выполнения соответствующих

лабораторных работ). -->
<div class="corb">
    <ul>
        <c:choose>
            <c:when test="${not empty pageContext.request.userPrincipal}">
                <li>
                    <a>Пользователь: ${pageContext.request.userPrincipal.name}</a>
                </li>
                <li><a href="/secured/logout.jsp">Выход</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="/secured/login.jsp">Вход</a></li>
            </c:otherwise>
        </c:choose>
        <li><a href="/basket.jsp">Корзина</a></li>
        <li><a>История</a></li>
    </ul>
</div>
