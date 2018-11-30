import 'package:flutter/material.dart';
import '../utils/transaction.dart';
import '../ui/tiles.dart';

class AccountPage extends StatefulWidget {
  final List<Transaction> tlist;
  AccountPage(this.tlist);
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  List<Widget> twlist = new List<Widget>();
  @override
  void initState(){
    super.initState();
    for(int i=0; i<widget.tlist.length; i++){
      twlist.add(new TransTile(widget.tlist[i]));
      twlist.add(new Divider());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Acount Info"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("PROFILE PAGE",style: TextStyle(fontSize: 30.0),
              )
            ),
          ] + twlist,
        )
      )
    );
  }
}
