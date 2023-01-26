import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/route_names.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to your profile $name'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Dashboard'),
            onPressed: () {
              //GoRouter.of(context).go('/');
              context.goNamed(RouteNames.dashboard);
            }),
      ),
    );
  }
}
