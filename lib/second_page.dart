import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:test_meedu/controllers/test_controller.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:test_meedu/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<TestController>(
      create: (_) => TestController(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('SecondPage'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            router.push(ThirdPage());
          },
        ),
      ),
    );
  }
}