import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/user.dart';

class InstPostItem extends StatelessWidget {
  User? user;
  Post? post;
  InstPostItem(this.user,this.post);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Container(
                  //   width: 64.0,
                  //   height: 64.0,
                  //   child: CircleAvatar(
                  //     radius: 100.0,
                  //     child: Image.network(
                  //       imageProfile,fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
      Container(
      clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                100.0,
              ),
              color: Colors.white),
          child: Image.network(
            user!.image!,
            fit: BoxFit.cover,
            width: 64,
            height: 64,
          )),
                  SizedBox(width: 8.0,),
                  Text(user!.name!,style: TextStyle(fontWeight: FontWeight.bold,),),
                ],
              ),
              Image.asset(width: 24,height: 24,'assets/icons/menu.png',),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(post!.image!,),
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
    );
  }
}