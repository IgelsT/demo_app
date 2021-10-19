import 'package:demo_app/DetailPage/detail_page.dart';
import 'package:demo_app/constants.dart';
import 'package:demo_app/data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 0),
      height: 20.h,
      child: ListView.builder(
        itemCount: productList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // debugPrint('tap to card');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailPage()));
            },
            child: SizedBox(
              width: 100,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        productList[index].mainPicture,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                          height: 30,
                          child: smallTitle(productList[index].title)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('\u20bd'),
                          smallSubTitle(productList[index].price.toString()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 13,
                          ),
                          smallSubTitle(
                            productList[index].likes.toString(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
