import 'package:demo_app/DetailPage/detail_page.dart';
import 'package:demo_app/MainPage/like_icon.dart';
import 'package:demo_app/constants.dart';
import 'package:demo_app/data.dart';
import 'package:flutter/material.dart';

const double _outCardSpacing = 8.0;
const double _inCardSpacing = 8.0;
const double _titleHeight = 44.0;
const double _infoHeight = 56.0;
const double _actionHeight = 44.0;

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
    final double _itemWidth =
        (size.width - ((_crossAxisCount - 1) * _outCardSpacing)) /
            _crossAxisCount;
    final double _itemHeight = _inCardSpacing +
        _itemWidth -
        _inCardSpacing * 2 +
        _inCardSpacing +
        _titleHeight +
        _inCardSpacing +
        _infoHeight +
        _inCardSpacing +
        _actionHeight +
        _inCardSpacing +
        2;
    final double _childAspectRatio = _itemWidth / _itemHeight;
    // print(MediaQuery.of(context).orientation);
    // print(
    //     'width ${size.width}, item width ${_itemWidth}, ratio ${_childAspectRatio}');

    return Container(
      padding: const EdgeInsets.all(8.0),
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailPage()));
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

                    // IconButton(
                    //   onPressed: () {
                    //     print('cart');
                    //   },
                    //   icon: Icon(Icons.add_shopping_cart),
                    //   iconSize: 30,
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(info.price.toString() + ' \u20bd'),
                        Text(info.weight.toString() + ' г.'),
                      ],
                    ),
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
