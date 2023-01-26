import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/route_names.dart';
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
        name: RouteNames.dashboard,
        path: '/',
        builder: (context, state) => const Dashboard(),
        routes: [
          GoRoute(
            name: RouteNames.secondaryRoute,
            path: 'secondaryRoute',
            builder: (context, state) => const SecondaryRoute(),
          ),
        ],
      ),
      GoRoute(
        name: RouteNames.profile,
        //route with parameter
        path: '/profile/:name',
        builder: (context, state) => Profile(
          name: state.params['name']!,
        ),
      ),
    ],
  );
}
