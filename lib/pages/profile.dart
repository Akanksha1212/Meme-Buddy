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
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoHZSUi7psB3fr3i9DLrik1JGtWX7USZ7R3w&usqp=CAU'),
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
                    DropDownButtonGender(),
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                    Text(
                      'Meme Quotient',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ),
                    Slider(
                      value: 75,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      activeColor: Colors.deepPurple[300],
                      inactiveColor: Colors.deepPurple[300],
                      onChanged: (double value) {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\0',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Text(
                          '\100',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Fun facts about you",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(),
                        ),
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                    RaisedButton(
                      child: Text('Save'),
                      color: Colors.blue[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
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
  String dropdownValue = 'Female';

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
      items: <String>['Female', 'Male', 'Other']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: TextStyle(color: Colors.black54)),
        );
      }).toList(),
    );
  }
}
