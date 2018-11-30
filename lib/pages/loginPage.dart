import 'package:flutter/material.dart';
import './homePage.dart';
import '../utils/transaction.dart';

class LoginPage extends StatelessWidget {

  User user = User('Thundu');
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
							image: new AssetImage('assets/userPic.png'),
							height: 150.0,
							width: 150.0,
						),

            TextField(
              decoration: InputDecoration(
                hintText: "Username",
              ),
            ),

            TextField(
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),

            MaterialButton(
              child: new Text("Login", style: TextStyle(color: Colors.white, fontSize: 20.0,),),
              onPressed: () {
                user.setUser();
								print("Login Pressed");
								Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
							},
              color: Colors.blue,
            ),

          ],
        )
      ),
    );
  }
}