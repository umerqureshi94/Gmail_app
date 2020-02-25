import 'package:flutter/material.dart';



import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Gmail App",
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
      accountName: new Text("Umer"),
      accountEmail: Text("umerqureshi95@gmail.com"),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0,),
        backgroundColor: Colors.red,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(child:Text("U"),),
        CircleAvatar(child: Text("Q"),),

      ],
    );
    final drawer=ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(title: new Text("Primary"),onTap: (){Navigator.of(context).push(NewPage(1));},),
        Divider(),
        ListTile(title: new Text("Social"),onTap: (){Navigator.of(context).push(NewPage(2));},),
        Divider(),
        ListTile(title: new Text("Promotions"),onTap: (){Navigator.of(context).push(NewPage(3));},),
        Divider(),
        ListTile(title: new Text("Close"),onTap: (){Navigator.of(context).pop();},),
        Divider(),
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Inbox"),
        backgroundColor: Colors.deepOrange,
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
                Text('25 Feb'),
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