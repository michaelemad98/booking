import 'package:flutter/material.dart';
import 'package:booking/ui/info.dart';
import 'bookingpage.dart';
import 'about.dart';

class HomeMain extends StatefulWidget{
  @override
  _HomeMainState createState() => _HomeMainState();

}
class _HomeMainState extends State<HomeMain>{
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
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'ايبارشيه \n بنها وقويسنا \n كنائس مدينة بنها',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Text('وَلْيَكُنْ كُلُّ شَيْءٍ بِلِيَاقَةٍ وَبِحَسَبِ تَرْتِيبٍ \n   كُورِنْثُوسَ الأُولَى ١٤ : ٤٠',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Montserrat',

            ),
          ),
          Card(
            color: Colors.red[900],
            margin: const EdgeInsets.all(20.0),
            elevation: 0.0,
            child: SizedBox( height: 100.0,
              child: InkWell( splashColor: Colors.red[500],
                onTap: () {
                  Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Info()));
                },
                child: Row(children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.info , color: Colors.white,size: 50.0,),
                  ),
                  Expanded(child:
                  Text('هام جدا',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontSize: 30.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  ),

                ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.red[900],
            margin: const EdgeInsets.all(20.0),
            elevation: 0.0,
            child: SizedBox( height: 100.0,
              child: InkWell( splashColor: Colors.red[500],
                onTap: () {
                  Navigator.of(context).push( MaterialPageRoute(builder: (context)=>BookingPage()));
                },
                child: Row(children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.add , color: Colors.white,size: 50.0,),
                  ),
                  Expanded(child:
                  Text('حجز مناسبة',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontSize: 30.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  ),
                ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.red[900],
            margin: const EdgeInsets.all(20.0),
            elevation: 0.0,
            child: SizedBox( height: 100.0,
              child: InkWell( splashColor: Colors.red[500],
                onTap: () {
                  Navigator.of(context).push( MaterialPageRoute(builder: (context)=>ApoutPage()));
                },
                child: Row(children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.add , color: Colors.white,size: 50.0,),
                  ),
                  Expanded(child:
                  Text('عن التطبيق',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontSize: 30.0,
                      fontFamily: 'Montserrat',
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