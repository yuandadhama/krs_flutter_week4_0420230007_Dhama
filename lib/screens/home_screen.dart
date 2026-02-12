import 'package:flutter/material.dart';
import 'package:flutter_krs_application/screens/dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _secureText = true;

  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Form(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50),
            width: 400,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Login KRS",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30),

                // username input field
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                    ),
                    hintText: "Enter Username",
                    labelText: "Username",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                    prefixIcon: Icon(Icons.person, color: Colors.blueAccent),
                  ),
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: 20),

                // password input field
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                    ),
                    hintText: "Enter Password",
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                    prefixIcon: Icon(Icons.key, color: Colors.blueAccent),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _secureText
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                    ),
                  ),
                  keyboardType: TextInputType.name,
                  obscureText: _secureText,
                ),
                SizedBox(height: 50),
                Center(
                  child: ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                      print("name ${_usernameController.text}");
                      print("name ${_passwordController.text}");

                      if (_usernameController.text == "dhama" &&
                          _passwordController.text == "pass1234") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => DashboardScreen()),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
