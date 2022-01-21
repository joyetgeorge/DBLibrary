import 'package:dblibrary/Screens/home.dart';
import 'package:dblibrary/Screens/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'Screens/login_page.dart';
import 'Screens/signup_page.dart';
import 'Widgets/navbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(DbLibrary());
}

class DbLibrary extends StatefulWidget {
  const DbLibrary({Key? key}) : super(key: key);

  @override
  _DbLibraryState createState() => _DbLibraryState();
}

class _DbLibraryState extends State<DbLibrary> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Color(0xFFEFEEEE),
        // ),
        body: SignUpPage(),
        // bottomNavigationBar: Navbar(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
