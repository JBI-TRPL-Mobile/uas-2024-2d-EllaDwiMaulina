import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
        SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Log Out'),
                  content: Text('Log Out from Learnout?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // Add logout functionality here
                      },
                      child: Text('Log Out'),
                    ),
                  ],
                ),
              );
            },
          child:  Text('Log Out'),
          ),
          SizedBox(height: 20),
          Divider(),
          ListTile(
            title: Text('About Learnout'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to About screen
            },
          ),
          ListTile(
            title: Text('Frequently Asked Questions'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to FAQ screen
            },
          ),
          ListTile(
            title: Text('Share the Learnout App'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Add sharing functionality
            },
          ),
        ],
      ),
    );
  }
}