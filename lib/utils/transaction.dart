import 'package:cloud_firestore/cloud_firestore.dart';

class Transaction{
final String from, to, message, timestamp;
final double amt;
Transaction(this.from, this.to, this.message, this.timestamp, this.amt);
}

class Group{
final String owner;
final String gname;
List<String> members;
List<double> amt;
List<bool> paid;
Group(this.owner, this.gname, this.members, this.amt, this.paid);
}

class User{
  String userName;
  String password;
  String name;
  double balance;

  User(userName){
    this.userName = userName;
    this.balance = 0.0;
    this.password = '';
    this.name = '';
  }

  //User(this.userName, this.password, this.name, this.balance);
  Map toMap(){
    Map userMap = new Map<String,dynamic>();
    userMap['userName'] = this.userName;
    userMap['balance'] = this.balance;
    userMap['name'] = this.name;
    userMap['password'] = this.password;
    return userMap;
  }

  void setUser(){
    //User data = User('jithin');
    var df = Firestore.instance.collection('Users').document().setData(this.toMap());
    print("added!");
  }

  void getUser(){

  }
}