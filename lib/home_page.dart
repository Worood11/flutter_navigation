import 'package:flutter/material.dart';
import 'package:flutter_navigation/page_one.dart';
import 'package:flutter_navigation/page_two.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed(PageOne.routeName);
              },
              child: const Text('Page one '),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(PageTwo.routeName);
              },
              child: const Text('page Two'),
            ),
          ],
        ),
      ),
    );
  }
}
