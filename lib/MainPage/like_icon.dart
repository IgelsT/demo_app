import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LikeIcon extends StatefulWidget {
  LikeIcon(this.isLiked, {Key? key}) : super(key: key);

  bool isLiked = false;

  @override
  _LikeIconState createState() => _LikeIconState();
}

class _LikeIconState extends State<LikeIcon> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 24,
      child: Stack(
        children: [
          const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 24,
          ),
          Positioned(
            top: -12,
            left: -12,
            child: IconButton(
              onPressed: () {
                print('like');
              },
              iconSize: 20,
              color: (widget.isLiked) ? Colors.red : Colors.white,
              icon: Icon(
                Icons.favorite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
