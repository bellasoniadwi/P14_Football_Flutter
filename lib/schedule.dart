import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  final String time;
  final String match;
  final String place;

  Schedule({this.match = "", this.place = "", this.time = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: ListTile(
        leading: Text(time, 
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red, 
        fontWeight: FontWeight.bold), 
        ),
        title: Text(
          match,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          place,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
