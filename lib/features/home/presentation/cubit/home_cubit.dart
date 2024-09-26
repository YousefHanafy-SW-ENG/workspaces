import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workspace/features/home/data/repositories/workspace_repo.dart';
import 'package:workspace/features/home/presentation/cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  final WorkSpaceRepo _workSpaceRepo;
  HomeCubit(this._workSpaceRepo) : super(HomeInitialState());

  void fetchWorkSpaces() async {
    emit(HomeLoadingState());
    try {
      final workspaces = await _workSpaceRepo.fetchWorkSpaces();
      emit(HomeSuccessState(workspaces));
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }

}
