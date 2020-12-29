import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<Profile> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.deepPurple[100],
        body: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.deepPurple[100],
            child: new SingleChildScrollView(
              child: new ConstrainedBox(
                constraints: new BoxConstraints(),
                child: new Container(
                  child: new Center(
                      child: new Column(children: [
                    new CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                      radius: 50,
                    ),
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Full Name",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(),
                        ),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Name can not be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Contact Number",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(),
                        ),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Contact number cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                    RaisedButton(
                      child: Text('Save'),
                      color: Colors.blue[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {
                        // save data
                      },
                    ),
                  ])),
                ),
              ),
            )));
  }
}

class DropDownButtonGender extends StatefulWidget {
  DropDownButtonGender({Key key}) : super(key: key);

  @override
  _DropDownButtonGenderState createState() => _DropDownButtonGenderState();
}

class _DropDownButtonGenderState extends State<DropDownButtonGender> {
  String dropdownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Male', 'Female', 'Others']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: TextStyle(color: Colors.black54)),
        );
      }).toList(),
    );
  }
}
