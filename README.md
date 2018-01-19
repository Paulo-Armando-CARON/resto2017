# Restaurant exercise

> ## A model is visible [here](http://192.168.0.101:81/resto)

_"Construire le site de e-commerce d'un restaurant permettant de réserver en ligne une table et d'acheter (puis se faire livrer) des produits alimentaires.
Le site sert autant aux clients qu'aux salariés du restaurant qui, quand ils se connecteront, pourront suivre les commandes, les réservations, le catalogue de produits alimentaires."_

### API endpoints

- [Add product](http://192.168.0.101:81/resto/index.php/admin/meal)
- [Add customer](http://192.168.0.101:81/resto/index.php/user)
- [Add (admin) user](http://192.168.0.101:81/resto/index.php/admin/user)
- [Booking action](http://192.168.0.101:81/resto/index.php/booking)
- [Order meal](http://192.168.0.101:81/resto/index.php/order)
- [Payment order](http://192.168.0.101:81/resto/index.php/order/payment?id=6)
- [Payment succes](http://api.3wa.lo/resto/index.php/order/payment/success)

### Instructions

- 1) You __must__ start from Database conception

What tables, tables structure, columns type, default value, foreign keys etc.

What kind of type __could__ be the `order_detail` table?

- 2) Start with the add product form & action

a) Handle first the insertion in the product table

[lastInsertId() function](http://php.net/manual/fr/pdo.lastinsertid.php)

b) Handle the upload file

Restrict to image only and rename the image using id product as a reference

c) Add some _**fixtures**_ in your table

### External resources

- [Cross reference table](https://en.wikipedia.org/wiki/Associative_entity)
- [Entité propriétaire & inverse](https://openclassrooms.com/courses/developpez-votre-site-web-avec-le-framework-symfony2/les-relations-entre-entites-avec-doctrine2)
- [MVC model on wikipedia](https://fr.wikipedia.org/wiki/Mod%C3%A8le-vue-contr%C3%B4leur)
