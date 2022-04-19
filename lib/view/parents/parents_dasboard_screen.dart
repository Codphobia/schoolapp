import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ParentsDasboard extends StatefulWidget {
  const ParentsDasboard({Key? key}) : super(key: key);

  @override
  State<ParentsDasboard> createState() => _ParentsDasboardState();
}

class _ParentsDasboardState extends State<ParentsDasboard> {
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
      body: Center(child: Text('parent dasboard')),
    );
  }
}
