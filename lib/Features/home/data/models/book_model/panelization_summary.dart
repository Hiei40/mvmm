import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable {
  final bool containsImageBubbles;
  final bool containsEpubBubbles;

  const PanelizationSummary({
    required this.containsImageBubbles,
    required this.containsEpubBubbles,
  });

  factory PanelizationSummary.fromJson(Map<dynamic, dynamic> json) => PanelizationSummary(
    containsImageBubbles: json["containsImageBubbles"],
    containsEpubBubbles: json["containsEpubBubbles"],
  );

  Map<dynamic, dynamic> toJson() => {
    "containsImageBubbles": containsImageBubbles,
    "containsEpubBubbles": containsEpubBubbles,
  };

  @override
  List<Object?> get props => [containsImageBubbles, containsEpubBubbles];
}