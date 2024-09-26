import 'package:workspace/features/home/data/models/workspace_model.dart';

abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class HomeLoadingState extends HomeStates {}

class HomeSuccessState extends HomeStates {
  final List<WorkSpace> workspaces;

  HomeSuccessState(this.workspaces);
}
class HomeErrorState extends HomeStates {
  final String? error;

  HomeErrorState(this.error);
}