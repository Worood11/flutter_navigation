import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_page.dart';
import 'package:go_router/go_router.dart';

class PageOneDetails extends StatelessWidget {
  static const String routeName = 'one_details';
  const PageOneDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One Details'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Go Back'),
            )
          ],
        ),
      ),
    );
  }
}
