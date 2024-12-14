import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String thumbnail;
  final String smallThumbnail;

  const ImageLinks({
    required this.thumbnail,
    required this.smallThumbnail,
  });

  factory ImageLinks.fromJson(Map<dynamic, dynamic> json) => ImageLinks(
    thumbnail: json["thumbnail"],
    smallThumbnail: json["smallThumbnail"],
  );

  Map<dynamic, dynamic> toJson() => {
    "thumbnail": thumbnail,
    "smallThumbnail": smallThumbnail,
  };

  @override
  List<Object?> get props => [thumbnail, smallThumbnail];
}