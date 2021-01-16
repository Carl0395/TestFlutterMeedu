import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:test_meedu/controllers/test_controller.dart';
import 'package:test_meedu/four_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => FourPage(),
            ),
            (Route<dynamic> route) => route.isFirst,
          );
        },
      ),
      body: SimpleBuilder<TestController>(
        allowRebuild: false,
        builder: (controller) {
          return Container();
        },
      ),
    );
  }
}