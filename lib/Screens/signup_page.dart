import 'package:dblibrary/Screens/home.dart';
import 'package:dblibrary/Screens/login_page.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _fromkey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //NameField
    final nameField = TextFormField(
      autofocus: false,
      controller: nameController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        nameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person_outline),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Name",
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
    );

    //EmailField
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.mail_outline_rounded),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
    );

    //PasswordField
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.lock_outline_rounded),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xFFEFEEEE),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            // color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(fontSize: 30),
                  ),
                ),
                Form(
                  key: _fromkey,
                  child: Column(
                    children: [
                      Neumorphic(
                        child: nameField,
                        style: const NeumorphicStyle(
                          color: Color(0xFFEFEEEE),
                        ),
                      ),
                      Neumorphic(
                        child: emailField,
                        margin: const EdgeInsets.only(
                          top: 30,
                        ),
                        style: const NeumorphicStyle(
                          color: Color(0xFFEFEEEE),
                        ),
                      ),
                      Neumorphic(
                        child: passwordField,
                        margin: const EdgeInsets.only(
                          top: 30,
                        ),
                        style: const NeumorphicStyle(
                          color: Color(0xFFEFEEEE),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: NeumorphicButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen())),
                              child: Center(
                                child: Text(
                                  "Create Account",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              style: const NeumorphicStyle(
                                color: Color(0xFFEFEEEE),
                              ),
                            ),
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Have an account?"),
                              GestureDetector(
                                child: Text(
                                  " Log In",
                                  style: GoogleFonts.poppins(
                                    color: Colors.green.shade600,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogInPage())),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
