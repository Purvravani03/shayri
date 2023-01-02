import 'package:flutter/material.dart';
import 'package:sh/List.dart';
import 'package:sh/second.dart';

void main() {
  runApp(MaterialApp(
    home: shayari(),
    debugShowCheckedModeBanner: false,
  ));
}

class shayari extends StatefulWidget {
  const shayari({Key? key}) : super(key: key);

  @override
  State<shayari> createState() => _shayariState();
}

class _shayariState extends State<shayari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Love shayari"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return shpage(index);
                  },
                ));
              },
              child: ListTile(
                leading: Image(image: AssetImage("img/${data.image[index]}")),
                title: Text("${data.title[index]}"),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: data.image.length),
    );
  }
}
