<!DOCTYPE html>
<html>
<head>
    <title>Mobis | Информация о пользователе</title>
</head>
<body>
<h1>Mobis</h1><hr>
<h3>Подробная информация о пользователе ${user.name}</h3><hr>
<b>Email: </b> ${user.email}<br>
<h4>Все товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Пользователь пока не добавил никаких товаров</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>