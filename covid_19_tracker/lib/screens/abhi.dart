
import 'package:flutter/material.dart';


class Abhi extends StatefulWidget {
  @override
  _Abhi createState() => new _Abhi();
}

class _Abhi extends State<Abhi> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(color: Colors.blue[900]),
          clipper: getClipper(),
        ),
        Positioned(
            width: 400.0,
            top: MediaQuery.of(context).size.height / 3,
           
            child: Column(
              children: <Widget>[
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://avatars2.githubusercontent.com/u/30832945?s=400&v=4'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                SizedBox(height: 50.0),
                
                Text(
                  'Abhishek',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Montserrat'),
                ),
                  SizedBox(height: 20.0),
                Text(
                  'Angular | React | Flutter',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu'),
                ),
                    SizedBox(height: 100.0),
                     Text(
                  'App  is  Made with  ❤ ️ ☕  &  flutter',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Ubuntu'),
                ),
              ],
              
            )),
            
            
      ],
    ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.4);
    path.lineTo(size.width + 165, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
