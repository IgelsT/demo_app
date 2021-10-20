import 'package:demo_app/constants.dart';
import 'package:flutter/material.dart';

import '../data.dart';

// ignore: must_be_immutable
class LikeIcon extends StatefulWidget {
  LikeIcon(this.id, {Key? key}) : super(key: key);

  int id = 0;

  @override
  _LikeIconState createState() => _LikeIconState();
}

class _LikeIconState extends State<LikeIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
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
                  width: 20,
                  height: 20,
                  top: 2,
                  left: 2,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      print('like');
                    },
                    iconSize: 20,
                    color: (getIsLiked(widget.id)) ? Colors.red : Colors.white,
                    icon: Icon(
                      Icons.favorite,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(width: 5),
        smallTitle(getLikes(widget.id).toString())
      ],
    );
  }
}
