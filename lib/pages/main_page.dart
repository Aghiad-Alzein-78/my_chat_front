import 'package:flutter/material.dart';
import '../utils/connection.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                connectTest("192.168.1.110", 3000);
              },
              child: Text("connect"),
            )
          ],
        ),
      ),
    );
  }
}
