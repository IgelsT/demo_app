import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductInfo {
  int id;
  String title;
  String shortDescription;
  String description;
  String mainPicture;
  int weight;
  int price;
  int likes;
  int teig;
  bool isLiked;

  ProductInfo(
      {this.id = 0,
      this.title = '',
      this.shortDescription = '',
      this.description = '',
      this.mainPicture = '',
      this.weight = 0,
      this.price = 0,
      this.likes = 0,
      this.teig = 1,
      this.isLiked = false});
}

List<ProductInfo> productList = [
  ProductInfo(
    id: 1,
    title: 'Маргарита',
    shortDescription: 'Пицца соус, сыр Моцарелла, специи.',
    description:
        'Пицца Маргарита – классическое итальянское блюдо. Томатный соус, базилик и сливочный вкус сыра Моцарелла порадует каждого.',
    mainPicture: 'assets/images/Margarita_700x700.jpg',
    weight: 480,
    price: 299,
    likes: 100,
    teig: 1,
    isLiked: true,
  ),
  ProductInfo(
    id: 2,
    title: 'С ветчиной и грибами',
    shortDescription:
        'Пицца соус, сыр Моцарелла, Ветчина, грибы шампиньоны, укроп.',
    description:
        'Знакомый каждому нежный вкус Ветчины, оттененный шампиньонами и дополненный сливочным сыром Моцарелла. Все  это в Пицце с ветчиной грибами.',
    mainPicture: 'assets/images/Pizza_s_vetchinoi_i_gribami_700x700.jpg',
    weight: 540,
    price: 350,
    likes: 120,
    teig: 2,
    isLiked: false,
  ),
  ProductInfo(
    id: 3,
    title: 'Охотничья',
    shortDescription:
        'Пицца соус, чеснок, сыр Моцарелла, огурцы маринованные, колбаски Охотничьи полукопченые, болгарский перец, укроп.',
    description:
        'Пикантное сочетание маринованных огурчиков и полукопчёных Охотничьих колбасок, приправленных чесноком, подарит вам настоящие острые впечатления.',
    mainPicture: 'assets/images/_Ohotnichia_700x700.jpg',
    weight: 550,
    price: 370,
    likes: 78,
    teig: 2,
    isLiked: false,
  ),

// ------------------------
  ProductInfo(
    id: 4,
    title: 'Маргарита',
    shortDescription: 'Пицца соус, сыр Моцарелла, специи.',
    description:
        'Пицца Маргарита – классическое итальянское блюдо. Томатный соус, базилик и сливочный вкус сыра Моцарелла порадует каждого.',
    mainPicture: 'assets/images/Margarita_700x700.jpg',
    weight: 480,
    price: 299,
    likes: 100,
    teig: 1,
    isLiked: false,
  ),
  ProductInfo(
    id: 5,
    title: 'С ветчиной и грибами',
    shortDescription:
        'Пицца соус, сыр Моцарелла, Ветчина, грибы шампиньоны, укроп.',
    description:
        'Знакомый каждому нежный вкус Ветчины, оттененный шампиньонами и дополненный сливочным сыром Моцарелла. Все  это в Пицце с ветчиной грибами.',
    mainPicture: 'assets/images/Pizza_s_vetchinoi_i_gribami_700x700.jpg',
    weight: 540,
    price: 350,
    likes: 120,
    teig: 2,
    isLiked: false,
  ),
  ProductInfo(
    id: 6,
    title: 'Охотничья',
    shortDescription:
        'Пицца соус, чеснок, сыр Моцарелла, огурцы маринованные, колбаски Охотничьи полукопченые, болгарский перец, укроп.',
    description:
        'Пикантное сочетание маринованных огурчиков и полукопчёных Охотничьих колбасок, приправленных чесноком, подарит вам настоящие острые впечатления.',
    mainPicture: 'assets/images/_Ohotnichia_700x700.jpg',
    weight: 550,
    price: 370,
    likes: 78,
    teig: 2,
    isLiked: false,
  ),

// ------------------------
  ProductInfo(
    id: 7,
    title: 'Маргарита',
    shortDescription: 'Пицца соус, сыр Моцарелла, специи.',
    description:
        'Пицца Маргарита – классическое итальянское блюдо. Томатный соус, базилик и сливочный вкус сыра Моцарелла порадует каждого.',
    mainPicture: 'assets/images/Margarita_700x700.jpg',
    weight: 480,
    price: 299,
    likes: 100,
    teig: 1,
    isLiked: false,
  ),
  ProductInfo(
    id: 8,
    title: 'С ветчиной и грибами',
    shortDescription:
        'Пицца соус, сыр Моцарелла, Ветчина, грибы шампиньоны, укроп.',
    description:
        'Знакомый каждому нежный вкус Ветчины, оттененный шампиньонами и дополненный сливочным сыром Моцарелла. Все  это в Пицце с ветчиной грибами.',
    mainPicture: 'assets/images/Pizza_s_vetchinoi_i_gribami_700x700.jpg',
    weight: 540,
    price: 350,
    likes: 120,
    teig: 2,
    isLiked: false,
  ),
  ProductInfo(
    id: 9,
    title: 'Охотничья',
    shortDescription:
        'Пицца соус, чеснок, сыр Моцарелла, огурцы маринованные, колбаски Охотничьи полукопченые, болгарский перец, укроп.',
    description:
        'Пикантное сочетание маринованных огурчиков и полукопчёных Охотничьих колбасок, приправленных чесноком, подарит вам настоящие острые впечатления.',
    mainPicture: 'assets/images/_Ohotnichia_700x700.jpg',
    weight: 550,
    price: 370,
    likes: 78,
    teig: 2,
    isLiked: false,
  ),
];

