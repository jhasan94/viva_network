import 'package:dartz/dartz.dart';
import 'package:example/di.dart';
import 'package:example/sub_domain.dart';
import 'package:viva_network/viva_network.dart';
import 'package:dio/dio.dart';
import 'error_handling/base_error.dart';

void main() async {
  await setUp();
  // final Dio _dio = Dio();
  // final NetworkErrorConverter<BaseError> _errorConverter = DioErrorToApiErrorConverter();
  // final DioBuiltValueConverter dioBuiltValueConverter = DioBuiltValueConverter(serializers: serializers);
  //DioNetworkCallExecutor dioNetworkCallExecutor = DioNetworkCallExecutor(dio:_dio,dioBuiltValueConverter: dioBuiltValueConverter,errorConverter:_errorConverter);

  Future<Either<BaseError,SubDomain>> getResult() async{
    var result = await getIt<DioNetworkCallExecutor>().execute<BaseError,SubDomain, SubDomain>(
        options: RequestOptions(
          method: 'GET',
          queryParameters: {"domainName": "viva"},
          path: 'https://live.pihr.xyz/api/PIEERPApi/MatchSubDomain',
        ));
    return result.fold((error) {
      return Left(error);
    }, (success) {
      return Right(success);
    });
  }
   final response = await getResult();
  response.fold((error) {
    print(error.message);
    print(error.errorCode);
  }, (success) {
    print(success);
  });


}
