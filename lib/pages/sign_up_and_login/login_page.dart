import 'package:flutter/material.dart';
import 'package:unwind/pages/sign_up_and_login/sign_up.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Login-rafiki.png', height: 250),
            SizedBox(height: 20),
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            Text(
              'Continue your calmness journey',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Forgot password action
                },
                child: Text('Forgot Password?'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Login action
              },
              child: Text('Log in'),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 243, 236, 246),
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to sign up
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text(
                'Doesn\'t have an account? Signup',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
