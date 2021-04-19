import 'package:booking/ui/revision.dart';
import 'package:booking/widget/progressDialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BookingPage extends StatefulWidget{


  @override
  _BookingPageState createState() => _BookingPageState();
}
class _BookingPageState extends State<BookingPage>{

  TextEditingController nameTec = TextEditingController();
  TextEditingController nationalIdTec = TextEditingController();
  TextEditingController phoneTec = TextEditingController();
  TextEditingController charchTec= TextEditingController();
  TextEditingController monaspaTec= TextEditingController();
  String valueChoosech;
  List listItemch=[
    'كنيسة القديس ماريوحنا',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Column(
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
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              color: Colors.red[900],
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              margin: const EdgeInsets.all(10.0),
              elevation: 0.0,
              child: SizedBox( height: 50.0,
                width: 200.0,
                child: InkWell( splashColor: Colors.red[500],
                  onTap: () {
                  },
                  child: Row(children: const <Widget>[
                    Expanded(child:
                    Text('حجز مناسبة',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 30.0
                      ),
                    ),
                    ),
                  ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      controller:nameTec,
                      cursorColor: Colors.red[900],
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          hintText: 'اكتب اسمك ثلاثي بلعربي',
                          hintStyle: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 16.0
                          ),
                          labelText: 'الاسم',
                          labelStyle: TextStyle(
                            fontSize: 16.0,
                            color: Colors.red,
                          )
                      ),
                      style: TextStyle(
                          fontSize: 16.0
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (String value){
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      controller: nationalIdTec,
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
                      controller: phoneTec,
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child:  TextFormField(
                      controller: charchTec,
                      cursorColor: Colors.red[900],
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        hintText: 'اكتب اسم الكنيسة',
                        hintStyle: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 16.0
                        ),
                        labelText: 'كنيسة',
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.red,
                        ),

                      ),
                      style: TextStyle(
                          fontSize: 14.0
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (String value){

                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child:  TextFormField(
                      controller: monaspaTec,
                      cursorColor: Colors.red[900],
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          hintText: 'اكتب المناسبة',
                          hintStyle: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 16.0
                          ),
                          labelText: 'المناسبة',
                          labelStyle: TextStyle(
                            fontSize: 16.0,
                            color: Colors.red,
                          ),
                      ),
                      style: TextStyle(
                          fontSize: 14.0
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (String value){

                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Row(
                    children: [

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
                            onTap: () async {
                            if(nameTec.text.isEmpty){
                              dissplayToastMsg('من فضلك ادخل بياناتك بشكل صحيح',context);

                            }
                           else if(nationalIdTec.text.length<14)
                            {
                              dissplayToastMsg('من فضلك اكتب الرقم القومي صح الرقم مكون من 14 رقم .',context);
                            }
                            else if(phoneTec.text.isEmpty)
                            {
                              dissplayToastMsg('ادخل رقم الهاتف.',context);
                            }else if(charchTec.text.isEmpty)
                            {
                              dissplayToastMsg('ادخل اسم الكنيسة.',context);
                            }
                            else if(monaspaTec.text.isEmpty)
                            {
                              dissplayToastMsg('ادخل المناسبه. ',context);
                            }
                            else{
                              showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context){
                                    return ProgressDialog(message: 'جاري التسجيل من فضلك انتظر',);
                                  }
                              );
                              var result= await Firebase.initializeApp();
                              if(result !=null){
                                Navigator.pop(context);
                              var userinfo= FirebaseFirestore.instance.collection('users').doc().set(
                                  {
                                    'name':nameTec.text.trim(),
                                    'nationalid':nationalIdTec.text.trim(),
                                    'phone':phoneTec.text.trim(),
                                    'churchname':charchTec.text.trim(),
                                    'occasion':monaspaTec.text.trim(),
                                  });
                              dissplayToastMsg('تم التسجيل بنجاح',context);
                              }
                              else{
                                Navigator.pop(context);
                                dissplayToastMsg('حطاء في التسجيل .',context);
                              }
                            }

                            },
                            child: Row(children: const <Widget>[
                              Expanded(child:
                              Text('تسجيل',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20.0,
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
                )

              ],
            )
          ],
        ),
      ),
    );
  }




}
dissplayToastMsg(String message,BuildContext context)
{
  Fluttertoast.showToast(msg: message);
}