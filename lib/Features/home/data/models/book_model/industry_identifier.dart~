import 'package:equatable/equatable.dart';

class IndustryIdentifier extends Equatable {
  final String identifier;
  final String type;

  const IndustryIdentifier({
    required this.identifier,
    required this.type,
  });

  factory IndustryIdentifier.fromJson(Map<dynamic, dynamic> json) => IndustryIdentifier(
    identifier: json["identifier"],
    type: json["type"],
  );

  Map<dynamic, dynamic> toJson() => {
    "identifier": identifier,
    "type": type,
  };

  @override
  List<Object?> get props => [identifier, type];
}