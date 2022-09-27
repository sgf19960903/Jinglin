/// username : "user1@163.com"
/// level : "6"
/// reply : ""
/// opted : "1634013898"
/// realname : "Kom"
/// surname : "K"
/// papers_type : "2"
/// papers : "213123"
/// papers_positive : "/uploads/user/20211012/16340137386165122a1906b.png"
/// papers_reverse : "/uploads/user/20211012/16340137386165122a1a7bb.png"
/// hand_papers_positive : "/uploads/user/20211012/1634013858616512a2ca64d.png"
/// hand_protocol : "/uploads/user/20211012/1634013858616512a2cbde7.png"
/// usdt_m : "1000000"
/// eth_m : "1000000"
/// btc_m : "1000000"
/// usdt_b : "1000000"
/// eth_b : "1001117.1789999997"
/// btc_b : "999916"
/// ERC20 : null
/// ERC20_img : null
/// OMNI : null
/// OMNI_img : null
/// is_pwd_deal : 1
/// level_status : 1
/// buy_price_sum : "123123"
/// invite_code : "UUSSCG"

class UserInfoBean {
  UserInfoBean({
      String? username, 
      String? level, 
      String? reply, 
      String? opted, 
      String? realname, 
      String? surname, 
      String? papersType, 
      String? papers, 
      String? papersPositive, 
      String? papersReverse, 
      String? handPapersPositive, 
      String? handProtocol, 
      String? usdtM, 
      String? ethM, 
      String? btcM, 
      String? usdtB, 
      String? ethB, 
      String? btcB, 
      dynamic erc20, 
      dynamic eRC20Img, 
      dynamic omni, 
      dynamic oMNIImg, 
      int? isPwdDeal,
      int? levelStatus,
      String? buyPriceSum, 
      String? inviteCode,}){
    _username = username;
    _level = level;
    _reply = reply;
    _opted = opted;
    _realname = realname;
    _surname = surname;
    _papersType = papersType;
    _papers = papers;
    _papersPositive = papersPositive;
    _papersReverse = papersReverse;
    _handPapersPositive = handPapersPositive;
    _handProtocol = handProtocol;
    _usdtM = usdtM;
    _ethM = ethM;
    _btcM = btcM;
    _usdtB = usdtB;
    _ethB = ethB;
    _btcB = btcB;
    _erc20 = erc20;
    _eRC20Img = eRC20Img;
    _omni = omni;
    _oMNIImg = oMNIImg;
    _isPwdDeal = isPwdDeal;
    _levelStatus = levelStatus;
    _buyPriceSum = buyPriceSum;
    _inviteCode = inviteCode;
}

