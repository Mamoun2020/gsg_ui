import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                clipBehavior: Clip.antiAlias,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          16.0,
                        ),
                        color: Colors.white),
                    clipBehavior: Clip.antiAlias,
                    width: 32,
                    height: 32,
                    child: Center(
                      child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                16.0,
                              ),
                              color: Colors.white),
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            fit: BoxFit.cover,
                            width: 28,
                            height: 28,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 3.0,
                      end: 3.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.white),
                      clipBehavior: Clip.antiAlias,
                      width: 12,
                      height: 12,
                      child: const Icon(
                        Icons.group,
                        size: 8.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 16.0,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Joston Al',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          'updated his cover photo',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      '3 mins ago',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/icons/menu.png',
                width: 24,
                height: 24,
                color: Colors.grey,
              ),
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
              height: 160.0,
              child: Image.asset(
                'assets/images/cover.jpg',
                width: double.infinity,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/icons/like.png',
                        width: 24,
                        height: 24,
                      ),
                      Container(
                          margin: const EdgeInsetsDirectional.only(
                            start: 16.0,
                          ),
                          child: Image.asset(
                            'assets/icons/love.png',
                            width: 24,
                            height: 24,
                          )),
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Text(
                    '400',
                  ),
                ],
              ),
              const Text(
                '122 comments',
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 4.0),
            width: double.infinity,
            height: 2.0,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/blacklike.png',
                    height: 24,
                    width: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Like',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/comment.png',
                    height: 24,
                    width: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Comment',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 2.0),
            width: double.infinity,
            height: 2.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
