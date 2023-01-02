import 'package:flutter/material.dart';
import 'package:sh/List.dart';

class fourth extends StatefulWidget {
  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("फोटो पे शायरी लिखे"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.pink,
              alignment: Alignment.center,
              height: 500,
              width: double.infinity,
              child: Text(
                "${data.love_shayari}",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
