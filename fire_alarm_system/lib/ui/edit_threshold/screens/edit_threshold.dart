import 'package:fire_alarm_system/ui/edit_threshold/widgets/temp_bar.dart';
import 'package:flutter/material.dart';

class EditThreshold extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _EditThresholdState createState() => new _EditThresholdState();
}

class _EditThresholdState extends State<EditThreshold> {
  int cur_risk = 90;
  int cur_actual = 100;

  void handleClick(bool isIncrease, bool isRisk) {
    if (isIncrease) {
      setState(() {
        if (isRisk) {
          cur_risk += 1;
        } else {
          cur_actual += 1;
        }
      });
    } else {
      setState(() {
        if (isRisk) {
          cur_risk -= 1;
        } else {
          cur_actual -= 1;
        }
      });
    }
  }

  void handleLongPress(bool isIncrease, bool isRisk) {
    if (isIncrease) {
      setState(() {
        if (isRisk) {
          cur_risk += 5;
        } else {
          cur_actual += 5;
        }
      });
    } else {
      setState(() {
        if (isRisk) {
          cur_risk -= 5;
        } else {
          cur_actual -= 5;
        }
      });
    }
  }

  void handleSave() {
    print("set risk threshold to: $cur_risk");
    print("set actual fire threshold to: $cur_actual");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.black54,
          title: Text("Set threshold"),
          actions: [IconButton(icon: Icon(Icons.check), onPressed: handleSave)],
        ),
        body: new Column(
          children: <Widget>[
            Expanded(
              child: new Padding(
                  padding: new EdgeInsets.all(20.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          child: Icon(Icons.add_circle),
                          onPressed: () => handleClick(true, true),
                          onLongPress: () => handleLongPress(true, true),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                          child: TempBar(
                              currValue: cur_risk, title: 'Risk of fire'),
                          flex: 4),
                      Expanded(
                          child: ElevatedButton(
                            child: Icon(Icons.remove_circle),
                            onPressed: () => handleClick(false, true),
                            onLongPress: () => handleLongPress(false, true),
                          ),
                          flex: 1)
                    ],
                  )),
            ),
            Divider(),
            Expanded(
                child: new Padding(
                    padding: new EdgeInsets.all(20.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: ElevatedButton(
                              child: Icon(Icons.add_circle),
                              onPressed: () => handleClick(true, false),
                              onLongPress: () => handleLongPress(true, false)),
                          flex: 1,
                        ),
                        Expanded(
                            child: TempBar(
                                currValue: cur_actual, title: 'Actual fire'),
                            flex: 4),
                        Expanded(
                            child: ElevatedButton(
                                child: Icon(Icons.remove_circle),
                                onPressed: () => handleClick(false, false),
                                onLongPress: () =>
                                    handleLongPress(false, false)),
                            flex: 1)
                      ],
                    ))),
          ],
        ));
  }
}
