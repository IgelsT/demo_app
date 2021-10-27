import 'package:demo_app/Components/main_template.dart';
import 'package:demo_app/Components/navigation.dart';
import 'package:demo_app/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPage extends StatelessWidget {
  OrderPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return MainTemplate(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    globalNav.currentPath = '/cart';
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                OutlinedButton(
                  child: const Text('Оформить заказ'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _cartController.clearCart();
                      Navigator.pop(context);
                      Navigator.pop(context);
                      globalNav.currentPath = "/";
                      Get.defaultDialog(
                        title: "Ваш заказ принят!",
                        middleText:
                            "Спасибо за заказ. Ожидайте звонка менеджера, для подтверждения.",
                        barrierDismissible: true,
                        confirm: ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text("ОК")),
                      );
                    }
                  },
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: OrderForm(_formKey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class OrderForm extends StatefulWidget {
  OrderForm(this.formKey, {Key? key}) : super(key: key);

  GlobalKey<FormState> formKey;

  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Имя',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Поле обязательно!';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Телефон',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Поле обязательно!';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Адрес',
            ),
            maxLines: 6,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Поле обязательно!';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
