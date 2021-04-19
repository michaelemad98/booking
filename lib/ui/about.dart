
import 'package:flutter/material.dart';


class ApoutPage extends StatefulWidget{
  @override
  _ApoutPage createState() =>_ApoutPage();

}
class _ApoutPage extends State<ApoutPage>{ Widget build(BuildContext context) {
  return new Scaffold(
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(color: Colors.red[900].withOpacity(0.8)),
            clipper: getClipper(),
          ),
          Positioned(
              width: 350.0,
              top: MediaQuery.of(context).size.height / 5,
              child: Column(
                children: <Widget>[
                  Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.red[900],
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/3234167/pexels-photo-3234167.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          boxShadow: [
                            BoxShadow(blurRadius: 7.0, color: Colors.red)
                          ])),
                  SizedBox(height: 90.0),
                  Text(
                    'تطبيق لحجز خدمات \n كنائس مدينة بنها',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'برمجة وتطوير',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'مهندس مايكل عماد صبحي',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Montserrat'),
                  ),

                ],
              ))
        ],
      ));
}
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}