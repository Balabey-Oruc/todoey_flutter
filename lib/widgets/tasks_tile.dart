import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  final Function calledBackFunction;
  final String titleName;
  final bool isChecked;
  ListTiles({this.isChecked,this.titleName,this.calledBackFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(titleName,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: calledBackFunction,
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
      ),
    );
  }
}





