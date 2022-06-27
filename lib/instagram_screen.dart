import 'package:flutter/material.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 64.0,
                        height: 64.0,
                        child: CircleAvatar(
                          radius: 100.0,
                          child: Image.asset(
                            'assets/images/person.png',
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0,),
                      Text('username',style: TextStyle(fontWeight: FontWeight.bold,),),
                    ],
                  ),
                  Image.asset(width: 24,height: 24,'assets/icons/menu.png',),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/ui.png',),
              ),
              const SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Image(image: AssetImage('assets/icons/heart.png',),width: 32,height: 32,),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/icons/chat.png',),width: 32,height: 32,),
                      ),
                      Image(image: AssetImage('assets/icons/send.png',),width: 32,height: 32,),
                    ],
                  ),
                ),
                  const Icon(Icons.bookmark,size: 32,),
              ],),
              const SizedBox(height: 8.0,),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(alignment:AlignmentDirectional.centerStart,child: Text('Liked by a and c',)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
