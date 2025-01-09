import 'package:flutter/material.dart';

class SignUpScreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40),
              Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 24),
            // Full Name Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off), // Icon mata
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off), // Icon mata
                ),
              ),
              SizedBox(height: 24),
              // Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk Sign Up
                  },
                  child: Text('Sign Up'),
                ),
              ),
              SizedBox(height: 16),
              // "Or sign in with" text
              Center(
                child: Text(
                  'or sign in with',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 16),
              // Social Media Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google Button
                  IconButton(
                    onPressed: () {
                      // Logika untuk login dengan Google
                    },
                    icon: Icon(Icons.g_mobiledata),
                    iconSize: 32,
                    color: Colors.red,
                  ),
                  SizedBox(height: 16),
                  // Facebook Button
                  IconButton(
                    onPressed: () {
                      // Logika untuk login dengan Facebook
                    },
                    icon: Icon(Icons.facebook),
                    iconSize: 32,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(height: 16),
               // Already have an account
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        // Logika untuk navigasi ke halaman Sign In
                      },
                      child: Text(
                        'Sign Up Now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ],
          ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}