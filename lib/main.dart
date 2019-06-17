import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: "Drawer", home: DrawerClass()));

class DrawerClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DrawerState();
  }
}

class _DrawerState extends State<DrawerClass> {
  var title = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: Center(
        child: new Text(
          this.title,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      drawer: _buildDrawer(context),
    );
  }

  Drawer _buildDrawer(context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: Text("pranavpandey777@gmail.com"),
          accountName: Text("Pranav Pandey"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: getImage(),
          ),
          otherAccountsPictures: <Widget>[
            GestureDetector(
              onTap: () {
                debugPrint("Clicked P");
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("P"),
              ),
            ),
            GestureDetector(
              onTap: () {
                debugPrint("Clicked A");
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("A"),
              ),
            ),
          ],
        ),

        /*Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Container(
              color: Colors.amberAccent,
              height: 200.0,
              child: getImage(),
            )),*/
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.assignment),
          title: Text("Profile"),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Seting"),
          onTap: () {},
        )
      ],
    ));
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage("images/camlogo.png");
    Image image = Image(
      image: assetImage,
      height: 50.0,
      width: 100.0,
    );

    return image;
  }
}
