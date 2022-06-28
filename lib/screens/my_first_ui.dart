import 'package:flutter/material.dart';

class MyFirstUi extends StatelessWidget {
  const MyFirstUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return throw UnimplementedError();
    return Scaffold(
      appBar:AppBar(
        leading: Icon(Icons.menu,),
        title: Text('First App',),
        centerTitle: true,
      ),

      //Container color and size
      // Image(image: AssetImage('assets/images/ui.png') ,),
      // body: Image.asset('assets/images/ui.png'),
      // body: Image.network('https://goodmorning1.com/wp-content/uploads/2018/04/4821.jpg'),
      // Center(child: Text('First App')),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.network('https://goodmorning1.com/wp-content/uploads/2018/04/4821.jpg'),
            ),
            Text('FirstApp',),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                    Image.network('https://goodmorning1.com/wp-content/uploads/2018/04/4821.jpg',),
                    Text('image1'),
                  ],),
                ),
                Expanded(
                  child: Column(children: [
                    Image.network('https://goodmorning1.com/wp-content/uploads/2018/04/4821.jpg'),
                    Text('image1'),
                  ],),
                ),
              ],
            ),
            SizedBox(height: 24,),
            Text('Mamoun Abu Salah',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
