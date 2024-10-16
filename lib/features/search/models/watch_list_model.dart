// To parse this JSON data, do
//
//     final watchListModel = watchListModelFromJson(jsonString);

import 'dart:convert';

WatchListModel watchListModelFromJson(String str) => WatchListModel.fromJson(json.decode(str));

String watchListModelToJson(WatchListModel data) => json.encode(data.toJson());

class WatchListModel {
    final int? declines;
    final List<Datum>? data;
    final String? trdVolumesum;
    final List<LatestDatum>? latestData;
    final int? advances;
    final int? unchanged;
    final String? trdValueSumMil;
    final String? time;
    final String? trdVolumesumMil;
    final String? trdValueSum;

    WatchListModel({
        this.declines,
        this.data,
        this.trdVolumesum,
        this.latestData,
        this.advances,
        this.unchanged,
        this.trdValueSumMil,
        this.time,
        this.trdVolumesumMil,
        this.trdValueSum,
    });

    factory WatchListModel.fromJson(Map<String, dynamic> json) => WatchListModel(
        declines: json["declines"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        trdVolumesum: json["trdVolumesum"],
        latestData: json["latestData"] == null ? [] : List<LatestDatum>.from(json["latestData"]!.map((x) => LatestDatum.fromJson(x))),
        advances: json["advances"],
        unchanged: json["unchanged"],
        trdValueSumMil: json["trdValueSumMil"],
        time: json["time"],
        trdVolumesumMil: json["trdVolumesumMil"],
        trdValueSum: json["trdValueSum"],
    );

    Map<String, dynamic> toJson() => {
        "declines": declines,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "trdVolumesum": trdVolumesum,
        "latestData": latestData == null ? [] : List<dynamic>.from(latestData!.map((x) => x.toJson())),
        "advances": advances,
        "unchanged": unchanged,
        "trdValueSumMil": trdValueSumMil,
        "time": time,
        "trdVolumesumMil": trdVolumesumMil,
        "trdValueSum": trdValueSum,
    };
}

class Datum {
    final String? symbol;
    final String? ss;
    final Exchange? exchange;
    final Type? type;
    final String? holdings;
    final String? open;
    final String? high;
    final String? low;
    final String? ltp;
    final String? ptsC;
    final String? chgp;
    final String? trdVol;
    final String? trdVolM;
    final String? ntP;
    final String? mVal;
    final String? wkhi;
    final String? wklo;
    final String? wkhicmAdj;
    final String? wklocmAdj;
    final String? xDt;
    final String? cAct;
    final String? previousClose;
    final DayEndClose? dayEndClose;
    final String? iislPtsChange;
    final String? iislPercChange;
    final String? yPc;
    final String? mPc;

    Datum({
        this.symbol,
        this.ss,
        this.exchange,
        this.type,
        this.holdings,
        this.open,
        this.high,
        this.low,
        this.ltp,
        this.ptsC,
        this.chgp,
        this.trdVol,
        this.trdVolM,
        this.ntP,
        this.mVal,
        this.wkhi,
        this.wklo,
        this.wkhicmAdj,
        this.wklocmAdj,
        this.xDt,
        this.cAct,
        this.previousClose,
        this.dayEndClose,
        this.iislPtsChange,
        this.iislPercChange,
        this.yPc,
        this.mPc,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        symbol: json["symbol"],
        ss: json["ss"],
        exchange: exchangeValues.map[json["exchange"]]!,
        type: typeValues.map[json["type"]]!,
        holdings: json["holdings"],
        open: json["open"],
        high: json["high"],
        low: json["low"],
        ltp: json["ltp"],
        ptsC: json["ptsC"],
        chgp: json["chgp"],
        trdVol: json["trdVol"],
        trdVolM: json["trdVolM"],
        ntP: json["ntP"],
        mVal: json["mVal"],
        wkhi: json["wkhi"],
        wklo: json["wklo"],
        wkhicmAdj: json["wkhicm_adj"],
        wklocmAdj: json["wklocm_adj"],
        xDt: json["xDt"],
        cAct: json["cAct"],
        previousClose: json["previousClose"],
        dayEndClose: dayEndCloseValues.map[json["dayEndClose"]]!,
        iislPtsChange: json["iislPtsChange"],
        iislPercChange: json["iislPercChange"],
        yPc: json["yPC"],
        mPc: json["mPC"],
    );

    Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "ss": ss,
        "exchange": exchangeValues.reverse[exchange],
        "type": typeValues.reverse[type],
        "holdings": holdings,
        "open": open,
        "high": high,
        "low": low,
        "ltp": ltp,
        "ptsC": ptsC,
        "chgp": chgp,
        "trdVol": trdVol,
        "trdVolM": trdVolM,
        "ntP": ntP,
        "mVal": mVal,
        "wkhi": wkhi,
        "wklo": wklo,
        "wkhicm_adj": wkhicmAdj,
        "wklocm_adj": wklocmAdj,
        "xDt": xDt,
        "cAct": cAct,
        "previousClose": previousClose,
        "dayEndClose": dayEndCloseValues.reverse[dayEndClose],
        "iislPtsChange": iislPtsChange,
        "iislPercChange": iislPercChange,
        "yPC": yPc,
        "mPC": mPc,
    };
}

enum DayEndClose {
    EMPTY
}

final dayEndCloseValues = EnumValues({
    "-": DayEndClose.EMPTY
});

enum Exchange {
    NSE
}

final exchangeValues = EnumValues({
    "NSE": Exchange.NSE
});

enum Type {
    EQ
}

final typeValues = EnumValues({
    "EQ": Type.EQ
});

class LatestDatum {
    final String? indexName;
    final String? open;
    final String? high;
    final String? low;
    final String? ltp;
    final String? ch;
    final String? chgp;
    final String? yCls;
    final String? mCls;
    final String? yHigh;
    final String? yLow;

    LatestDatum({
        this.indexName,
        this.open,
        this.high,
        this.low,
        this.ltp,
        this.ch,
        this.chgp,
        this.yCls,
        this.mCls,
        this.yHigh,
        this.yLow,
    });

    factory LatestDatum.fromJson(Map<String, dynamic> json) => LatestDatum(
        indexName: json["indexName"],
        open: json["open"],
        high: json["high"],
        low: json["low"],
        ltp: json["ltp"],
        ch: json["ch"],
        chgp: json["chgp"],
        yCls: json["yCls"],
        mCls: json["mCls"],
        yHigh: json["yHigh"],
        yLow: json["yLow"],
    );

    Map<String, dynamic> toJson() => {
        "indexName": indexName,
        "open": open,
        "high": high,
        "low": low,
        "ltp": ltp,
        "ch": ch,
        "chgp": chgp,
        "yCls": yCls,
        "mCls": mCls,
        "yHigh": yHigh,
        "yLow": yLow,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
