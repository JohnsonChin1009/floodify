import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: PopupMenuButton(
              onSelected: (value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  value: 1,
                  child: Text('Profile'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Settings & Privacy'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Log Out"),
                ),
              ],
              child: const CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: AssetImage('path'),
                radius: 20, //Sets the size of the profile image button
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Stack(
            children : [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors. blue,
              ),

              Positioned(
                top: 50,
                left: MediaQuery.of(context).size.width / 2 - 50,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('path'),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container (
              padding: const EdgeInsets.all(20.0),
            child: Table (
              children: const [
                TableRow (
                  children: [
                    TableCell (
                      child: Text('Name: '),
                    ),
                    TableCell (
                      child: Text('Johnson Chin'),
                      ),
                  ]
                ),
                TableRow (
                  children: [
                    TableCell (
                      child: Text('NRIC: '),
                    ),
                    TableCell (
                      child: Text('12345678910'),
                      ),
                  ]
                ),
                TableRow (
                  children: [
                    TableCell (
                      child: Text('Address: '),
                    ),
                    TableCell (
                      child: Text('No. 1, Jalan 1, Taman 1, 55000'),
                      ),
                  ]
                ),
                TableRow (
                  children: [
                    TableCell (
                      child: Text('Phone Number: '),
                    ),
                    TableCell (
                      child: Text('01234567890'),
                      ),
                  ]
                ),
                TableRow (
                  children: [
                    TableCell (
                      child: Text('State: '),
                    ),
                    TableCell (
                      child: Text('Wilayah Persekutuan'),
                      ),
                  ]
                ),
                TableRow (
                  children: [
                    TableCell (
                      child: Text('Email: '),
                    ),
                    TableCell (
                      child: Text('johnsonchin@gmail.com'),
                      ),
                  ]
                )
              ]
            )
            )
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(onPressed: () {
                //Code to edit profile
              },
              child: const Icon(Icons.edit),
            ),
            ),
          ),
        ]
      ));
  }
}
