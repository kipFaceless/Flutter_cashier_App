import 'package:command_test/pages/model/product.dart';
import 'package:command_test/pages/password.dart';
import 'package:command_test/pages/views/products/create_product.dart';
//import 'package:command_test/pages/views/customers/customer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Password(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = '';
  void onPressed() {
    print("The text is $_text");
  }

  void onPressed2() {
    print(_controller.text);
  }

  void textChanged(String value) {
    setState(() {
      _text = value;
    });
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Testes"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _controller,
                  // maxLines: 3,
                  autocorrect: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.access_alarms),
                      hintText: "Seu nome",
                      labelText: "Este é o seu nome"),
                  onChanged: (String value) {
                    textChanged(value);
                  },
                ),
                ElevatedButton(child: Text("Clica"), onPressed: onPressed2)
              ],
            ),
          ),
        ));
  }
}
