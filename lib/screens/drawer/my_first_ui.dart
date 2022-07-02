import 'package:flutter/material.dart';

import '../../widgets/drawer_widget.dart';

class MyFirstUi extends StatefulWidget {
  const MyFirstUi({Key? key}) : super(key: key);

  @override
  State<MyFirstUi> createState() => _MyFirstUiState();
}

class _MyFirstUiState extends State<MyFirstUi> {
  @override
  Widget build(BuildContext context) {
    // return throw UnimplementedError();
    final isLandScape = MediaQuery.of(context).orientation == Orientation.landscape;
    if(isLandScape){
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
          ),
          body: DrawerWidget());
    }
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(onPressed: () {

        },
        icon: IconButton(icon: Icon(Icons.menu,), onPressed: () {
          Scaffold.of(context).openDrawer();
        },)),
        title: const Text('First App',),
        centerTitle: true,
      ),

      drawer: DrawerWidget(),
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


