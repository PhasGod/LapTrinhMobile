import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hiển thị ảnh từ assets'),
        ),
        body: Center(
          child: Row(
            children: [
              Image.asset('assets/images/1.png', width: 130, height: 150,),
              Image.asset('assets/images/2.png', width: 130, height: 150,),
              Image.asset('assets/images/3.png', width: 130, height: 150,),
            ],
          ),
        ),

      ),
    );
  }
}

void main() {
  runApp(MyApp());
}