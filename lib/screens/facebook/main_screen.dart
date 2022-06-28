import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/facebook_post_item.dart';
import '../../widgets/facebook_story_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.camera_alt,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15.0,
                            ),
                            // color:Colors.grey[200],
                            color: Colors.black12,
                          ),
                          margin: const EdgeInsets.all(
                            16.0,
                          ),
                          padding: const EdgeInsets.all(
                            8.0,
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Image.asset(
                            'assets/images/messenger.png',
                            width: 32,
                            height: 32,
                          ),
                          Container(
                            width: 8.0,
                            height: 8.0,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Stories',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'See Archive',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120.0,
                      height: 160.0,
                      margin: const EdgeInsetsDirectional.only(
                        start: 16.0,
                        top: 16.0,
                        bottom: 16.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Image.network(
                            'https://wallpaperaccess.com/full/2213424.jpg',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                CircleAvatar(
                                  radius: 16.0,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.blue,
                                    size: 16.0,
                                  ),
                                ),
                                Text(
                                  'Add Your Story',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    StoryItem(),
                    StoryItem(),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: const [
                      PostItem(),
                      PostItem(),
                      PostItem(),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