  UserInfoBean.fromJson(dynamic json) {
    _username = json['username'];
    _level = json['level'];
    _reply = json['reply'];
    _opted = json['opted'];
    _realname = json['realname'];
    _surname = json['surname'];
    _papersType = json['papers_type'];
    _papers = json['papers'];
    _papersPositive = json['papers_positive'];
    _papersReverse = json['papers_reverse'];
    _handPapersPositive = json['hand_papers_positive'];
    _handProtocol = json['hand_protocol'];
    _usdtM = json['usdt_m'];
    _ethM = json['eth_m'];
    _btcM = json['btc_m'];
    _usdtB = json['usdt_b'];
    _ethB = json['eth_b'];
    _btcB = json['btc_b'];
    _erc20 = json['ERC20'];
    _eRC20Img = json['ERC20_img'];
    _omni = json['OMNI'];
    _oMNIImg = json['OMNI_img'];
    _isPwdDeal = json['is_pwd_deal'];
    _levelStatus = json['level_status'];
    _buyPriceSum = json['buy_price_sum'];
    _inviteCode = json['invite_code'];
  }
  String? _username;
  String? _level;
  String? _reply;
  String? _opted;
  String? _realname;
  String? _surname;
  String? _papersType;
  String? _papers;
  String? _papersPositive;
  String? _papersReverse;
  String? _handPapersPositive;
  String? _handProtocol;
  String? _usdtM;
  String? _ethM;
  String? _btcM;
  String? _usdtB;
  String? _ethB;
  String? _btcB;
  dynamic _erc20;
  dynamic _eRC20Img;
  dynamic _omni;
  dynamic _oMNIImg;
  int? _isPwdDeal;
  int? _levelStatus;
  String? _buyPriceSum;
  String? _inviteCode;
UserInfoBean copyWith({  String? username,
  String? level,
  String? reply,
  String? opted,
  String? realname,
  String? surname,
  String? papersType,
  String? papers,
  String? papersPositive,
  String? papersReverse,
  String? handPapersPositive,
  String? handProtocol,
  String? usdtM,
  String? ethM,
  String? btcM,
  String? usdtB,
  String? ethB,
  String? btcB,
  dynamic erc20,
  dynamic eRC20Img,
  dynamic omni,
  dynamic oMNIImg,
  int? isPwdDeal,
  int? levelStatus,
  String? buyPriceSum,
  String? inviteCode,
}) => UserInfoBean(  username: username ?? _username,
  level: level ?? _level,
  reply: reply ?? _reply,
  opted: opted ?? _opted,
  realname: realname ?? _realname,
  surname: surname ?? _surname,
  papersType: papersType ?? _papersType,
  papers: papers ?? _papers,
  papersPositive: papersPositive ?? _papersPositive,
  papersReverse: papersReverse ?? _papersReverse,
  handPapersPositive: handPapersPositive ?? _handPapersPositive,
  handProtocol: handProtocol ?? _handProtocol,
  usdtM: usdtM ?? _usdtM,
  ethM: ethM ?? _ethM,
  btcM: btcM ?? _btcM,
  usdtB: usdtB ?? _usdtB,
  ethB: ethB ?? _ethB,
  btcB: btcB ?? _btcB,
  erc20: erc20 ?? _erc20,
  eRC20Img: eRC20Img ?? _eRC20Img,
  omni: omni ?? _omni,
  oMNIImg: oMNIImg ?? _oMNIImg,
  isPwdDeal: isPwdDeal ?? _isPwdDeal,
  levelStatus: levelStatus ?? _levelStatus,
  buyPriceSum: buyPriceSum ?? _buyPriceSum,
  inviteCode: inviteCode ?? _inviteCode,
);
  String? get username => _username;
  String? get level => _level;
  String? get reply => _reply;
  String? get opted => _opted;
  String? get realname => _realname;
  String? get surname => _surname;
  String? get papersType => _papersType;
  String? get papers => _papers;
  String? get papersPositive => _papersPositive;
  String? get papersReverse => _papersReverse;
  String? get handPapersPositive => _handPapersPositive;
  String? get handProtocol => _handProtocol;
  String? get usdtM => _usdtM;
  String? get ethM => _ethM;
  String? get btcM => _btcM;
  String? get usdtB => _usdtB;
  String? get ethB => _ethB;
  String? get btcB => _btcB;
  dynamic get erc20 => _erc20;
  dynamic get eRC20Img => _eRC20Img;
  dynamic get omni => _omni;
  dynamic get oMNIImg => _oMNIImg;
  int? get isPwdDeal => _isPwdDeal;
  int? get levelStatus => _levelStatus;
  String? get buyPriceSum => _buyPriceSum;
  String? get inviteCode => _inviteCode;


  set level(String? value) {
    _level = value;
  }

  set levelStatus(int? value) {
    _levelStatus = value;
  }

  set isPwdDeal(int? value) {
    _isPwdDeal = value;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['level'] = _level;
    map['reply'] = _reply;
    map['opted'] = _opted;
    map['realname'] = _realname;
    map['surname'] = _surname;
    map['papers_type'] = _papersType;
    map['papers'] = _papers;
    map['papers_positive'] = _papersPositive;
    map['papers_reverse'] = _papersReverse;
    map['hand_papers_positive'] = _handPapersPositive;
    map['hand_protocol'] = _handProtocol;
    map['usdt_m'] = _usdtM;
    map['eth_m'] = _ethM;
    map['btc_m'] = _btcM;
    map['usdt_b'] = _usdtB;
    map['eth_b'] = _ethB;
    map['btc_b'] = _btcB;
    map['ERC20'] = _erc20;
    map['ERC20_img'] = _eRC20Img;
    map['OMNI'] = _omni;
    map['OMNI_img'] = _oMNIImg;
    map['is_pwd_deal'] = _isPwdDeal;
    map['level_status'] = _levelStatus;
    map['buy_price_sum'] = _buyPriceSum;
    map['invite_code'] = _inviteCode;
    return map;
  }

}