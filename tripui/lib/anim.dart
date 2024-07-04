import 'package:flutter/material.dart';
class Anim extends StatefulWidget {
   final  Widget? child;
  const Anim({super.key, required this.child});

  @override
  State<Anim> createState() => _AnimState();
}

class _AnimState extends State<Anim> {
  

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: 2),
     builder: (BuildContext context, double value, child) {
       return Opacity(opacity: value,child: child,);
     },
    );
  }
}