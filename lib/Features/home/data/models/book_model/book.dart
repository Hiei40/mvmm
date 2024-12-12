
import 'dart:convert';

import 'package:mvmm/Features/home/data/models/book_model/sale_info.dart';
import 'package:mvmm/Features/home/data/models/book_model/search_info.dart';
import 'package:mvmm/Features/home/data/models/book_model/volume_info_models.dart';

import 'access_info.dart';

Bookmodel bookFromJson(String str) => Bookmodel.fromJson(json.decode(str));

String bookToJson(Bookmodel data) => json.encode(data.toJson());

class Bookmodel {
    Bookmodel({
        required this.saleInfo,
        required this.searchInfo,
        required this.kind,
        required this.volumeInfo,
        required this.etag,
        required this.id,
        required this.accessInfo,
        required this.selfLink,
    });

    SaleInfo? saleInfo;
    SearchInfo? searchInfo;
    String? kind;
    VolumeInfo? volumeInfo;
    String? etag;
    String? id;
    AccessInfo? accessInfo;
    String? selfLink;

    factory Bookmodel.fromJson(Map<dynamic, dynamic> json) => Bookmodel(
        saleInfo: SaleInfo.fromJson(json["saleInfo"]),
        searchInfo: SearchInfo.fromJson(json["searchInfo"]),
        kind: json["kind"],
        volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
        etag: json["etag"],
        id: json["id"],
        accessInfo: AccessInfo.fromJson(json["accessInfo"]),
        selfLink: json["selfLink"],
    );

    Map<dynamic, dynamic> toJson() => {
        "saleInfo": saleInfo!.toJson(),
        "searchInfo": searchInfo!.toJson(),
        "kind": kind,
        "volumeInfo": volumeInfo!.toJson(),
        "etag": etag,
        "id": id,
        "accessInfo": accessInfo!.toJson(),
        "selfLink": selfLink,
    };
}









