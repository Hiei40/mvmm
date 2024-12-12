import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable {
  final bool? containsImageBubbles;
  final bool? containsEpubBubbles;

  const PanelizationSummary({
    this.containsImageBubbles,
    this.containsEpubBubbles,
  });

  factory PanelizationSummary.fromJson(Map<dynamic, dynamic> json) => PanelizationSummary(
    containsImageBubbles: json["containsImageBubbles"] as bool?,
    containsEpubBubbles: json["containsEpubBubbles"] as bool?,
  );

  Map<dynamic, dynamic> toJson() => {
    "containsImageBubbles": containsImageBubbles,
    "containsEpubBubbles": containsEpubBubbles,
  };

  @override
  List<Object?> get props => [containsImageBubbles, containsEpubBubbles];
}
