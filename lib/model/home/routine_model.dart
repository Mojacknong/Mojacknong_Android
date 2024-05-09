class RoutineModel {
  final String? routineName;
  final String? cycle;
  final bool isComplete;

  RoutineModel({
    required this.routineName,
    this.cycle,
    required this.isComplete,
  });

  RoutineModel copyWith({
    String? routineName,
    String? cycle,
    bool? isComplete,
  }) {
    return RoutineModel(
      routineName: routineName ?? this.routineName,
      cycle: cycle ?? this.cycle,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
