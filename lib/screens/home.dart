import 'package:carolinaproj/shared/screen_title.dart';
import 'package:carolinaproj/shared/category_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            SizedBox(height: 30),
            SizedBox(
              height: 160,
              child: ScreenTitle(text: "Carolina Cleaners"),
            ),
            Flexible(child: CategoryList(),
            )
          ],
        ),
      ),
    );
  }
}