import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Teste'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // var _check  = false;

  void _incrementCounter() {
    setState(() { 
      _counter++;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.camera), 
      //       onPressed: () {
      //         print("Click");
      //       },),
      //       Checkbox(
      //         value: _check, 
      //         onChanged: (bool value) {
      //           setState(() {
      //             _check = value;
      //           });
      //         },)
      //   ],
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            //image: NetworkImage("https://cdn6.f-cdn.com/contestentries/68791/6145242/5336caec3b1ad_thumb900.jpg"),
            image: AssetImage("assets/img/back.jpg"),
            fit: BoxFit.cover
          )           
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30),
                child: Image(
                  image: AssetImage("assets/img/tinder.png"),
                ),
              ),
              Text(
                'GDG Tinder',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.plus_one),
      ), 
    );
  }
}
