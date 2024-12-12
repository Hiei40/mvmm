import 'package:equatable/equatable.dart';

class ReadingModes extends Equatable {
  final bool image;
  final bool text;

  const ReadingModes({
    required this.image,
    required this.text,
  });

  factory ReadingModes.fromJson(Map<dynamic, dynamic> json) => ReadingModes(
    image: json["image"],
    text: json["text"],
  );

  Map<dynamic, dynamic> toJson() => {
    "image": image,
    "text": text,
  };

  @override
  List<Object?> get props => [image, text];
}