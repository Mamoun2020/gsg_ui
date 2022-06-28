class Post {
  String? content;
  String? image;
  int? noLikes;

  Post({this.content, this.image, this.noLikes});

  Post.fromMap(Map<String, dynamic> post) {
    content = post['content'];
    image = post['image'];
    noLikes = post['noLikes'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> post = new Map<String, dynamic>();
    post['content'] = this.content;
    post['image'] = this.image;
    post['noLikes'] = this.noLikes;
    return post;
  }
}