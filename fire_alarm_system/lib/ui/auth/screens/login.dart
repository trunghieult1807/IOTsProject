import 'dart:ui';

import 'package:fire_alarm_system/services/auth.dart';
import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/auth/controller/validate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function toggleView;

  LoginPage({this.toggleView});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String _email;
  String _password;
  bool _showPassword = false;

  String error = '';
  bool loading = false;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: topPadding + 70,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontFamily: ThemeText.textStyle,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    email("Email", false, size),
                    password("Password", true, size),
                  ]),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TextButton(
                onPressed: () async {
                  validate(_formKey);
                  if (_formKey.currentState.validate()) {
                    setState(() => loading = true);
                    dynamic result = await _auth.signInWithEmailAndPassword(
                        _email, _password);

                    if (result == null) {
                      setState(() {
                        loading = false;
                        error = 'Could not sign in with those credentials';
                      });
                    }
                  }
                  //_validateLoginInput();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20, horizontal: size.width * 0.2),
                  child: Container(
                    decoration: BoxDecoration(
                        color: ThemeColors.primary,
                        borderRadius: BorderRadius.circular(30)),
                    height: 45,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: ThemeText.textStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Forget your password?",
                style: TextStyle(
                  fontFamily: ThemeText.textStyle,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Or connect with",
                style: TextStyle(
                  fontFamily: ThemeText.textStyle,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff38a4ef),
                      ),
                      height: 40,
                      width: 160,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/facebook.png",
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xfff56656),
                      ),
                      height: 40,
                      width: 160,
                      child: GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/google.png",
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Google",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontFamily: ThemeText.textStyle,
                      ),
                    ),
                    onTap: () {
                      widget.toggleView();
                    },
                  )
                ],
              ),
              SizedBox(
                height: bottomPadding + 60,
              ),
            ],
          )
        ],
      ),
    );
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty) return '*Required';
    if (!regex.hasMatch(value))
      return '*Enter a valid email';
    else
      return null;
  }

  Widget email(String hint, bool pass, Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.height * 0.02),
      child: Stack(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.height * 0.05),
                color: Colors.white),
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onSaved: (input) {
              _email = input;
            },
            validator: emailValidator,
            decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintText: hint,
                hintStyle: TextStyle(
                  fontFamily: ThemeText.textStyle,
                ),
                contentPadding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 0, right: 0),
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                // suffixIcon: Icon(Icons.assignment_turned_in_rounded,
                //     color: Colors.greenAccent),
                border: UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ],
      ),
    );
  }

  Widget password(String hint, bool pass, Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.height * 0.02),
      child: Stack(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.height * 0.05),
                color: Colors.white),
          ),
          TextFormField(
            obscureText: !this._showPassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onSaved: (input) => _password = input,
            validator: (input) => input.isEmpty ? "*Required" : null,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  fontFamily: ThemeText.textStyle,
                ),
                contentPadding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 0, right: 0),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.grey,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: this._showPassword ? Colors.blue : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() => this._showPassword = !this._showPassword);
                  },
                ),
                border: UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ],
      ),
    );
  }


}
