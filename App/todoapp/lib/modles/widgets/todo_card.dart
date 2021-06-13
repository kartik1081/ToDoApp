import 'package:flutter/material.dart';
import 'package:todoapp/modles/global.dart';

// ignore: must_be_immutable
class TodoCard extends StatelessWidget {
  late final String title;
  String keyValue;
  TodoCard({required this.title, required this.keyValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue),
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          new BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Radio(
            groupValue: null,
            onChanged: (Null? value) {},
            value: null,
          ),
          Column(
            children: <Widget>[
              Text(
                title,
                style: darkTodoTitle,
              )
            ],
          )
        ],
      ),
    );
  }
}
