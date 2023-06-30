import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 15,
      ),
      child: Row(
        children: const <Widget>[
          Text(
            'How are you? 👀',
            style: TextStyle(fontSize: 23),
          ),
        ],
      ),
    );
  }
}
