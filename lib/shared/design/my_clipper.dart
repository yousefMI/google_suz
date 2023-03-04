
import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip( size) {
   
    final path = Path();
    path.lineTo(0, size.height/1.25);
    path.cubicTo(
        size.width/2*0.6,
        size.height *0.5,
        size.width ,
        size.height *1.4,
        size.width *1.2,
        size.height /1.5);
    path.lineTo(size.width, 0 );
    return path;

  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) =>false;
}
