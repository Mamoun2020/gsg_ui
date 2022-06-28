import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 160.0,
      margin:const EdgeInsetsDirectional.only(
        start: 8.0,top: 8.0,bottom: 8.0,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0,),),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1629858568927-08e3db4a171f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&w=1000&q=80',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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



                const Text(
                  'Jaston',
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
    );
  }
}