import 'package:get_it/get_it.dart';

import '../../features/sign_up/data/repository/sign_up_repo.dart';
import '../../features/sign_up/logic/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo());
  getIt.registerFactory<SignupCubit>(() => SignupCubit(
        getIt(),
      ));
}