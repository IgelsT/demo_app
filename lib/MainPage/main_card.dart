import 'package:demo_app/MainPage/like_icon.dart';
import 'package:demo_app/constants.dart';
import 'package:demo_app/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const double _outCardSpacing = 8.0;
const double _inCardSpacing = 8.0;
const double _titleHeight = 44.0;
const double _infoHeight = 56.0;
const double _priceHeight = 15.0;
const double _actionHeight = 40.0;

// ignore: must_be_immutable
class MainCard extends StatefulWidget {
  List<ProductInfo> prdList = [];

  MainCard(this.prdList, {Key? key}) : super(key: key);

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final int _crossAxisCount =
        MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 2;
    final double _itemWidth = (size.width -
            (_outCardSpacing * 2) -
            ((_crossAxisCount - 1) * _outCardSpacing)) /
        _crossAxisCount;
    final double _itemHeight = _inCardSpacing +
        (_itemWidth - _inCardSpacing * 2) +
        _titleHeight +
        _infoHeight +
        _inCardSpacing +
        _priceHeight +
        _inCardSpacing +
        _actionHeight +
        _inCardSpacing;
    final double _childAspectRatio = _itemWidth / _itemHeight;
    // print(MediaQuery.of(context).orientation);
    // print(
    //     'width ${size.width}, item width ${_itemWidth}, item height ${_itemHeight}, ratio ${_childAspectRatio}');

    return Container(
      padding: const EdgeInsets.all(_outCardSpacing),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.prdList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _crossAxisCount,
          crossAxisSpacing: _outCardSpacing,
          mainAxisSpacing: _outCardSpacing,
          childAspectRatio: _childAspectRatio,
        ),
        itemBuilder: (
          context,
          index,
        ) {
          return _ProductCard(info: widget.prdList[index], width: _itemWidth);
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class _ProductCard extends StatelessWidget {
  ProductInfo info;
  double width;
  _ProductCard({required this.info, required this.width, Key? key})
      : super(key: key);

  final _cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const DetailPage()));
        print('Detail');
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_inCardSpacing),
        ),
        child: Container(
          padding: const EdgeInsets.all(_inCardSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width - _inCardSpacing * 2,
                height: width - _inCardSpacing * 2,
                child: Image.asset(
                  info.mainPicture,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                  height: _titleHeight,
                  child: Align(
                      alignment: Alignment.center,
                      child: mainTitle(info.title))),
              SizedBox(
                  height: _infoHeight, child: smallText(info.shortDescription)),
              const SizedBox(height: _inCardSpacing),
              SizedBox(
                height: _priceHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(info.price.toString() + ' \u20bd'),
                    Text(info.weight.toString() + ' г.'),
                  ],
                ),
              ),
              // const SizedBox(height: _inCardSpacing),
              SizedBox(
                height: _actionHeight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    LikeIcon(
                      info.id,
                    ),
                    OutlinedButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(80, 24),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.center),
                      onPressed: () {
                        _cartController.addToCart(info.id);
                      },
                      child: Text(
                        'В корзину',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                    // IconButton(
                    //   padding: EdgeInsets.zero,
                    //   onPressed: () {
                    //     print('cart');
                    //   },
                    //   icon: Icon(Icons.shopping_cart),
                    //   iconSize: 30,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
