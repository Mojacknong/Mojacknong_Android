
class VegeRoutineModel {
  final String? routineName;
  final String? cycle;
  final bool? isComplete;

  VegeRoutineModel({
    required this.routineName,
    this.cycle,
    required this.isComplete,
  });

  VegeRoutineModel copyWith({
    String? routineName,
    String? cycle,
    bool? isComplete,
  }) {
    return VegeRoutineModel(
      routineName: routineName,
      cycle: cycle,
      isComplete: isComplete,
    );
  }
}