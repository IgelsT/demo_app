import 'package:demo_app/Components/like_icon.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../data.dart';

showDetail(id, context) {
  try {
    ProductInfo info = getProduct(id);
    Dialog alert = Dialog(
      insetPadding:
          const EdgeInsets.only(top: 60.0, right: 5.0, bottom: 5.0, left: 5.0),
      child: new DetailPage(info),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  } catch (e) {}
}

// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  ProductInfo info;

  DetailPage(this.info, {Key? key}) : super(key: key);

  final _cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bigTitle(info.title),
                  bigSubTitle(info.teig == 1 ? 'на тонком' : 'на толстом'),
                ],
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Image.asset(
                          info.mainPicture,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bigPrice(info.price.toString()),
                            const SizedBox(height: 10),
                            bigWeight(info.weight.toString()),
                            const SizedBox(height: 10),
                            LikeIcon(
                              info.id,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Состав: ${info.shortDescription}',
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    info.description,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  GetBuilder<CartController>(builder: (controller) {
                    return OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(140, 40),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.center,
                          backgroundColor: controller.isInCart(info.id)
                              ? Colors.green
                              : Colors.transparent),
                      onPressed: () {
                        _cartController.addToCart(info.id);
                      },
                      child: Text(
                        (controller.isInCart(info.id)
                            ? 'Добавить'
                            : 'В корзину'),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
