import 'dart:ui';
import 'package:fire_alarm_system/services/auth.dart';
import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/auth/controllers/validate.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function toggleView;
  final VoidCallback onLoginSuccessCallback;

  LoginPage({this.toggleView, this.onLoginSuccessCallback});

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
      backgroundColor: LightThemeColors.primary,
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: LightThemeColors.primary,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: topPadding),
                Container(
                  height: (size.height - bottomPadding*1.5),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new ExactAssetImage('assets/images/3d/bg10.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: topPadding + 90,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: ThemeText.textStyle,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: LightThemeColors.contrast,
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20, horizontal: size.width * 0.2),
                      child: TextButton(
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
                            else if(widget.onLoginSuccessCallback != null){
                              widget.onLoginSuccessCallback();
                            }
                          }
                          //_validateLoginInput();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 45,
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontFamily: ThemeText.textStyle,
                                color: LightThemeColors.primary,
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
                        color: LightThemeColors.contrast,
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
                        color: LightThemeColors.contrast,
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
                                    "assets/images/facebook.png",
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
                                      "assets/images/google.png",
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
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          "Don't have account?",
                          style: TextStyle(
                            color: LightThemeColors.contrast,
                          ),
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
          ),
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
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: Colors.black12,
              ),
            ),
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onSaved: (input) {
              _email = input;
            },
            validator: emailValidator,
            decoration: InputDecoration(
              fillColor: Colors.red,
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
              border: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
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
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: Colors.black12,
              ),
            ),
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
              border: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }
}
