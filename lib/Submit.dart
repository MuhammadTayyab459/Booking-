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
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white70,
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.fromLTRB(0, 70, 0, 5),
        height: 600,
        width: 700.0,

        //margin: EdgeInsets.all(10.0),
        child: Dialog(
          //padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(book.firstname,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.lastname,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.email,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.address,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.city,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.province,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.noofadults,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.noofchild,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.noofadultchild,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.dateofarrival,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.dateofdeparture,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(book.comments,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    //color: Colors.grey,
                    child: Text(
                      "Preview",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black54,
                          fontStyle: FontStyle.italic),
                    ),
                    onPressed: () {
                      firestore.collection('hotel_booking').add({
                        'first_name': book.firstname,
                        'last_name': book.lastname,
                        'email': book.email,
                        'phone_number': book.phonenumber,
                        'address': book.address,
                        'city': book.city,
                        'province': book.province,
                        'no_of_adults': book.noofadults,
                        'no_of_chiild': book.noofchild,
                        'no_of_adult_children': book.noofadultchild,
                        'date_of_arrival': book.dateofarrival,
                        'date_od_dept': book.dateofdeparture,
                        'comments': book.comments,
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
