import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_page.dart';
import 'package:flutter_navigation/page_one.dart';
import 'package:flutter_navigation/page_one_details.dart';
import 'package:flutter_navigation/page_two.dart';
import 'package:flutter_navigation/profile_page.dart';
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
        name: HomePage.routeName,
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
              name: ProfilePage.routeName,
              path: 'profile/:id',
              builder: (context, state) {
                final id = state.pathParameters['id']!;
                return ProfilePage(id: int.parse(id));
              }),
        ]),
    GoRoute(
        name: PageOne.routeName,
        path: '/one',
        builder: (context, state) => const PageOne(),
        routes: [
          GoRoute(
            name: PageOneDetails.routeName,
            path: 'one_details',
            builder: (context, state) => const PageOneDetails(),
          ),
        ]),
    GoRoute(
      name: PageTwo.routeName,
      path: '/two',
      builder: (context, state) => const PageTwo(),
    ),
  ]);
}
