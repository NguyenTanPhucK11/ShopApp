import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red',
        price: 19.99,
        imageUrl:
            'https://international.iitkgp.ac.in/static/website/img/BrandStore/Products/Piqur%20tees%20Image.jpg'),
    Product(
        id: 'p2',
        title: 'Blue Shirt',
        description: 'A blue shirt - it is pretty blue',
        price: 29.99,
        imageUrl:
            'https://cdn.shopify.com/s/files/1/0066/1769/4275/products/royal_ss_crew.jpg?v=1565623875'),
    Product(
        id: 'p3',
        title: 'Orange Shirt',
        description: 'A orange shirt - it is pretty orange',
        price: 39.99,
        imageUrl:
            'https://international.iitkgp.ac.in/static/website/img/BrandStore/Product%20Detail/New%20Orange%20tee%20Front.jpg'),
    Product(
        id: 'p4',
        title: 'White Shirt',
        description: 'A white shirt - it is pretty white',
        price: 49.99,
        imageUrl:
            'https://image.spreadshirtmedia.com/image-server/v1/mp/products/T1454A1MPA3853PT17X123Y46D1010653665S100/views/1,width=378,height=378,appearanceId=1,backgroundColor=F2F2F2,version=1585640294/img-3731-unisex-stars-stripes-t-shirt.jpg'),
  ];

  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem)=>prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    notifyListeners();
  }
}
