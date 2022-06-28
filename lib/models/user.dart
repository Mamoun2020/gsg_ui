class User {
  String? name;
  String? image;

  User({this.name, this.image});

  User.fromMap(Map<String, dynamic> user) {
    name = user['name'];
    image = user['image'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}