import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/homepage/models/room_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class AddRoom extends StatefulWidget {
  final bool isEditMode;

  AddRoom({
    Key key,
    @required this.isEditMode,
  }) : super(key: key);

  @override
  _AddRoomState createState() => _AddRoomState();
}

class _AddRoomState extends State<AddRoom> {
  String _title;
  String _desc;

  final _formKey = GlobalKey<FormState>();
  var firebaseUser = FirebaseAuth.instance.currentUser;
  final firestoreInstance = FirebaseFirestore.instance;

  List<int> modeList = [0, 1, 2, 3, 4];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: LightThemeColors.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 20.0,
            bottom: 20.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: topPadding,
              ),
              Stack(
                children: [
                  MyBackButton(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        !widget.isEditMode ? 'Create Task' : 'Edit Task',
                        style: TextStyle(
                          fontFamily: 'theme',
                          color: Colors.black,
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Title',
                      style: TextStyle(
                        fontFamily: 'theme',
                        color: LightThemeColors.contrast,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: TextFormField(
                        initialValue: _title == null ? null : _title,
                        cursorColor: LightThemeColors.contrast,
                        style: TextStyle(
                          color: LightThemeColors.contrast,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: 'Named your task',
                          hintStyle: TextStyle(
                            color: LightThemeColors.contrast,
                            fontFamily: 'theme',
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _title = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontFamily: 'theme',
                        color: LightThemeColors.contrast,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: TextFormField(
                        initialValue: _desc == null ? null : _desc,
                        cursorColor: LightThemeColors.contrast,
                        style: TextStyle(
                          color: LightThemeColors.contrast,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: 'Describe your task',
                          hintStyle: TextStyle(
                            color: LightThemeColors.contrast,
                            fontFamily: 'theme',
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _desc = value;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(20),
                            color: LightThemeColors.darkGreen,
                          ),
                          width: 120,
                          child: Center(
                            child: FlatButton(
                              child: Text(
                                !widget.isEditMode ? 'Create' : 'Edit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Var',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                _validateForm();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _validateForm() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      if (!widget.isEditMode) {
        final newRoom = RoomInfo.db(
          Uuid().v4(),
          _title,
          _desc,
        );
        firestoreInstance
            .collection("users")
            .doc(firebaseUser.uid)
            .collection("roomList")
            .doc(newRoom.roomId)
            .set({
          "roomId": newRoom.roomId,
          "imageId": newRoom.imageId,
          "roomName": newRoom.roomName,
        });
      }
      // else {
      //   final newTask = Task.store(
      //     widget.task.id,
      //     _title,
      //     _desc,
      //     _mode,
      //     _isDone,
      //     _duration,
      //     _start,
      //     _tracking,
      //   );
      //   getData() async {
      //     return await firestoreInstance
      //         .collection("users")
      //         .doc(firebaseUser.uid)
      //         .collection("roomList")
      //         .doc(widget.taskList.id)
      //         .get();
      //   }
      //
      //   getData().then((val) {
      //     firestoreInstance
      //         .collection("users")
      //         .doc(firebaseUser.uid)
      //         .collection("taskList")
      //         .doc(widget.taskList.id)
      //         .update({'tasks': []});
      //     for (int n = 0; n < val.data()["tasks"].length; n = n + 1) {
      //       if (Task.fromMap(val.data()["tasks"][n]).id == widget.task.id) {
      //         firestoreInstance
      //             .collection("users")
      //             .doc(firebaseUser.uid)
      //             .collection("taskList")
      //             .doc(widget.taskList.id)
      //             .update({
      //           'tasks': FieldValue.arrayUnion([newTask.toMap()])
      //         });
      //       } else {
      //         firestoreInstance
      //             .collection("users")
      //             .doc(firebaseUser.uid)
      //             .collection("taskList")
      //             .doc(widget.taskList.id)
      //             .update({
      //           'tasks': FieldValue.arrayUnion(
      //               [Task.fromMap(val.data()["tasks"][n]).toMap()])
      //         });
      //       }
      //     }
      //   });
      // }
      Navigator.of(context).pop();
    }
  }
}
