import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Dashboard'),
            onPressed: () {
              //GoRouter.of(context).go('/');
              context.go('/');
            }),
      ),
    );
  }
}
