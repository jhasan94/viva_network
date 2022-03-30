import 'package:dio/dio.dart';
import 'package:example/error_handling/base_error.dart';
import 'package:example/serializers.dart';
import 'package:get_it/get_it.dart';
import 'package:viva_network/viva_network.dart';

import 'error_handling/dio_error_to_api_error_converter.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUp() async{
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(BaseError());
  getIt.registerLazySingleton<NetworkErrorConverter>(() => DioErrorToApiErrorConverter());
  getIt.registerLazySingleton(() => DioBuiltValueConverter(serializers: serializers));
  getIt.registerSingleton(DioNetworkCallExecutor(dio: getIt(),errorConverter: getIt(),dioBuiltValueConverter: getIt()));
}