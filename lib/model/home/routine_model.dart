class RoutineModel {
  final int myVeggieId;
  final String? routineName;
  final int? period;
  final bool isComplete;

  RoutineModel({
    required this.myVeggieId,
    this.routineName,
    this.period,
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
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
