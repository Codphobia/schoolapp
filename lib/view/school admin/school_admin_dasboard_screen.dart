import 'package:flutter/material.dart';

class SchoolAdminDasboard extends StatefulWidget {
  const SchoolAdminDasboard({Key? key}) : super(key: key);

  @override
  State<SchoolAdminDasboard> createState() => _SchoolAdminDasboardState();
}

class _SchoolAdminDasboardState extends State<SchoolAdminDasboard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('SchoolAdminDasboard')),
    );
  }
}
