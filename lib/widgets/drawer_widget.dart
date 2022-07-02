
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          UserAccountsDrawerHeader(
              decoration: (BoxDecoration(color: Colors.red)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/70561744?v=4"),
              ),
              accountName: Text("Mamoun K Abu Salah",style: TextStyle(fontWeight: FontWeight.bold),),
              accountEmail: Text("mmun2019@gmail.com")
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            trailing: Icon(Icons.arrow_forward_ios),
            subtitle: Text("Go Home"),
          ),
        ],
      ),
    );
  }
}