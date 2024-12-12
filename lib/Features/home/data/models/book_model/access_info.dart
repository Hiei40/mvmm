import 'package:equatable/equatable.dart';
import 'package:mvmm/Features/home/data/models/book_model/epub.dart';


class AccessInfo extends Equatable {
  final String accessViewStatus;
  final String country;
  final String viewability;
  final Epub pdf;
  final String webReaderLink;
  final Epub epub;
  final bool publicDomain;
  final bool quoteSharingAllowed;
  final bool embeddable;
  final String textToSpeechPermission;

  const AccessInfo({
    required this.accessViewStatus,
    required this.country,
    required this.viewability,
    required this.pdf,
    required this.webReaderLink,
    required this.epub,
    required this.publicDomain,
    required this.quoteSharingAllowed,
    required this.embeddable,
    required this.textToSpeechPermission,
  });

  factory AccessInfo.fromJson(Map<dynamic, dynamic> json) => AccessInfo(
    accessViewStatus: json["accessViewStatus"],
    country: json["country"],
    viewability: json["viewability"],
    pdf: Epub.fromJson(json["pdf"]),
    webReaderLink: json["webReaderLink"],
    epub: Epub.fromJson(json["epub"]),
    publicDomain: json["publicDomain"],
    quoteSharingAllowed: json["quoteSharingAllowed"],
    embeddable: json["embeddable"],
    textToSpeechPermission: json["textToSpeechPermission"],
  );

  Map<dynamic, dynamic> toJson() => {
    "accessViewStatus": accessViewStatus,
    "country": country,
    "viewability": viewability,
    "pdf": pdf.toJson(),
    "webReaderLink": webReaderLink,
    "epub": epub.toJson(),
    "publicDomain": publicDomain,
    "quoteSharingAllowed": quoteSharingAllowed,
    "embeddable": embeddable,
    "textToSpeechPermission": textToSpeechPermission,
  };

  @override
  List<Object?> get props => [
    accessViewStatus,
    country,
    viewability,
    pdf,
    webReaderLink,
    epub,
    publicDomain,
    quoteSharingAllowed,
    embeddable,
    textToSpeechPermission,
  ];
}