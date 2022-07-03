import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}
class _TestScreenState extends State<TestScreen> {

  String content = 'hello word';
  Color backgroundColor = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Text(content,textAlign: TextAlign.center,),
          ElevatedButton(onPressed: (){
            setState(() {
              backgroundColor = backgroundColor == Colors.orange ? Colors.red : Colors.orange;
              content = content == 'hello word' ? 'Goodbuy world':'Hello World';
            });
          }, child: Text('change content & color'),),
      ],),
    );
  }
}
