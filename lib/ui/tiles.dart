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