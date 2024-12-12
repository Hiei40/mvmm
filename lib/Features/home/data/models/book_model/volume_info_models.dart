import 'package:equatable/equatable.dart';
import 'package:mvmm/Features/home/data/models/book_model/panelization_summary.dart';
import 'package:mvmm/Features/home/data/models/book_model/reading_modes_model.dart';
import 'image_links.dart';
import 'industry_identifier.dart';

class VolumeInfo extends Equatable {
  final List<IndustryIdentifier> industryIdentifiers;
  final int pageCount;
  final String printType;
  final ReadingModes readingModes;
  final String previewLink;
  final String canonicalVolumeLink;
  final String description;
  final String language;
  final String title;
  final ImageLinks imageLinks;
  final PanelizationSummary panelizationSummary;
  final String publisher;
  final String publishedDate;
  final List<String> categories;
  final String maturityRating;
  final bool allowAnonLogging;
  final String contentVersion;
  final List<String> authors;
  final String infoLink;

  const VolumeInfo({
    required this.industryIdentifiers,
    required this.pageCount,
    required this.printType,
    required this.readingModes,
    required this.previewLink,
    required this.canonicalVolumeLink,
    required this.description,
    required this.language,
    required this.title,
    required this.imageLinks,
    required this.panelizationSummary,
    required this.publisher,
    required this.publishedDate,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.authors,
    required this.infoLink,
  });

  factory VolumeInfo.fromJson(Map<dynamic, dynamic> json) => VolumeInfo(
    industryIdentifiers: List<IndustryIdentifier>.from(json["industryIdentifiers"].map((x) => IndustryIdentifier.fromJson(x))),
    pageCount: json["pageCount"],
    printType: json["printType"],
    readingModes: ReadingModes.fromJson(json["readingModes"]),
    previewLink: json["previewLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
    description: json["description"],
    language: json["language"],
    title: json["title"],
    imageLinks: ImageLinks.fromJson(json["imageLinks"]),
    panelizationSummary: PanelizationSummary.fromJson(json["panelizationSummary"]),
    publisher: json["publisher"],
    publishedDate: json["publishedDate"],
    categories: List<String>.from(json["categories"].map((x) => x)),
    maturityRating: json["maturityRating"],
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: json["contentVersion"],
    authors: List<String>.from(json["authors"].map((x) => x)),
    infoLink: json["infoLink"],
  );

  Map<dynamic, dynamic> toJson() => {
    "industryIdentifiers": List<dynamic>.from(industryIdentifiers.map((x) => x.toJson())),
    "pageCount": pageCount,
    "printType": printType,
    "readingModes": readingModes.toJson(),
    "previewLink": previewLink,
    "canonicalVolumeLink": canonicalVolumeLink,
    "description": description,
    "language": language,
    "title": title,
    "imageLinks": imageLinks.toJson(),
    "panelizationSummary": panelizationSummary.toJson(),
    "publisher": publisher,
    "publishedDate": publishedDate,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "authors": List<dynamic>.from(authors.map((x) => x)),
    "infoLink": infoLink,
  };

  @override
  List<Object?> get props => [
    industryIdentifiers,
    pageCount,
    printType,
    readingModes,
    previewLink,
    canonicalVolumeLink,
    description,
    language,
    title,
    imageLinks,
    panelizationSummary,
    publisher,
    publishedDate,
    categories,
    maturityRating,
    allowAnonLogging,
    contentVersion,
    authors,
    infoLink,
  ];
}