/// currency_id : "21"
/// name : "Bitcoin"
/// acronym : "BTC"
/// logo : "/uploads/bi_logo/1_61615c7e27c2e4182425999217.png"
/// code : "btcusdt"
/// today_price : "$54771.83"
/// amount : "0.83%"
/// high : "21877.71"
/// low : "20910.82"
/// vol : "6789876567.09"

class QuotationBean {
  QuotationBean({
      String? currencyId, 
      String? name, 
      String? acronym, 
      String? logo, 
      String? code, 
      String? todayPrice, 
      String? amount, 
      String? high, 
      String? low, 
      String? vol,}){
    _currencyId = currencyId;
    _name = name;
    _acronym = acronym;
    _logo = logo;
    _code = code;
    _todayPrice = todayPrice;
    _amount = amount;
    _high = high;
    _low = low;
    _vol = vol;
}

  QuotationBean.fromJson(dynamic json) {
    _currencyId = json['currency_id'];
    _name = json['name'];
    _acronym = json['acronym'];
    _logo = json['logo'];
    _code = json['code'];
    _todayPrice = json['today_price'];
    _amount = json['amount'];
    _high = json['high'];
    _low = json['low'];
    _vol = json['vol'];
  }
  String? _currencyId;
  String? _name;
  String? _acronym;
  String? _logo;
  String? _code;
  String? _todayPrice;
  String? _amount;
  String? _high;
  String? _low;
  String? _vol;
  String? _changed;

  String? get currencyId => _currencyId;
  String? get name => _name;
  String? get acronym => _acronym;
  String? get logo => _logo;
  String? get code => _code;
  String? get todayPrice => _todayPrice;
  String? get amount => _amount;
  String? get high => _high;
  String? get low => _low;
  String? get vol => _vol;


  String? get changed => _changed;

  set changed(String? value) {
    _changed = value;
  }

  set amount(String? value) {
    _amount = value;
  }

  set todayPrice(String? value) {
    _todayPrice = value;
  }


  set high(String? value) {
    _high = value;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currency_id'] = _currencyId;
    map['name'] = _name;
    map['acronym'] = _acronym;
    map['logo'] = _logo;
    map['code'] = _code;
    map['today_price'] = _todayPrice;
    map['amount'] = _amount;
    map['high'] = _high;
    map['low'] = _low;
    map['vol'] = _vol;
    return map;
  }

  set low(String? value) {
    _low = value;
  }

  set vol(String? value) {
    _vol = value;
  }
}