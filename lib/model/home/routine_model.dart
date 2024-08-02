class RoutineModel {
  final int myVeggieId;
  final int? routineId;
  final String? routineName;
  final int? period;
  final bool isSwitch;
  final bool isComplete;

  RoutineModel({
    required this.myVeggieId,
    this.routineId,
    this.routineName,
    this.period,
    required this.isSwitch,
    required this.isComplete,
  });
}
