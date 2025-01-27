import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }

  final _router =
      GoRouter(initialLocation: '/', debugLogDiagnostics: true, routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ]);
}
