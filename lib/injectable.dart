import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_dex/injectable.config.dart';

import 'data/api_service.dart';
import 'http/dio_instance.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  final apiService = ApiService(DioInstance().dio);
  getIt.registerSingleton<ApiService>(apiService);

  getIt.init();
}
