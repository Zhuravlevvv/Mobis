<!DOCTYPE html>
<html>
<head>
    <title>Mobis | Информация о телефоне</title>
</head>
<body>
    <h1>Mobis</h1><hr>
    <h4>Подробная информация о телефоне</h4>
    <b>Модель телефона: </b>${product.title}<br>
    <b>Описание: </b>${product.description}<br>
    <b>Цена: </b>${product.price}<br>
    <b>Город: </b>${product.city}<br>
    <b>Артикул: </b>${product.vendorCode}<br>
    <b>Продавец: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
    <b>Почта для связи: </b>${product.user.email}<br>
</body>
</html>
