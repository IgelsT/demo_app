import 'package:demo_app/Components/main_template.dart';
import 'package:demo_app/MainPage/main_card.dart';
import 'package:demo_app/MainPage/popular.dart';
import 'package:demo_app/data.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'constants.dart';

void main() {
  // runApp(DevicePreview(
  //   builder: (BuildContext context) => const MyApp(),
  //   enabled: !kReleaseMode,
  // ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        enableLog: false,
        debugShowCheckedModeBanner: false,
        home: Page(),
      );
    });
  }
}

// ignore: must_be_immutable
class Page extends StatefulWidget {
  Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  List<bool> _teig = [true, false, false];

  List<ProductInfo> _productList = productList;

  @override
  initState() {
    _productList = productList;
    super.initState();
  }

  selectTeig(value) {
    setState(() {
      if (value == 0)
        _productList = productList;
      else
        _productList = productList.where((el) => el.teig == value).toList();
      _teig = [false, false, false];
      _teig[value] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainTemplate(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: mainTitle('Популярные'),
        ),
        const PopularProducts(),
        const SizedBox(height: 10),
        SizedBox(
          height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ChoiceChip(
                  label: const Text("Все"),
                  selected: _teig[0],
                  onSelected: (bool value) {
                    selectTeig(0);
                  }),
              ChoiceChip(
                  label: const Text('Тонкое тесто'),
                  selected: _teig[1],
                  onSelected: (bool value) {
                    selectTeig(1);
                  }),
              ChoiceChip(
                  label: const Text('Толстое тесто'),
                  selected: _teig[2],
                  onSelected: (bool value) {
                    selectTeig(2);
                  }),
            ],
          ),
        ),
        MainCard(_productList),
      ],
    )));
  }
}
