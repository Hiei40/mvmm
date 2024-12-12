import 'package:equatable/equatable.dart';

class IndustryIdentifier extends Equatable {
  final String? identifier;
  final String? type;

  const IndustryIdentifier({
    this.identifier,
    this.type,
  });

  factory IndustryIdentifier.fromJson(Map<dynamic, dynamic> json) => IndustryIdentifier(
    identifier: json["identifier"] as String?,
    type: json["type"] as String?,
  );

  Map<dynamic, dynamic> toJson() => {
    "identifier": identifier,
    "type": type,
  };

  @override
  List<Object?> get props => [identifier, type];
}
