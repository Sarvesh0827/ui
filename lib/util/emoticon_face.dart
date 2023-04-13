import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticanFace;
  const EmoticonFace({Key? key, required this.emoticanFace}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(12),
      child: Center(
          child: Text(emoticanFace,
          style: TextStyle(fontSize: 28),)),
    );
  }
}
