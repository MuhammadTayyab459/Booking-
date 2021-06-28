import 'package:flutter/material.dart';
import 'booking_model.dart';
import 'Submit.dart';

class HotelForm extends StatefulWidget {
  @override
  _HotelFormState createState() => _HotelFormState();
}

class _HotelFormState extends State<HotelForm> {
  final _firstnamekey = GlobalKey<FormState>();
  /*final _lastnamekey = GlobalKey<FormState>();
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
 // List listitems = ['Single', "Double", "Couple", "Luxury"];*/

  Book book = Book();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _firstnamekey,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 70.0, 0.0),
              child: Text(
                "        Book Trip",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 29.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 00.0, 0.0),
              child: Text(
                  "Please fill out the information below for a Pleasent stay.",
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0)),
            ),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.firstname = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Full Name",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.green,
                      )),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.cnic = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your CNIC",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.perm_identity,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 6.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.phonenumber = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Contact No",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.email = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Email Address",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.mail_rounded,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.address = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Residential Address",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.home,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.city = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your City Name",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.location_city,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.nooffamilymember = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Number of your Family Members",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.family_restroom,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.noofchild = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Number of your Children",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.child_care,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 6.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.noofadults = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Number of your Adults",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.family_restroom_sharp,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.datetime,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.dateofarrival = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Check-In-Date (mm/dd/yy)",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.calendar_today,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.datetime,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },
                  onSaved: (String value) {
                    book.dateofdeparture = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Check-Out-Date (mm/dd/yy)",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.green,
                      )),
                )),
            SizedBox(height: 0.0),
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,

                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal),
                  // ignore: missing_return
                  /* validator: (String value) {
                    if (value.isEmpty) return '  This Field is Required';
                  },*/
                  onSaved: (String value) {
                    book.comments = value;
                  },
                  decoration: InputDecoration(
                      hintText: "Comments",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.comment_rounded,
                        color: Colors.green,
                      )),
                )),
            RaisedButton(
              color: Colors.green[400],
              child: Text("Submit"),
              textColor: Colors.white,
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

/*class Decoration extends StatelessWidget {
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
}*/
