import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gsg_ui/data/dummy_data.dart';
import 'package:gsg_ui/models/user.dart';

import '../../models/postresponse.dart';
import '../../widgets/insta_post_item.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child:
        SingleChildScrollView(
          child: Column(
            children: posts.map(
                    (e) => InstPostItem(name: e.user!.name!,imageProfile: e.user!.image! , imagePost: e.post!.image!, content: e.post!.content!,numLike:e.post!.noLikes!,),
            ).toList(),
          ),
        ),
      ),
    );
  }
}


