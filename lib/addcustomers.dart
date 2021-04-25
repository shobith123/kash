import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Addcustomer extends StatefulWidget {
  @override
  _Addcustomer createState() => _Addcustomer();
}

class _Addcustomer extends State<Addcustomer> {
  String name;
  int phone;
  int credit;
  int debit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Add Customers',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    onChanged: (value) {
                     name = value;
                    },
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      labelText: "Customer name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintStyle:
                      TextStyle(color: Colors.black, fontSize: 16.0),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    onChanged: (value) {
                      phone = value as int;
                    },
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly],

                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "",
                      hintStyle:
                      TextStyle(color: Colors.black, fontSize: 16.0),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    onChanged: (value) {
                      credit = value as int;
                    },
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly],

                    decoration: InputDecoration(
                      labelText: "Credit",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "000",
                      hintStyle:
                      TextStyle(color: Colors.black, fontSize: 16.0),
                    )),
              ),

              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    onChanged: (value) {
                      credit = value as int;
                    },
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly],

                    decoration: InputDecoration(
                      labelText: "Debit",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "000",
                      hintStyle:
                      TextStyle(color: Colors.black, fontSize: 16.0),
                    )),
              ),


              SizedBox(
                height: 30,
              ),
              RaisedButton(
                onPressed: () async {

                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Add Customer',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}