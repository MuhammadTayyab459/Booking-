import 'package:book/booking_model.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
//import 'package:book/booking_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'HotelForm.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Book book;
  final firestore = FirebaseFirestore.instance;
  //String Firstname;

  Result({this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
        backgroundColor: Colors.green[400],
      ),
      backgroundColor: Colors.white,
      body: Container(
        //alignment: Alignment.topCenter,
        padding: EdgeInsets.fromLTRB(0, 70, 0, 10),
        height: 800,
        width: 800.0,

        //margin: EdgeInsets.all(10.0),
        child: Dialog(
          //padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: Text(book.firstname,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.cnic,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.address,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.city,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.email,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.noofadults,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.noofchild,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.nooffamilymember,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.dateofarrival,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.dateofdeparture,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Text(book.comments,
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                    //color: Colors.green[400],
                    child: Text("Submit"),
                    // textColor: Colors.white,
                    onPressed: () {
                      firestore.collection('hotel_booking').add({
                        'Full Name': book.firstname,
                        'Email': book.email,
                        'Contact No': book.phonenumber,
                        'Address': book.address,
                        'City': book.city,
                        'CNIC': book.cnic,
                        'Number of Adults': book.noofadults,
                        'Number of Child': book.noofchild,
                        'Number of Family Member': book.nooffamilymember,
                        'Check In Date': book.dateofarrival,
                        'Check Out Date': book.dateofdeparture,
                        'Comments': book.comments,
                      });
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
