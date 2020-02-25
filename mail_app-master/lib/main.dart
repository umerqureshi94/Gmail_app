import 'package:flutter/material.dart';



import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: MyAppHome(),
    );
  }
}
class MyAppHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyAppState();
  }
}
class MyAppState extends State<MyAppHome>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final drawerHeader=UserAccountsDrawerHeader(
      accountName: new Text("sherry"),
      accountEmail: Text("syedmuhammadshaheryar0@gmail.com"),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0,),
        backgroundColor: Colors.pink,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(child:Text("shaheryar"),),
        CircleAvatar(child: Text("sherry"),),

      ],
    );
    final drawer=ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(title: new Text("Primary"),onTap: (){Navigator.of(context).push(NewPage(1));},),
        Divider(),
        ListTile(title: new Text("social"),onTap: (){Navigator.of(context).push(NewPage(2));},),
        Divider(),
        ListTile(title: new Text("promotions"),onTap: (){Navigator.of(context).push(NewPage(3));},),
        Divider(),
        ListTile(title: new Text("Close"),onTap: (){Navigator.of(context).pop();},),
        Divider(),
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Inbox"),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
      ),
      drawer: Drawer(
        child: drawer,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(),
            title: Text('Email header...'),
            subtitle: Text('Some text here...'),
            trailing: Column(
              children: <Widget>[
                Text('24 Jan'),
                Icon(Icons.star),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text('Email header...'),
            subtitle: Text('Some text here...'),
            trailing: Column(
              children: <Widget>[
                Text('24 Jan'),
                Icon(Icons.star),
              ],
            ),
          ),],
      ),
    );
  }
}

class NewPage extends MaterialPageRoute<Null>{
  int id;

  NewPage(this.id)
      :super(builder:(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: new Text("Page $id"),),
      body: Center(child: new Text("PAge $id"),),
    );
  });

}













/*

void main() => runApp(MyApp()) ;


}


class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "hamari app ",
      debugShowCheckedModeBanner: false,
      home: MyApp()
    );
  }*/