import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gudsho/src/core/router/routes_constants.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to Home Screen'),
              ElevatedButton(
                  onPressed: () {
                    context.goNamed(AppRoute.login.name);
                  },
                  child: Text("Logout"))
            ]),
      ),
    );
  }
}
