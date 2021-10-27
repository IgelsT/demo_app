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
        print('back button');
        if (globalNav.current_path == '/cart') {
          globalNav.current_path = '/';
          return true;
        }
        if (globalNav.current_path == '/order') {
          globalNav.current_path = '/cart';
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
