import 'package:demo_app/Components/main_template.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainTemplate(body: Text('cart'));
  }
}
