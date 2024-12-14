import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String textSnippet;

  const SearchInfo({
    required this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<dynamic, dynamic> json) => SearchInfo(
    textSnippet: json["textSnippet"],
  );

  Map<dynamic, dynamic> toJson() => {
    "textSnippet": textSnippet,
  };

  @override
  List<Object?> get props => [textSnippet];
}