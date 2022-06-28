import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.keyboard_arrow_left,color: Colors.black,),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text('feed',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w400),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
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
                          Text('Added 13 Photos to the',),
                        ],
                      ),
                      const SizedBox(height: 8.0,),
                      Row(
                        children: const [
                          Text('album',),
                          SizedBox(width: 4.0,),
                          Text('Creative Photography',style: TextStyle(fontWeight: FontWeight.w500,),),
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
            const SizedBox(height: 8.0,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Text messaging, or texting, is the act of composing and'
                  ' sending electronic messages, typically consisting',),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
