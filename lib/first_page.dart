import 'package:flutter/material.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:test_meedu/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          router.push(SecondPage());
        },
      ),
    );
  }
}