import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart';
import '../data.dart';

class TopBar extends StatelessWidget {
  TopBar({Key? key}) : super(key: key);
  final _cartController = Get.find<CartController>();

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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('М Е Г А  П И Ц Ц А'),
                Text('Доставка пиццы'),
                Text('+7 999 555 66 22'),
              ],
            ),
            GetBuilder<CartController>(builder: (controller) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Badge(
                    badgeContent: Text('${controller.totalCount}'),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('${controller.totalPrice} \u20bd'),
                  SizedBox(
                    width: 10,
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
