import 'package:flutter/material.dart';
import 'package:flutter_krs_application/screens/krs_screen.dart';
import 'package:flutter_krs_application/screens/profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: ElevatedButton(
          child: Text("Profile"),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ProfileScreen()),
            ),
          },
        ),
      ),
    );
  }
}
