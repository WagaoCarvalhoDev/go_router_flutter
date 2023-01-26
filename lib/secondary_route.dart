import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondaryRoute extends StatelessWidget {
  const SecondaryRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secondary Route'),
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
