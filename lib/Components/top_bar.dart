import 'package:demo_app/Cart/cart.dart';
import 'package:demo_app/Components/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart';
import '../data.dart';

// ignore: use_key_in_widget_constructors
class TopBar extends StatelessWidget {
  // final _cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 60,
              height: 40,
              child: Image.asset(
                'assets/images/logo.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('М Е Г А  П И Ц Ц А'),
                    Text('Доставка пиццы'),
                    Text('+7 999 555 66 22'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (globalNav.currentPath == '/') {
                  globalNav.currentPath = '/cart';
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                }
              },
              child: GetBuilder<CartController>(builder: (controller) {
                return Container(
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Badge(
                        badgeContent: Text(
                          '${controller.totalCount}',
                          style: const TextStyle(fontSize: 10),
                        ),
                        child: Icon(
                          (controller.totalCount == 0)
                              ? Icons.shopping_cart_outlined
                              : Icons.shopping_cart,
                          size: 36,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${controller.totalPrice} \u20bd',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
