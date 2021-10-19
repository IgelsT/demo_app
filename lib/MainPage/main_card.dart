import 'package:demo_app/DetailPage/detail_page.dart';
import 'package:demo_app/MainPage/like_icon.dart';
import 'package:demo_app/constants.dart';
import 'package:demo_app/data.dart';
import 'package:flutter/material.dart';

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

    const double _crossAxisSpacing = 8, _mainAxisSpacing = 8;
    final int _crossAxisCount =
        MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 2;
    final double _itemWidth =
        (size.width - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
            _crossAxisCount;
    const double _itemHeight = 300;
    final double _childAspectRatio = _itemWidth / _itemHeight;
    // print(MediaQuery.of(context).orientation);
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.prdList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _crossAxisCount,
          crossAxisSpacing: _crossAxisSpacing,
          mainAxisSpacing: _mainAxisSpacing,
          childAspectRatio: _childAspectRatio,
        ),
        itemBuilder: (
          context,
          index,
        ) {
          return _ProductCard(info: widget.prdList[index]);
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class _ProductCard extends StatelessWidget {
  ProductInfo info;

  _ProductCard({required this.info, Key? key}) : super(key: key);

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
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                info.mainPicture,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 50.0,
                child: Center(child: mainTitle(info.title)),
              ),
              smallText(info.shortDescription),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        LikeIcon(info.isLiked),
                        const SizedBox(
                          width: 5,
                        ),
                        mainTitle(info.likes.toString()),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        print('cart');
                      },
                      icon: Icon(Icons.add_shopping_cart),
                      iconSize: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(info.price.toString() + ' \u20bd'),
                        Text(info.weight.toString() + ' г.'),
                      ],
                    )
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
