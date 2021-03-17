import 'package:flutter/material.dart';
import 'booking_model.dart';
import 'Submit.dart';

class HotelForm extends StatefulWidget {
  @override
  _HotelFormState createState() => _HotelFormState();
}

class _HotelFormState extends State<HotelForm> {
  final _firstnamekey = GlobalKey<FormState>();
  final _lastnamekey = GlobalKey<FormState>();
  final _emailkey = GlobalKey<FormState>();
  final _phonrnumberkey = GlobalKey<FormState>();
  final _addresskey = GlobalKey<FormState>();
  final _citykey = GlobalKey<FormState>();
  final _provincekey = GlobalKey<FormState>();
  final _noofadultskey = GlobalKey<FormState>();
  final _noofchildkey = GlobalKey<FormState>();
  final _noofadultchildkey = GlobalKey<FormState>();
  final _roomtypekey = GlobalKey<FormState>();
  final _dateofarrivalkey = GlobalKey<FormState>();
  final _dateofdeparturekey = GlobalKey<FormState>();
  final _commentkey = GlobalKey<FormState>();
  String valuechoose;
  List listitems = ['Single', "Double", "Couple", "Luxury"];

  Book book = Book();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _firstnamekey,
        child: Column(
          children: <Widget>[
            Container(
              //padding: Padding(),
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 70.0, 0.0),

              child: Text(
                "Booking Enquiry Form",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 00.0, 0.0, 0.0),
              child: Text(
                  "Once we receive the filed form, we will contact you shortly to confirm room availability.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0)),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 220.0, 0.0),
              child: Text(
                "First Name ",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "First Name",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter the First Name";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.firstname = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 220.0, 0.0),
              child: Text(
                "Last Name",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "Last Name",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter the Last Name";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.lastname = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 270.0, 0.0),
              child: Text(
                "Email",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "abc@gmail.com",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your email";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.email = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 180.0, 0.0),
              child: Text(
                "Phone number",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "+92 3314707720",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your phone number";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.email = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 250.0, 0.0),
              child: Text(
                "Address",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "Street address line 1",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your address";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.address = value;
                  },
                )),
            SizedBox(height: 5.0),
            Container(
              child: Container(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 290.0, 0.0),
                child: Text(
                  "City",
                  style: TextStyle(
                    fontSize: 23.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "City",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your city name";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.city = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 240.0, 0.0),
              child: Text(
                "Province",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "Province",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your province name";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.province = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 200.0, 0.0),
              child: Text(
                "No of adults",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "0",
                  onSaved: (String value) {
                    book.noofadults = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 80.0, 0.0),
              child: Text(
                "No of children aged 6-15",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "0",
                  onSaved: (String value) {
                    book.noofchild = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 100.0, 0.0),
              child: Text(
                "No of Family members",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "0",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your family member numbers";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.noofadultchild = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 240.0, 0.0),
              child: Text(
                "Room type",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              child: DropdownButton(
                value: valuechoose,
                hint: Text("Select room type"),
                dropdownColor: Colors.grey,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36.0,
                style: TextStyle(color: Colors.black, fontSize: 20.0),
                isExpanded: true,
                onChanged: (newValue) {
                  setState(() {
                    valuechoose = newValue;
                  });
                },
                items: listitems.map((valueitem) {
                  return DropdownMenuItem(
                    value: valueitem,
                    child: Text(valueitem),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 170.0, 0.0),
              child: Text(
                "Date of Arrival",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "DD-MM-YYYY",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your arrival date";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.dateofarrival = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 150.0, 0.0),
              child: Text(
                "Date of Departure",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "DD-MM-YYYY",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your departure";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    book.dateofdeparture = value;
                  },
                )),
            SizedBox(height: 6.0),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 220.0, 0.0),
              child: Text(
                "Comments",
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Decoration(
                  hinttext: "Comments",
                  onSaved: (String value) {
                    book.comments = value;
                  },
                )),
            RaisedButton(
              color: Colors.grey,
              child: Text("Preview"),
              onPressed: () {
                if (_firstnamekey.currentState.validate()) {
                  _firstnamekey.currentState.save();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(book: this.book)));
                }
              },
            )
          ],
        ),
      )),
    );
  }
}

class Decoration extends StatelessWidget {
  final String hinttext;

  final Function validator;
  final Function onSaved;

  Decoration({this.hinttext, this.validator, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        cursorColor: Colors.black,
        style: TextStyle(
            color: Colors.black, fontSize: 20.0, fontStyle: FontStyle.italic),
        // ignore: missing_return
        validator: validator,
        onSaved: onSaved,
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.black, fontSize: 20.0),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          filled: true,
        ),
      ),
    );
  }
}
