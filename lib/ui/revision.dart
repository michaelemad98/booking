import 'package:booking/ui/userspage.dart';
import 'package:flutter/material.dart';
class Revision extends StatefulWidget{
  @override
  _Revision createState() =>_Revision();

}
class _Revision extends State<Revision>{
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
                    'ايبارشيه \n بنها وقويسنا \n كنائس مدينة بنها',
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                cursorColor: Colors.red[900],
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: 'اكتب الرقم القومي',
                    hintStyle: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16.0
                    ),
                    labelText: 'الرقم القومي ',
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                    )
                ),
                style: TextStyle(
                    fontSize: 16.0
                ),
                keyboardType: TextInputType.number,
                onSaved: (String value){
                },
                maxLength: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  TextFormField(
                cursorColor: Colors.red[900],
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: 'اكتب رقم الموبايل',
                    hintStyle: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16.0
                    ),
                    labelText: 'رقم الموبايل',
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                    ),
                    prefixText: '+02'
                ),
                style: TextStyle(
                    fontSize: 14.0
                ),
                keyboardType: TextInputType.phone,
                onSaved: (String value){

                },
              ),
            ),
          ),
          Card(
            color: Colors.red[900],
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
            ),
            margin: const EdgeInsets.all(10.0),
            elevation: 0.0,
            child: SizedBox( height: 40.0,
              width: 100,
              child: InkWell( splashColor: Colors.red[50],
                onTap: () {
                  Navigator.of(context).push( MaterialPageRoute(builder: (context)=>UserPage()));
                },
                child: Row(children: const <Widget>[
                  Expanded(child:
                  Text('استعلام',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                  ),
                ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}