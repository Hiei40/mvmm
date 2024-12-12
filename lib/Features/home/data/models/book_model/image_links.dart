import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String? thumbnail;
  final String? smallThumbnail;

  const ImageLinks({
    this.thumbnail,
    this.smallThumbnail,
  });

  factory ImageLinks.fromJson(Map<dynamic, dynamic> json) => ImageLinks(
    thumbnail: json["thumbnail"] as String?,
    smallThumbnail: json["smallThumbnail"] as String?,
  );

  Map<dynamic, dynamic> toJson() => {
    "thumbnail": thumbnail,
    "smallThumbnail": smallThumbnail,
  };

  @override
  List<Object?> get props => [thumbnail, smallThumbnail];
}
