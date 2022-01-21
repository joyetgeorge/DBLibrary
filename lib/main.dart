import 'package:dblibrary/Screens/home.dart';
import 'package:dblibrary/Screens/welcome.dart';
import 'package:flutter/material.dart';

import 'Screens/login_page.dart';
import 'Screens/signup_page.dart';
import 'Widgets/navbar.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

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

