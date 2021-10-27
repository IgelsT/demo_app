import 'package:demo_app/Components/navigation.dart';
import 'package:demo_app/Components/top_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainTemplate extends StatelessWidget {
  Widget body;

  MainTemplate({required this.body, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (globalNav.currentPath == '/cart') {
          globalNav.currentPath = '/';
          return true;
        }
        if (globalNav.currentPath == '/order') {
          globalNav.currentPath = '/cart';
          return true;
        }
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 60),
                  Expanded(child: body),
                ],
              ),
              TopBar(),
            ],
          ),
        ),
      ),
    );
  }
}
