import 'package:flutter/material.dart';

class SignInScreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    return Scaffold(
      body :Padding(
        padding: const EdgeInsets.all(16.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Judul dan Deskripsi
            Text(
              'Sign In',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                 textAlign: TextAlign.center,
              ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 24),

            // Input Email
              TextField(
                onChanged: (value) {
                  email = value; // Menyimpan nilai input email
                },
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  border: OutlineInputBorder(),
                ),
              ),
            SizedBox(height: 16),

            // Input Password
              TextField(
                onChanged: (value) {
                  password = value; // Menyimpan nilai input password
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            SizedBox(height: 8),

            // Forget Password
            Align(
              alignment: Alignment.centerRight,
             child: TextButton(
                onPressed: () {},
                child: Text('Forget Password?'),
              ), 
            ),

            // Tombol Sign In
            ElevatedButton(
                onPressed: () {
                  // Validasi sederhana
                  if (email.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Email and Password are required')),
                    );
                  } else {
                    print('Sign In Clicked');
                    print('Email: $email');
                    print('Password: $password');
                  }
                },
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Tombol full width
                ),
              ),
               SizedBox(height: 16),

               // opsi sign in dengan Google atau Facebook
               Text('or sign in with'),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.g_mobiledata),
                    onPressed: () {
                      print('Google Sign In');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {
                      print('Facebook Sign In');
                    },
                  ),
            SizedBox(height: 24),

            // Teks untuk Sign Up
            TextButton(
              onPressed: () {
                print('Sign Up Clicked');
              },
              child: Text(
                'Don\'t have an account? Sign Up Now',
                style: TextStyle(fontSize: 14),
              ),
              ),
                ],
            ),
          ],
        ),
        ),
    );
  }
}