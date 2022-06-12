import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  static final String id="Detail_page";
  String input;
  DetailPage({this.input='Kurra'});
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).pop({'data':"The Best"});
          },
          color: Colors.blue,
          child:Text(widget.input),
        ),
      ),

    );
  }
}