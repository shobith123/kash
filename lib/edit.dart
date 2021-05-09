import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            StreamBuilder<QuerySnapshot>(
              stream: _firestore
                  .collection('users')
                  .doc(FirebaseAuth.instance.currentUser.email)
                  .collection('expense')
                  .snapshots(),
              builder: (context, snapshot) {
                print(snapshot.data.docs.length);
                if(snapshot.hasData) {
                  return ListView(
                    children: snapshot.data.docs.map((document){
                      return Container(

                          child: Text('Amount : '+ document['category']),

                      );
                    }).toList(),
                  );

                      // DataTable(
                      //   columns: [
                      //     DataColumn(
                      //         label: Text('ID',
                      //             style: TextStyle(
                      //                 fontSize: 18,
                      //                 fontWeight: FontWeight.bold))),
                      //     DataColumn(
                      //         label: Text('Name',
                      //             style: TextStyle(
                      //                 fontSize: 18,
                      //                 fontWeight: FontWeight.bold))),
                      //     DataColumn(
                      //         label: Text('Profession',
                      //             style: TextStyle(
                      //                 fontSize: 18,
                      //                 fontWeight: FontWeight.bold))),
                      //   ],
                      //
                      //   rows: [
                      //     DataRow(cells: [
                      //       DataCell(Text(snapshot.data['amount'])),
                      //       DataCell(Text(snapshot.data['date'])),
                      //       DataCell(Text(snapshot.data['category'])),
                      //       DataCell(Text(snapshot.data['category'])),
                      //     ]),
                      //   ],
                      // )
                      // ListTile(
                      //   title: Text(),
                      //   subtitle: Text(snapshot.data['date']),snapshot.data['amount']
                }
                else{
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
