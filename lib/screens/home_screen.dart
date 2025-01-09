import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        // Menambahkan warna latar belakang
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 86, 80, 87), // Warna gradasi atas
              const Color.fromARGB(255, 255, 255, 255), // Warna gradasi bawah
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //Gambar Placeholder
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle, // Membuat border berbentuk lingkaran
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/ICONS.jpg', // Path ke gambar
                  fit: BoxFit.cover, // Sesuaikan ukuran gambar
                  width: 150,
                  height: 150,
                ),
              ),
            ),
                SizedBox(height: 16),
            // Tambahkan Deskripsi atau Kalimat
            Text(
              'Welcome to Our App!', // Kalimat deskriptif
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
               SizedBox(height: 16),
               //Tombol Sign In dan Sign Up
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                     child: Text('Sign in'),
                     ),
                     SizedBox(width: 16),
                     ElevatedButton(
                      onPressed: () {},
                       child: Text('Sign up'),
                       ),
                ],
               ),
              ],
            ),
            ),
      ),
      
        );
  }
}