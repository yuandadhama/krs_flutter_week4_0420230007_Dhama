import 'package:flutter/material.dart';
import 'package:flutter_krs_application/screens/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DashboardScreen()),
            );
          },
        ),
      ),
    );
  }
}
