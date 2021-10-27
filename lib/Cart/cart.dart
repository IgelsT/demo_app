import 'package:demo_app/Components/main_template.dart';
import 'package:demo_app/Components/navigation.dart';
import 'package:demo_app/Order/order.dart';
import 'package:demo_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final _cartController = Get.find<CartController>();

  List<Widget> _getCartRows() {
    List<Widget> _list = [];
    for (CartInfo row in _cartController.cartList) {
      try {
        ProductInfo item = getProduct(row.id);
        _list.add(CartRow(row, item));
        // ignore: empty_catches
      } catch (e) {}
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return MainTemplate(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    globalNav.currentPath = '/';
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                OutlinedButton(
                  child: const Text('Оформить заказ'),
                  onPressed: () {
                    if (_cartController.totalCount != 0) {
                      if (globalNav.currentPath == '/cart') {
                        globalNav.currentPath = '/order';
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderPage()));
                      }
                    }
                  },
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(child: GetBuilder<CartController>(
                builder: (controller) {
                  return Column(
                    children: _getCartRows(),
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CartRow extends StatelessWidget {
  CartInfo cartItem;
  ProductInfo productItem;
  CartRow(this.cartItem, this.productItem, {Key? key}) : super(key: key);

  final _cartController = Get.find<CartController>();

  Widget count(count) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              _cartController.addToCart(productItem.id);
            },
            icon: const Icon(Icons.add),
          ),
          SizedBox(
            width: 18,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                count.toString(),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _cartController.removeFromCart(productItem.id);
            },
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.asset(
            productItem.mainPicture,
            width: 60,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Align(
                alignment: Alignment.centerLeft,
                child: mainTitleLeft(productItem.title)),
          ),
          count(cartItem.count),
        ],
      ),
    );
  }
}
