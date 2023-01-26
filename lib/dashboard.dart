import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                  context.go('/profile/$name');
                }),
            ElevatedButton(
                child: const Text('Secondary route'),
                onPressed: () {
                  //GoRouter.of(context).go('/profile');
                  context.go('/secondary_route');
                }),
          ],
        ),
      ),
    );
  }
}
