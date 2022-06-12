import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data='';
  Future _openDetails() async{
    Map results = await Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context){
        return new DetailPage(input:"PDP Online",);
      },

    ));
    if(results!=null&& results.containsKey('data')){
      setState((){
        data = results['data'];
      });
      print(results['data']);
    }
    else
      print("Not");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            _openDetails();
            //Navigator.pushReplacementNamed(context, DetailPage.id);
          },
          color: Colors.orange,
          child: Text(data),
        ),
      ),
    );
  }
}