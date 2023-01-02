import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sh/main.dart';
import 'package:sh/song.dart';


class pagedemo2 extends StatefulWidget {
  List shayari = [];
  int index;

  pagedemo2(this.shayari, this.index);

  @override
  State<pagedemo2> createState() => _pagedemo2State();
}

class _pagedemo2State extends State<pagedemo2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shayari"),
      ),
      body: Column(children: [
        Container(
          child: Text("1/6"),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.pinkAccent,
            child: PageView.builder(
              controller: PageController(initialPage: widget.index),
              onPageChanged: (value) {
                widget.index = value;
                setState(() {});
              },
              itemCount: widget.shayari.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Text(
                    "${widget.shayari[widget.index]}",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ),
        Spacer(),
        Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.green,
                child: Row(children: [
                  IconButton(onPressed: () {
                    FlutterClipboard.copy('${widget.shayari[widget.index]}').then(( value ) => print('copied'));
                    Fluttertoast.showToast(
                        msg: "shayari copied",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.redAccent,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }, icon: Icon(Icons.copy)),
                  SizedBox(width: 50,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
                  SizedBox(width: 50,),
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return fourth();
                    },));
                  }, icon: Icon(Icons.edit)),
                  SizedBox(width: 50,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                  SizedBox(width: 50,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),

                ]),
              ),
            )
          ],
        )
      ]),
    );
  }
}
