import 'package:uuid/uuid.dart';

class Device{
  String userID;
  String roomID;
  String dID;
  String dName;
  int dType;

  Device(String userID, String roomID, String id, String name, int type){
    this.userID = userID;
    this.roomID = roomID;
    this.dID = id;
    this.dName = name;
    this.dType = type;
  }

  Device.create(String userID, String roomID, String name, int type){
    this.userID = userID;
    this.roomID = roomID;
    this.dID = Uuid().v4();
    this.dName = name;
    this.dType = type;
  }
}