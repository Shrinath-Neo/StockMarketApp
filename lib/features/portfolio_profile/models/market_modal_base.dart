
import 'dart:convert';

MarketIndexModelNew marketIndexModelNewFromJson(String str) => MarketIndexModelNew.fromJson(json.decode(str));

String marketIndexModelNewToJson(MarketIndexModelNew data) => json.encode(data.toJson());

class MarketIndexModelNew {
    final String? httpStatus;
    final String? message;
    final List<Datum>? data;

    MarketIndexModelNew({
        this.httpStatus,
        this.message,
        this.data,
    });

    factory MarketIndexModelNew.fromJson(Map<String, dynamic> json) => MarketIndexModelNew(
        httpStatus: json["httpStatus"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "httpStatus": httpStatus,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    final String? symbol;
    final String? token;
    final String? ss;
    final String? ltp;
    final String? chg;
    final String? chgp;
    final String? pclose;
    final String? open;
    final String? high;
    final String? low;
    final String? close;

    Datum({
        this.symbol,
        this.token,
        this.ss,
        this.ltp,
        this.chg,
        this.chgp,
        this.pclose,
        this.open,
        this.high,
        this.low,
        this.close,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        symbol: json["symbol"],
        token: json["token"],
        ss: json["ss"],
        ltp: json["ltp"],
        chg: json["chg"],
        chgp: json["chgp"],
        pclose: json["pclose"],
        open: json["open"],
        high: json["high"],
        low: json["low"],
        close: json["close"],
    );

    Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "token": token,
        "ss": ss,
        "ltp": ltp,
        "chg": chg,
        "chgp": chgp,
        "pclose": pclose,
        "open": open,
        "high": high,
        "low": low,
        "close": close,
    };
}
