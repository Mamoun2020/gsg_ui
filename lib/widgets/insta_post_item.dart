import 'package:flutter/material.dart';

class InstPostItem extends StatelessWidget {
  const InstPostItem({
    Key? key, required this.name, required this.imageProfile, required this.content, required this.imagePost, required this.numLike,
  }) : super(key: key);
   final String name;
   final String imageProfile;
   final String content;
   final String imagePost;
   final int numLike;
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
                  Container(
                    width: 64.0,
                    height: 64.0,
                    child: CircleAvatar(
                      radius: 100.0,
                      child: Image.network(
                        imageProfile,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0,),
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold,),),
                ],
              ),
              Image.asset(width: 24,height: 24,'assets/icons/menu.png',),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(imagePost,),
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