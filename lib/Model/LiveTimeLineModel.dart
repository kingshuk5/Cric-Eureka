/// _id : "67478ca98ac77395b2e53fab"
/// timeline : ""
/// __v : 0

class LiveTimeLineModel {
  LiveTimeLineModel({
      String? id, 
      String? timeline, 
      num? v,}){
    _id = id;
    _timeline = timeline;
    _v = v;
}

  LiveTimeLineModel.fromJson(dynamic json) {
    _id = json['_id'];
    _timeline = json['timeline'];
    _v = json['__v'];
  }
  String? _id;
  String? _timeline;
  num? _v;
LiveTimeLineModel copyWith({  String? id,
  String? timeline,
  num? v,
}) => LiveTimeLineModel(  id: id ?? _id,
  timeline: timeline ?? _timeline,
  v: v ?? _v,
);
  String? get id => _id;
  String? get timeline => _timeline;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['timeline'] = _timeline;
    map['__v'] = _v;
    return map;
  }

}