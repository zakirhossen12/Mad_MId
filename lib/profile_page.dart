import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, dynamic> data;

  ProfilePage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Makes the AppBar transparent
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(data['photo']),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${data['firstName']} ${data['lastName']}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8), // Adds space between the text and the icon
              const Icon(
                Icons.edit, // The "edit" icon represents a pen for editing
                size: 24.0, // Set the desired size for the icon
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            '  General Information',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Full name',
                    style: TextStyle(
                      color: Colors.grey, // This makes the title color a bit faded
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${data['firstName']} ${data['lastName']}',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black, // This ensures the subtitle has a prominent color
                    ),
                  ),
                ),
              ],
            ),
          ), // Adds space below the name
          ListTile(
            title: Row(
              children: <Widget>[
                const Expanded(
                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.grey, // This makes the title color a bit faded
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    data['email'],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Colors.black, // This ensures the subtitle has a prominent color
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                const Expanded(
                  child: Text(
                    'Phone',
                    style: TextStyle(
                      color: Colors.grey, // This makes the title color a bit faded
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    data['mobile'],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Colors.black, // This ensures the subtitle has a prominent color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
