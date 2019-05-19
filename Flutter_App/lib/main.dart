import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CrudExample();
  }
}

class CrudExample extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "My App",debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Fire Up!"),
        ),drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // ignore: argument_type_not_assignable
                new RaisedButton(
                  onPressed: _add,
                  child: Text("ADD"),
                  color: Colors.lightBlue,
                ),

                new Padding(padding: const EdgeInsets.all(10.0)),
                new RaisedButton(
                  onPressed: _update,
                  child: Text("UPDATE"),
                  color: Colors.lightBlue,
                ),

                new Padding(padding: const EdgeInsets.all(10.0)),
                new RaisedButton(
                  onPressed: _delete,
                  child: Text("DELETE"),
                  color: Colors.lightBlue,
                ),


                new Padding(padding: const EdgeInsets.all(10.0)),
                new RaisedButton(
                    onPressed: _fetch,
                    child: Text("FETCH"),
                    color: Colors.lightBlue),
              ]),
        ),
      ),
    );
  }

  void _delete() {
    Map<String, String >data = <String, String>{
    "name" : "Swapnil",
    "city":"Vadodara"
  };
  DocumentReference documentReference = Firestore.instance.collection("users").document("info");
  documentReference.setData(data).whenComplete(() {
    print("Data Inserted");
  });}

  void _add() {
    Map<String, String >data = <String, String>{
      "name" : "Swapnil",
      "city":"Vadodara"
    };
    DocumentReference documentReference = Firestore.instance.collection("users").document("info");
    documentReference.setData(data).whenComplete(() {
      print("Data Inserted");
    });
  }

  void _fetch() {
    Map<String, String >data = <String, String>{
    "name" : "Swapnil",
    "city":"Vadodara"
  };
  DocumentReference documentReference = Firestore.instance.collection("users").document("info");
  documentReference.setData(data).whenComplete(() {
    print("Data Inserted");
  });}

  void _update() {
    Map<String, String >data = <String, String>{
    "name" : "Swapnil",
    "city":"Vadodara"
  };
  DocumentReference documentReference = Firestore.instance.collection("users").document("info");
  documentReference.setData(data).whenComplete(() {
    print("Data Inserted");
  });}
}
