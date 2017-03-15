<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Auth</title>
</head>
<body>
<pre>
<form action="j_security_check" method="POST" name="loginForm">
    <input type="text" name="j_username" placeholder="имя" size="20"/>
    <label><fmt:message key="txtPassword"/></label>
    <input type="password" name="j_password" placeholder="пароль" size="20"/>



    <input type="submit" value="Вход"/>

</form> </pre>
</body>
</html>
