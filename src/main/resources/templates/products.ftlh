<!DOCTYPE html>
<html>
<head>
    <title>Mobis</title>
</head>
<body>
<h1>Mobis </h1><hr>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <hr>
    <#if user.isAdmin()>
            <a href="/admin">Панель администратора</a>
    </#if>
<#else>
    <a href="/login">Войти</a></h1>
</#if>
<hr>
<h4>Продажа мобильной техники в Ульяновске</h4>
<form action="/" method="get">
    Поиск телефона по названию: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
        <h3>На данный момент телефонов нет в продаже!</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Выставить телефон на продажу</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
         Модель телефона: <input type="text" name="title"/><br><br>
         Описание: <input type="text" name="description"/><br><br>
         Цена: <input type="number" name="price"/><br><br>
         Город: <input type="text" name="city"/><br><br>
         Артикул: <input type="text" name="vendorCode"/><br><br>
         <input type="hidden" name="_csrf" value="${_csrf.token}">
         <input type="submit" value="Добавить товар"/>
    </form>
</#if>
</body>
</html>
