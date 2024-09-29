import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workspace/features/home/data/models/workspace_model.dart';
import 'package:workspace/features/home/data/repositories/workspace_repo.dart';
import 'package:workspace/features/home/presentation/cubit/home_cubit.dart';
import 'package:workspace/features/home/presentation/cubit/home_states.dart';

class MockWorkSpaceRepo extends Mock implements WorkSpaceRepo {}

void main() {
  group('HomeCubit', () {
    late HomeCubit homeCubit;
    late MockWorkSpaceRepo mockWorkSpaceRepo;

    setUp(() {
      mockWorkSpaceRepo = MockWorkSpaceRepo();
      homeCubit = HomeCubit(mockWorkSpaceRepo);
    });

    tearDown(() {
      homeCubit.close();
    });

    blocTest<HomeCubit, HomeStates>(
      'emits [HomeLoadingState, HomeSuccessState] when fetchWorkSpaces is successful',
      build: () {
        when(mockWorkSpaceRepo.fetchWorkSpaces()).thenAnswer((_) async => [
          WorkSpace(
            name: 'Workspace 1',
            location: 'Location 1',
            capacity: '10',
            availableAmenities: ['Wi-Fi', 'Projector'],
          ),
        ]);
        return homeCubit;
      },
      act: (cubit) => cubit.fetchWorkSpaces(),
      expect: () => [
        HomeLoadingState(),
        HomeSuccessState([
          WorkSpace(
            name: 'Workspace 1',
            location: 'Location 1',
            capacity: '10',
            availableAmenities: ['Wi-Fi', 'Projector'],
          ),
        ]),
      ],
    );

    blocTest<HomeCubit, HomeStates>(
      'emits [HomeLoadingState, HomeErrorState] when fetchWorkSpaces fails',
      build: () {
        when(mockWorkSpaceRepo.fetchWorkSpaces()).thenThrow(Exception('Error'));
        return homeCubit;
      },
      act: (cubit) => cubit.fetchWorkSpaces(),
      expect: () => [
        HomeLoadingState(),
        HomeErrorState('Exception: Error'),
      ],
    );
  });
}