List<ProductInfo> allItems = [];

class CartInfo {
  int id = 0;
  int count = 0;
  int price = 0;

  CartInfo(this.id, this.count, this.price);
}

class CartController extends GetxController {
  List<CartInfo> cartList = [];

  var totalPrice = 0;
  var totalCount = 0;

  bool isInCart(id) {
    int cartIdx = cartList.indexWhere((el) => el.id == id);
    if (cartIdx == -1) return false;
    return true;
  }

  addToCart(id) {
    int itemIdx = productList.indexWhere((el) => el.id == id);
    if (itemIdx != -1) {
      int cartIdx = cartList.indexWhere((el) => el.id == id);
      if (cartIdx != -1) {
        cartList[cartIdx].count++;
        cartList[cartIdx].price = productList[itemIdx].price;
      } else {
        cartList.add(CartInfo(id, 1, productList[itemIdx].price));
      }
    }
    updateCart();
  }

  removeFromCart(id) {
    int itemIdx = productList.indexWhere((el) => el.id == id);
    if (itemIdx != -1) {
      int cartIdx = cartList.indexWhere((el) => el.id == id);
      if (cartIdx != -1) {
        if (cartList[cartIdx].count - 1 == 0) {
          Get.defaultDialog(
            title: "Удалить из корзины?",
            middleText: productList[itemIdx].title,
            textConfirm: "Да",
            textCancel: "Отмена",
            barrierDismissible: false,
            confirm: ElevatedButton(
                onPressed: () {
                  cartList.removeAt(cartIdx);
                  updateCart();
                  Get.back();
                },
                child: const Text("Да")),
            cancel: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Отмена")),
          );
        } else {
          cartList[cartIdx].count--;
          cartList[cartIdx].price = productList[itemIdx].price;
        }
      }
    }
    updateCart();
  }

  clearCart() {
    cartList = [];
    totalPrice = 0;
    totalCount = 0;

    updateCart();
  }

  updateCart() {
    totalPrice = cartList.fold(0, (summ, el) => summ + el.count * el.price);
    totalCount = cartList.fold(0, (summ, el) => summ + el.count);
    update();
  }
}

ProductInfo getProduct(id) {
  try {
    return productList.firstWhere((el) => el.id == id);
  } catch (e) {
    rethrow;
  }
}

bool getIsLiked(id) {
  int item = productList.indexWhere((el) => el.id == id);
  if (item == -1) return false;
  return productList[item].isLiked;
}

int getLikes(id) {
  int item = productList.indexWhere((el) => el.id == id);
  if (item == -1) return 0;
  return productList[item].likes;
}

void toggleLike(id) {
  int item = productList.indexWhere((el) => el.id == id);
  if (item != -1) {
    if (productList[item].isLiked) {
      productList[item].isLiked = false;
      productList[item].likes--;
    } else {
      productList[item].isLiked = true;
      productList[item].likes++;
    }
  }
}
