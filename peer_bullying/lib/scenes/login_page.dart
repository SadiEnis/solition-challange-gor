import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.amber,
        ),
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            buildFirstNameField(),
            // buildLastNameField(),
            // buildGradeField(),
            // buildSubmitButton()
          ],
        ),
      ),
    );
  }

  Widget buildFirstNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Parent Name", hintText: "John"),
      onSaved: (value) {
        if (value != null) {}
      },
    );
  }
}
