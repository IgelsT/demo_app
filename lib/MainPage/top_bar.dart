import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

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
            Row(
              children: const [
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('0 \u20bd'),
                SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
