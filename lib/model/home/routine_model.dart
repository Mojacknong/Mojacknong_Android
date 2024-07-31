class RoutineModel {
  final int myVeggieId;
  final String? routineName;
  final int? period;
  final bool isSwitch;
  final bool isComplete;

  RoutineModel({
    required this.myVeggieId,
    this.routineName,
    this.period,
    required this.isSwitch,
    required this.isComplete,
  });

  RoutineModel copyWith({
    int? myVeggieId,
    String? routineName,
    int? period,
    bool? isComplete,
  }) {
    return RoutineModel(
      myVeggieId: myVeggieId ?? this.myVeggieId,
      routineName: routineName ?? this.routineName,
      period: period ?? this.period,
      isSwitch: isComplete ?? this.isSwitch,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
