import 'package:uuid/uuid.dart';

class Device{
  String userID;
  String roomID;
  String dID;
  String dName;
  String dImg;
  int dType;

  Device(String userID, String roomID, String id, String name, String imgURL, int type){
    this.userID = userID;
    this.roomID = roomID;
    this.dID = id;
    this.dName = name;
    this.dImg = imgURL;
    this.dType = type;
  }

  Device.create(String userID, String roomID, String name, String imgURL, int type){
    this.userID = userID;
    this.roomID = roomID;
    this.dID = Uuid().v4();
    this.dName = name;
    this.dImg = imgURL;
    this.dType = type;
  }
  Device.db(String userID, String name, String imgURL, int type){
    this.dID = userID;
    this.dName = name;
    this.dImg = imgURL;
    this.dType = type;
  }
}