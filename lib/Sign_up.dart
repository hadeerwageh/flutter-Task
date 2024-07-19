import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _subscribeToNewsletter = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
            },
          ),
          title: Center(
            child: const Text(
              "Sign up",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: _subscribeToNewsletter,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _subscribeToNewsletter = newValue ?? false;
                          });
                        },
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'I would like to receive your newsletter and other promotional information.',
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/feed');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                },
                child: const Text(
                  "Forgot your password?",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
