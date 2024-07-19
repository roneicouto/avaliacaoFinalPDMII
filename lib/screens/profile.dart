// Suggested code may be subject to a license. Learn more: ~LicenseLog:2100351869.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3317211288.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1085732848.
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});
  final String title;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/perfil1.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Ronei Couto',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
