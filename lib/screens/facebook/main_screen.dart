import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/story_item.dart';

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
              const SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                     mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        clipBehavior: Clip.antiAlias,
                        children: [
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0,),color: Colors.white),
                            clipBehavior: Clip.antiAlias,
                            width: 32,
                            height: 32,
                            child: Center(
                              child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0,),color: Colors.white),
                                  child: Image.asset('assets/images/profile.jpg',fit: BoxFit.cover,width: 28,height: 28,)
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: 3.0,
                              end:3.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0,),color: Colors.white),
                              clipBehavior: Clip.antiAlias,
                              width: 12,
                              height: 12,
                              child: const Icon(Icons.group,size: 8.0,),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16.0,),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(
                            children: const [
                              Text('Joston Al',style: TextStyle(fontWeight: FontWeight.w500,),),
                              SizedBox(width: 4.0,),
                              Text('updated his cover photo',),
                            ],
                          ),
                          const SizedBox(height: 8.0,),
                          const Text('3 mins ago',style: TextStyle(fontWeight: FontWeight.w300,),),
                        ],
                        ),
                      ),
                     Image.asset('assets/icons/menu.png',width: 24,height: 24,color: Colors.grey,),
                    ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 16.0,
                        start: 8.0,
                        end: 8.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 150.0,
                        child:Image.asset('assets/images/cover.jpg',width: double.infinity,height: 150.0,fit:BoxFit.cover,),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset('assets/icons/like.png',width: 24, height: 24,),
                          Image.asset('assets/icons/love.png',width: 24, height: 24,),
                          const SizedBox(width: 8.0,),
                          const Text('400',),
                        ],
                        ),
                        const Text('122 comments',),
                      ],
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    Image.asset('assets/icons/blacklike.png',height: 24,width: 24,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Like',style: TextStyle(fontWeight:FontWeight.w500),),
                    ),
                  ],
                  ),
                  Row(children: [
                    Image.asset('assets/icons/comment.png',height: 24,width: 24,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Comment',style: TextStyle(fontWeight:FontWeight.w500),),
                    ),
                  ],
                  ),
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
