import 'package:flutter/material.dart';
import 'package:unwind/pages/sign_up_and_login/login_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Fill out-bro.png', height: 250),
            SizedBox(height: 20),
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            Text(
              'Create a new account',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email or Phone Number',
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
            Row(
              children: [
                Checkbox(value: false, onChanged: (bool? value) {}),
                Text('I agree to terms and conditions'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Sign up action
              },
              child: Text('Create Account'),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 243, 236, 246),
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to login
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                'Already have an account? Login',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
