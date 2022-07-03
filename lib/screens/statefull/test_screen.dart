import 'package:flutter/material.dart';
import 'package:gsg_ui/main.dart';

import '../../widgets/drawer_widget.dart';

class TestScreen extends StatefulWidget {
  Function function;
  bool isDark;
  TestScreen(this.function, this.isDark);
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  String content = 'hello world';
  Color backgroundColor = Colors.orange;
  int index = 0;
  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  String state = 'off';
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      key: _scaffoldkey,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(state,),
              // Switch(
              //     value: widget.isDark,
              //     onChanged: (value) {
              //       widget.function(value);
              //     })
              Switch(
                value: isSwitched,
                onChanged: (value){
                  if(isSwitched == false){
                    setState(() {
                      isSwitched = true;
                      state = 'on';
                      myNotifier.value = ThemeMode.dark;
                      myNotifier.notifyListeners();
                    });
                  }
                  else{
                    setState(() {
                      isSwitched = false;
                      state = 'off';
                      myNotifier.value = ThemeMode.light;
                      myNotifier.notifyListeners();
                    });
                  }
                },
              ),
            ],
          ),
          Text(
            content,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                backgroundColor = backgroundColor == Colors.orange
                    ? Colors.red
                    : Colors.orange;
                content =
                    content == 'hello world' ? 'Goodbuy world' : 'Hello World';
              });
            },
            child: const Text('change content & color'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
            switch (i) {
              case 0:
                content = 'Home';
                break;
              case 1:
                content = 'favorite';
                break;
              case 2:
                content = 'Identity';
                break;
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_identity,
            ),
            label: 'Identity',
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children:  [
            const UserAccountsDrawerHeader(
                decoration: (BoxDecoration(color: Colors.red)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/70561744?v=4"),
                ),
                accountName: Text("Mamoun K Abu Salah",style: TextStyle(fontWeight: FontWeight.bold),),
                accountEmail: Text("mmun2019@gmail.com")
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              trailing: const Icon(Icons.arrow_forward_ios),
              subtitle: const Text("Go Home"),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  content = 'home';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
