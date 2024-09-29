import 'package:get_it/get_it.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_cubit.dart';
import 'package:workspace/features/home/data/repositories/workspace_repo.dart';
import 'package:workspace/features/home/presentation/cubit/home_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {

  getIt.registerLazySingleton<WorkSpaceRepo>(() => WorkSpaceRepo());

  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));

  getIt.registerLazySingleton<BookingCubit>(() => BookingCubit());

}
