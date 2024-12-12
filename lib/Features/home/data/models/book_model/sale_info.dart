import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  final String country;
  final bool isEbook;
  final String saleability;

  const SaleInfo({
    required this.country,
    required this.isEbook,
    required this.saleability,
  });

  factory SaleInfo.fromJson(Map<dynamic, dynamic> json) => SaleInfo(
    country: json["country"],
    isEbook: json["isEbook"],
    saleability: json["saleability"],
  );

  Map<dynamic, dynamic> toJson() => {
    "country": country,
    "isEbook": isEbook,
    "saleability": saleability,
  };

  @override
  List<Object?> get props => [country, isEbook, saleability];
}