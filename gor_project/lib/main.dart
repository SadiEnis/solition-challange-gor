import 'package:flutter/material.dart';
import 'package:gor_project/scenes/firstPage.dart';
import 'package:gor_project/scenes/firstPageTrue.dart';
import 'package:gor_project/scenes/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      // theme: ThemeData(backgroundColor: Colors.amberAccent),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State {
  String selectedImage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GOR"),
        backgroundColor: Colors.amber,
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Container(
      margin: EdgeInsets.all(80.0),
      child: Column(children: <Widget>[
        Container(margin: EdgeInsets.only(bottom: 30), child: buildButtun1()),
        Container(margin: EdgeInsets.only(bottom: 30), child: buildButtun2()),
        Container(margin: EdgeInsets.only(bottom: 30), child: buildButtun3()),
      ]),
    );
  }

  Widget buildButtun1() {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: OutlinedButton(
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text("5-7 Age"),
                  ),
                  Center(
                    child: Text("Parental Supervision"),
                  )
                ],
              ),
            ),
            style: OutlinedButton.styleFrom(fixedSize: Size.fromHeight(80)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
          ),
        )
      ],
    );
  }

  Widget buildButtun2() {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: OutlinedButton(
            child: Text("8-12 Age"),
            style: OutlinedButton.styleFrom(fixedSize: Size.fromHeight(80)),
            onPressed: () {
              print("test button");
            },
          ),
        )
      ],
    );
  }

  Widget buildButtun3() {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: OutlinedButton(
            child: Text("button3"),
            style: OutlinedButton.styleFrom(fixedSize: Size.fromHeight(80)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        )
      ],
    );
  }
}
