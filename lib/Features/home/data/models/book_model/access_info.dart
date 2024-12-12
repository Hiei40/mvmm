import 'package:equatable/equatable.dart';
import 'package:mvmm/Features/home/data/models/book_model/epub.dart';

class AccessInfo extends Equatable {
  final String accessViewStatus;
  final String country;
  final String viewability;
  final Epub? pdf; // Nullable if "pdf" might be null in JSON
  final String? webReaderLink; // Nullable if "webReaderLink" might be null
  final Epub? epub; // Nullable if "epub" might be null
  final bool publicDomain;
  final bool quoteSharingAllowed;
  final bool embeddable;
  final String textToSpeechPermission;

  const AccessInfo({
    required this.accessViewStatus,
    required this.country,
    required this.viewability,
    this.pdf,
    this.webReaderLink,
    this.epub,
    required this.publicDomain,
    required this.quoteSharingAllowed,
    required this.embeddable,
    required this.textToSpeechPermission,
  });

  factory AccessInfo.fromJson(Map<dynamic, dynamic> json) => AccessInfo(
    accessViewStatus: json["accessViewStatus"] ?? '',
    country: json["country"] ?? '',
    viewability: json["viewability"] ?? '',
    pdf: json["pdf"] != null ? Epub.fromJson(json["pdf"]) : null,
    webReaderLink: json["webReaderLink"],
    epub: json["epub"] != null ? Epub.fromJson(json["epub"]) : null,
    publicDomain: json["publicDomain"] ?? false,
    quoteSharingAllowed: json["quoteSharingAllowed"] ?? false,
    embeddable: json["embeddable"] ?? false,
    textToSpeechPermission: json["textToSpeechPermission"] ?? '',
  );

  Map<dynamic, dynamic> toJson() => {
    "accessViewStatus": accessViewStatus,
    "country": country,
    "viewability": viewability,
    "pdf": pdf?.toJson(), // Use ?. to handle nullability
    "webReaderLink": webReaderLink,
    "epub": epub?.toJson(), // Use ?. to handle nullability
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
