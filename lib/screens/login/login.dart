import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "";

  @override
  void dispose() {
    debugPrint("login dispose");
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    Color darkGray = Color.fromARGB(255, 200, 200, 200);
    Color darkOrange  = Color.fromARGB(255, 255, 140, 0);

    return Scaffold(
      backgroundColor: darkGray,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Email",
                      labelStyle: TextStyle(color: darkOrange),
                      hintStyle: TextStyle(color: darkOrange),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: darkOrange, width: 2)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: darkOrange, width: 2)),
                      errorStyle: TextStyle(color: Colors.red),
                    ),
                    onSaved: (String? val) {
                      if (val != null) {
                        _email = val;
                      }
                    },
                    onChanged: (String val) {
                      setState(() {});
                    },
                    validator: (String? val) {
                      return EmailValidator.validate(val!)
                          ? null
                          : "email is not valid";
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    onSaved: (String? val) {
                      if (val != null) {
                        _password = val;
                      }
                    },
                    onChanged: (String val) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      labelStyle: TextStyle(color: darkOrange),
                      hintStyle: TextStyle(color: darkOrange),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: darkOrange, width: 2)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: darkOrange, width: 2)),
                      errorStyle: TextStyle(color: Colors.red),
                    ),
                    validator: (String? val) {
                      if (_password.length < 8) {
                        return "password must be 8 chars at least";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(),
                      onPressed: () {
                        debugPrint("login form button pressed");
                        if (_formKey.currentState == null) {
                          debugPrint("all is empty");
                          return;
                        }
                        bool isValid = _formKey.currentState!.validate();
                        if (isValid) {
                          _formKey.currentState!.save();
                          debugPrint("$_email and $_password");
                        }
                        _formKey.currentState!.reset();
                      },
                      child: Text("Login", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
