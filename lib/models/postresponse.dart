import 'post.dart';
import 'user.dart';

class PostResponse {
  User? user;
  Post? post;

  PostResponse({this.user, this.post});

  PostResponse.fromMap(Map<String, dynamic> map) {
    user =User.fromMap(map['user']);
    post = Post.fromMap(map['post']);
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
      data['user'] = this.user!.toMap();
      data['post'] = this.post!.toMap();

    return data;
  }
}