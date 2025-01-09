import 'package:flutter/material.dart';
class MessageScreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Logika untuk pencarian
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Logika untuk menu lainnya
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Jumlah pesan (contoh 10 item)
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.person, color: Colors.grey), // Placeholder gambar
            ),
            title: Text(
              'Sender Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'This is a message preview that can be longer...',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            onTap: () {
              // Logika saat item ditekan
            },
          );
        },
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Set ke "Messages"
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          // Logika untuk navigasi
        },
       ),
    );
    

    
  }
}