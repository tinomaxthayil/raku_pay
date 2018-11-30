import 'package:flutter/material.dart';
import '../utils/transaction.dart';

class TransTile extends StatelessWidget {
  final Transaction t;
  TransTile(this.t);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(t.from+" -> "+t.to+" : "+t.amt.toString()),
    );
  }
}

class GroupTile extends StatelessWidget {
  final String gname;
  final VoidCallback _onTap;
  GroupTile(this.gname, this._onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => _onTap(),
        child: Row(
          children: <Widget>[
            Image(
							image: new AssetImage('assets/userPic.png'),
							height: 150.0,
							width: 150.0,
						),
            Text(gname),
          ],
        ),
      ),
    );
  }
}