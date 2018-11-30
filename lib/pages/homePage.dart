import 'package:flutter/material.dart';
import './groupPage.dart';
import './personalPage.dart';
import './accountPage.dart';
import '../utils/transaction.dart';




class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  //Sample data for account page
  List<Transaction> tlist = [new Transaction("abcd", "efgh", "", "", 1000.0),
    new Transaction("efgh", "ijkl", "", "", 200.0), new Transaction("efgh", "abcd", "", "", 500.0),];

  List<Group> glist = [new Group("Kuriakose", ["Kuriakose", "Tino", "Jithin"], [100.0,20.0,500.0], [false,false,false]),
    new Group("Kuriakose", ["Kuriakose", "Tino", "Jithin"], [100.0,20.0,500.0], [false,false,false]),];
  


  TabController controller;



  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: <Widget>[
            MaterialButton(
              onPressed: () {
								print("Profile Pressed");
								Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AccountPage(tlist)));
							},
              child: Image(
                image: new AssetImage('assets/userPic.png'),
                height: 40.0,
                width: 40.0,
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
          ],
          title: new Text(
            "AppName",
            style: new TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepOrange,
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: controller,
            tabs: <Tab>[
              Tab(
                child: new Text(
                  "Groups",
                  style: new TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: new Text(
                  "Personal",
                  style: new TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: new Text(
                  "Budgets",
                  style: new TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            print("TAB" + controller.index.toString() + controller.toString());
            
          },
          child: new Icon(Icons.add),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            new GroupPage(glist),
            new PersonalPage(),
            new PersonalPage(),
          ],
        ),
      ),
    );
  }
}
