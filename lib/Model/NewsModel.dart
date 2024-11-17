/// _id : "67363f48e54b83e753f0bb7e"
/// title : "jgydgfhgkjv"
/// description : "k;;oyiluktliyp8to7rto867ritouyrkg"
/// place : "haldia"
/// category : "Welfare"
/// imageUrl : "https://res.cloudinary.com/dvql4mu3f/image/upload/v1731608390/tsnqt9habz8qqqvh7qlo.png"
/// createdAt : "2024-11-14T18:19:52.686Z"
/// updatedAt : "2024-11-14T18:19:52.686Z"
/// __v : 0

class NewsModel {
  NewsModel({
      String? id, 
      String? title, 
      String? description, 
      String? place, 
      String? category, 
      String? imageUrl, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _id = id;
    _title = title;
    _description = description;
    _place = place;
    _category = category;
    _imageUrl = imageUrl;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  NewsModel.fromJson(dynamic json) {
    _id = json['_id'];
    _title = json['title'];
    _description = json['description'];
    _place = json['place'];
    _category = json['category'];
    _imageUrl = json['imageUrl'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _title;
  String? _description;
  String? _place;
  String? _category;
  String? _imageUrl;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
NewsModel copyWith({  String? id,
  String? title,
  String? description,
  String? place,
  String? category,
  String? imageUrl,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => NewsModel(  id: id ?? _id,
  title: title ?? _title,
  description: description ?? _description,
  place: place ?? _place,
  category: category ?? _category,
  imageUrl: imageUrl ?? _imageUrl,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get place => _place;
  String? get category => _category;
  String? get imageUrl => _imageUrl;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['place'] = _place;
    map['category'] = _category;
    map['imageUrl'] = _imageUrl;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}