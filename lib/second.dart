import 'package:flutter/material.dart';
import 'package:sh/List.dart';
import 'package:sh/page.dart';

class shpage extends StatefulWidget {
  int index;

  shpage(this.index);

  @override
  State<shpage> createState() => _shpageState();
}

class _shpageState extends State<shpage> {
  List shayari = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.index == 0) {
      shayari.addAll(data.love_shayari);
    } else if (widget.index == 1) {
      shayari.addAll(data.dosti_shayari);
    } else if (widget.index == 2) {
      shayari.addAll(data.majedar_shayari);
    } else if (widget.index == 3) {
      shayari.addAll(data.romentic_shayari);
    } else if (widget.index == 4) {
      shayari.addAll(data.other_shayari);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("love shayari"),

      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return pagedemo2(shayari,index);
          },));
        },child: ListTile(title: Text("${shayari[index]}",),));
      }, separatorBuilder: (context, index) {
        return Divider(thickness: 5,);
      }, itemCount: shayari.length),
    );
  }
}
