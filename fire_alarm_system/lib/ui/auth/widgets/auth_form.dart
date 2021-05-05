// import 'package:fire_alarm_system/theme.dart';
// import 'package:flutter/material.dart';
//
// class PasswordTextField extends StatefulWidget {
//
//   final String hint;
//   String password;
//
//
//   PasswordTextField({
//     Key key,
//     @required this.hint,
//     @required this.hint,
//   }) : super(key: key);
//   @override
//   _PasswordTextFieldState createState() => _PasswordTextFieldState();
// }
//
// class _PasswordTextFieldState extends State<PasswordTextField> {
//   bool _showPassword = false;
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
// // Widget password(String hint, bool pass, Size size) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: size.width * 0.1, vertical: size.height * 0.02),
//       child: Stack(
//         children: [
//           Container(
//             height: 50,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(size.height * 0.05),
//                 color: Colors.white),
//           ),
//           TextFormField(
//             obscureText: !_showPassword,
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             onSaved: (input) => password = input,
//             validator: (input) => input.isEmpty ? "*Required" : null,
//             decoration: InputDecoration(
//                 hintText: widget.hint,
//                 hintStyle: TextStyle(
//                   fontFamily: ThemeText.textStyle,
//                 ),
//                 contentPadding:
//                     EdgeInsets.only(top: 15, bottom: 15, left: 0, right: 0),
//                 prefixIcon: Icon(
//                   Icons.security_outlined,
//                   color: Colors.grey,
//                 ),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     Icons.remove_red_eye,
//                     color: this._showPassword ? Colors.blue : Colors.grey,
//                   ),
//                   onPressed: () {
//                     setState(() => _showPassword = !_showPassword);
//                   },
//                 ),
//                 border: UnderlineInputBorder(borderSide: BorderSide.none)),
//           ),
//         ],
//       ),
//     );
//   }
// }
