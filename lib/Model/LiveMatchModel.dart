/// _id : "6736efc7a8a00628ca1c0229"
/// teamA : "OOK"
/// teamB : "PPO"
/// teamALogo : "https://res.cloudinary.com/dvql4mu3f/image/upload/v1731671319/a78jajy2ojk9csq5d4qi.png"
/// teamBLogo : "https://res.cloudinary.com/dvql4mu3f/image/upload/v1731671321/ylm3xzm7oryt9irws3ko.png"
/// teamAScore : "12/0"
/// teamBScore : "8/0"
/// overs : "10.0"
/// date : "12/12/12"
/// time : "11:11"
/// ytLink : ""
/// status : "Kingshuk got Out by LBW"
/// isLive : true
/// isBreak : false
/// isABowling : true
/// __v : 0

class LiveMatchModel {
  LiveMatchModel({
      String? id, 
      String? teamA, 
      String? teamB, 
      String? teamALogo, 
      String? teamBLogo, 
      String? teamAScore, 
      String? teamBScore, 
      String? overs, 
      String? date, 
      String? time, 
      String? ytLink, 
      String? status, 
      bool? isLive, 
      bool? isBreak, 
      bool? isABowling, 
      num? v,}){
    _id = id;
    _teamA = teamA;
    _teamB = teamB;
    _teamALogo = teamALogo;
    _teamBLogo = teamBLogo;
    _teamAScore = teamAScore;
    _teamBScore = teamBScore;
    _overs = overs;
    _date = date;
    _time = time;
    _ytLink = ytLink;
    _status = status;
    _isLive = isLive;
    _isBreak = isBreak;
    _isABowling = isABowling;
    _v = v;
}

  LiveMatchModel.fromJson(dynamic json) {
    _id = json['_id'];
    _teamA = json['teamA'];
    _teamB = json['teamB'];
    _teamALogo = json['teamALogo'];
    _teamBLogo = json['teamBLogo'];
    _teamAScore = json['teamAScore'];
    _teamBScore = json['teamBScore'];
    _overs = json['overs'];
    _date = json['date'];
    _time = json['time'];
    _ytLink = json['ytLink'];
    _status = json['status'];
    _isLive = json['isLive'];
    _isBreak = json['isBreak'];
    _isABowling = json['isABowling'];
    _v = json['__v'];
  }
  String? _id;
  String? _teamA;
  String? _teamB;
  String? _teamALogo;
  String? _teamBLogo;
  String? _teamAScore;
  String? _teamBScore;
  String? _overs;
  String? _date;
  String? _time;
  String? _ytLink;
  String? _status;
  bool? _isLive;
  bool? _isBreak;
  bool? _isABowling;
  num? _v;
LiveMatchModel copyWith({  String? id,
  String? teamA,
  String? teamB,
  String? teamALogo,
  String? teamBLogo,
  String? teamAScore,
  String? teamBScore,
  String? overs,
  String? date,
  String? time,
  String? ytLink,
  String? status,
  bool? isLive,
  bool? isBreak,
  bool? isABowling,
  num? v,
}) => LiveMatchModel(  id: id ?? _id,
  teamA: teamA ?? _teamA,
  teamB: teamB ?? _teamB,
  teamALogo: teamALogo ?? _teamALogo,
  teamBLogo: teamBLogo ?? _teamBLogo,
  teamAScore: teamAScore ?? _teamAScore,
  teamBScore: teamBScore ?? _teamBScore,
  overs: overs ?? _overs,
  date: date ?? _date,
  time: time ?? _time,
  ytLink: ytLink ?? _ytLink,
  status: status ?? _status,
  isLive: isLive ?? _isLive,
  isBreak: isBreak ?? _isBreak,
  isABowling: isABowling ?? _isABowling,
  v: v ?? _v,
);
  String? get id => _id;
  String? get teamA => _teamA;
  String? get teamB => _teamB;
  String? get teamALogo => _teamALogo;
  String? get teamBLogo => _teamBLogo;
  String? get teamAScore => _teamAScore;
  String? get teamBScore => _teamBScore;
  String? get overs => _overs;
  String? get date => _date;
  String? get time => _time;
  String? get ytLink => _ytLink;
  String? get status => _status;
  bool? get isLive => _isLive;
  bool? get isBreak => _isBreak;
  bool? get isABowling => _isABowling;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['teamA'] = _teamA;
    map['teamB'] = _teamB;
    map['teamALogo'] = _teamALogo;
    map['teamBLogo'] = _teamBLogo;
    map['teamAScore'] = _teamAScore;
    map['teamBScore'] = _teamBScore;
    map['overs'] = _overs;
    map['date'] = _date;
    map['time'] = _time;
    map['ytLink'] = _ytLink;
    map['status'] = _status;
    map['isLive'] = _isLive;
    map['isBreak'] = _isBreak;
    map['isABowling'] = _isABowling;
    map['__v'] = _v;
    return map;
  }

}