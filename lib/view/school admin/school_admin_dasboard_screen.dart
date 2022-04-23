import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SchoolAdminDasboard extends StatefulWidget {
  const SchoolAdminDasboard({Key? key}) : super(key: key);

  @override
  State<SchoolAdminDasboard> createState() => _SchoolAdminDasboardState();
}

class _SchoolAdminDasboardState extends State<SchoolAdminDasboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
            onPressed: () {
              FirebaseAuth auth = FirebaseAuth.instance;
              auth.signOut();
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.logout)),
      ),
      body: Center(child: Text('School Admin dasboard')),
    );
  }
}
