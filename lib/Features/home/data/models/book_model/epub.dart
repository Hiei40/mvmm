import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool isAvailable;

  const Epub({
    required this.isAvailable,
  });

  factory Epub.fromJson(Map<dynamic, dynamic> json) => Epub(
    isAvailable: json["isAvailable"],
  );

  Map<dynamic, dynamic> toJson() => {
    "isAvailable": isAvailable,
  };

  @override
  List<Object?> get props => [isAvailable];
}