import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/secondary_route.dart';

import 'dashboard.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Go Router Demo',
      routerConfig: _router,
    );
  }

  final _router = GoRouter(
    //initialLocation: '/profile',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Dashboard(),
        routes: [
          GoRoute(
            path: 'secondary_route',
            builder: (context, state) => const SecondaryRoute(),
          ),
        ],
      ),
      GoRoute(
        path: '/profile/:name',
        builder: (context, state) => Profile(
          name: state.params['name']!,
        ),
      ),
    ],
  );
}
