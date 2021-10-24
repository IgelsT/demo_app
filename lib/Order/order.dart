import 'package:demo_app/Components/main_template.dart';
import 'package:demo_app/Components/navigation.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainTemplate(
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              globalNav.current_path = '/cart';
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          Text('Order'),
        ],
      ),
    );
  }
}
