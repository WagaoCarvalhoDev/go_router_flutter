import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/route_names.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text('Profile'),
                onPressed: () {
                  String name = 'Wagner';
                  //GoRouter.of(context).go('/profile');
                  context.goNamed(RouteNames.profile, params: {'name': name});
                }),
            ElevatedButton(
                child: const Text('Secondary route'),
                onPressed: () {
                  //GoRouter.of(context).go('/profile');
                  context.goNamed(
                    RouteNames.secondaryRoute,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
