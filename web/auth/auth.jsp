<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Auth</title>
</head>
<body>
<form action="j_security_check" method="POST" name="loginForm">

    <input type="text" name="j_username" placeholder="имя" size="20"/><br>

    <label><fmt:message key="txtPassword"/></label><br>

    <input type="password" name="j_password" size="20"/><br>

    <input type="submit" value="Ввод"/>

</form>
</body>
</html>
