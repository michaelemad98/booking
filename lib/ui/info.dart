import 'package:flutter/material.dart';

class Info extends StatefulWidget{
  @override
  _infoState  createState() => _infoState();

}
class _infoState extends State<Info>{
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
          Text('حرصاً على سلامة شعب الكنيسه نشدد على \n الأجراءات التاليه بكامل الالتزام : ',
            style: TextStyle(color:Colors.red[900],
              fontSize: 20.0,
              fontFamily: 'Montserrat',
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 6.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(' + الالتزام المشدد بكافة الاجراءات الاحترازيه \n  (الكمامه، الكحول، التباعد الاجتماعي) . ',
                  style: TextStyle(color:Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                Text(' + الأطفال حتى سن العاشرة يحضرون مع والديهم دون حجز . ',
                  style: TextStyle(color:Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                Text(' + الألتزام بالأماكن المخصصة للجلوس داخل الكنيسة . ',
                  style: TextStyle(color:Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                Text(' + لا يسمح بالحضور في اكثر من مناسبة من المناسبات السابقة . ',
                  style: TextStyle(color:Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                Text(' + عدم السماح بالدخول بدون حجز مسبق . ',
                  style: TextStyle(color:Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                Text(' + فى حالة الشعور بأى اعراض مرضيه حتى و ان كانت بسيطه من الأمانه تأجيل الحضور لحين التأكد من الشفاء التام . ',
                  style: TextStyle(color:Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )




        ],
      ),
    );
  }

}