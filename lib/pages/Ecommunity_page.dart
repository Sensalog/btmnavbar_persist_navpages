import 'package:flutter/material.dart';

class EcommunityPage extends StatefulWidget {
  const EcommunityPage({Key? key}) : super(key: key);

  @override
  _EcommunityPageState createState() => _EcommunityPageState();
}

class _EcommunityPageState extends State<EcommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Community Page"),
      ),
    );
  }
}
