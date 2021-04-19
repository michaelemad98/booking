import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserPage extends StatefulWidget{
  @override
  _UserPage createState() =>_UserPage();

}
class _UserPage extends State<UserPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Stack(

            children: [

              Container(
                height: 120.0,
                width: double.infinity,
                color: Colors.red[900],
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'ابروشية بنها وقويسنا',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ],
          ),
           StreamBuilder(
             stream: FirebaseFirestore.instance.collection('users').snapshots(),
             builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
               if(!snapshot.hasData) return Text('Loading',
                 style: TextStyle(color: Colors.red,
                 fontSize: 35.0),
               );
               switch(snapshot.connectionState){
                 case ConnectionState.waiting: return new Text('Loading...');
                 default:
                   return new ListView(
                     children: snapshot.data.docs.map((DocumentSnapshot document) {
                       return new ListTile(
                         title: Text(document['name'],style: TextStyle(color: Colors.red),),
                         subtitle: Text(document['occasion'],style: TextStyle(color: Colors.red),),
                       );
                     }).toList(),
                   );
               }
             },
           ),

        ],
      ),
    );
  }
}