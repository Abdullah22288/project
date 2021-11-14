import 'package:flutter/material.dart';

class RegUI extends StatefulWidget {
  const RegUI({Key? key}) : super(key: key);

  @override
  _RegUIState createState() => _RegUIState();
}

class _RegUIState extends State<RegUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Portal"),
        centerTitle: true,
        backgroundColor: Colors.grey,

      ),
body: Center(
  child: Column(
    children: [
      Text('Third Page'),
    ],
  ),
),

    );
  }
}
